package Service.LEEService;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import Command.LEECommand.MemberJoinCommand;
import Model.DTO.LEEDTO.TbFile;
import Repository.LEERepository.TbFileSessionRepository;

@Service
public class ReportSubmissionService {
	String originalFile = null;
	String originalFileExtension = null;
	String storedFileName = null;
	String filePath = null;
	String realPath = null;

	@Autowired
	private TbFileSessionRepository tbFileSessionRepository;

	public void report(String memId, MultipartFile report, Model model, HttpServletRequest request,
			MemberJoinCommand memberJoinCommand) throws IllegalStateException, IOException {
		filePath = "WEB-INF\\view\\LEEview\\upload\\";
		realPath = request.getServletContext().getRealPath(filePath);
		// realPath =
		// "D:\\Hk004\\Spring\\sp4-smrit\\src\\main\\webapp\\WEB-INF\\view\\UploadFile\\upload\\";
		System.out.println("realPath :  " + realPath);
		originalFile = report.getOriginalFilename();
		originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		storedFileName = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
		System.out.println("realPath : " + realPath);
		System.out.println("originalFile : " + originalFile);
		System.out.println("storedFileName : " + storedFileName);
		System.out.println("fileSize : " + report.getSize());
		TbFile tbFile = new TbFile();
		tbFile.setBoardIdx(11L);
		tbFile.setFileSize(report.getSize());
		tbFile.setOriginalFileName(originalFile);
		tbFile.setStoredFileName(storedFileName);
		tbFile.setMemId(memberJoinCommand.getId1());
		System.out.println(realPath + storedFileName);

		File file = new File(realPath + "\\" + storedFileName);
		report.transferTo(file);

		tbFileSessionRepository.fileInsert(tbFile);

		model.addAttribute("tbFile", report);
	}
}

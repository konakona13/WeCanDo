package Command.kimCommand;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CompanyRegChk implements Serializable{
	private boolean chkCompanyReg = false;

	public boolean isChkCompanyReg() {
		return chkCompanyReg;
	}

	public void setChkCompanyReg(boolean chkCompanyReg) {
		this.chkCompanyReg = chkCompanyReg;
	}
	
	
}

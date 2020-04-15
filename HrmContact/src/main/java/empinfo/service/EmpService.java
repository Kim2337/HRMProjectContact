package empinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import empinfo.domain.DeptDto;
import empinfo.domain.EmpDto;
import empinfo.persistence.EmpDao;

@Service
public class EmpService {
	@Autowired
	EmpDao empdao;
	
	
	public void setEmpdao(EmpDao empdao) {
		this.empdao = empdao;
	}

	public List<DeptDto> deptlist(){
		return empdao.deptlist();
	}
	
	public List<EmpDto> emplist(int deptno){
		return empdao.emplist(deptno);
	}
	
	
}

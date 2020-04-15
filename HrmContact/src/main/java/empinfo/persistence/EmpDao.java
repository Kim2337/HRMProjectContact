package empinfo.persistence;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import empinfo.domain.DeptDto;
import empinfo.domain.EmpDto;

public class EmpDao extends SqlSessionDaoSupport{

	//부서 선택 
	public List<DeptDto> deptlist() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("empinfo.depts");
	}

	//부서에 속한 사원 리스트 
	public List<EmpDto> emplist(int deptno) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("empinfo.emps");
	}
		
}

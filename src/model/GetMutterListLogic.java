package model;

import java.util.List;

public class GetMutterListLogic {
	public List<Mutter> execute() {
		MutterDAO dao = new MutterDAO();
		List<Mutter> mutterList = dao.findAll();
		return mutterList;
	}

}

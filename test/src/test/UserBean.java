package test;

public class UserBean {
	public boolean valid(String username,String password){
		boolean isValid = false;
		DBAccess db = new DBAccess();
		
		if(db.createConn()){
			String sql="select * from user where name='"+username+"'and password='"+password+"'";

			db.query(sql);
			
			if(db.next()){
				isValid = true;
			}
			
			db.closeRs();
			db.closeStm();
			db.closeConn();
		}
		return isValid;
	}
	
	public boolean isExist(String username){
		boolean isExist = false;
		DBAccess db = new DBAccess();
		if(db.createConn()){
			String sql="select * from user where name='" + username + "'";
			db.query(sql);;
			if(db.next()){
				isExist = true;
			}
			db.closeRs();
			db.closeStm();
			db.closeConn();
		}
		return isExist;
	}
	
	
	public void add(String username, String password, String email){
		DBAccess db = new DBAccess();
		if(db.createConn()){
			String sql="insert into user(name,password,email) values('"+username+"','"+password+"','"+email+"')";
			db.update(sql);
			db.closeStm();
			db.closeConn();
		}
	}
}

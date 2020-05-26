import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnection {
	private final String url = "jdbc:mysql://localhost:3306/db";
	private String user = "root";
	private String password = "";
	private String db = "Bezirke";
	private String db1 = "Parteien";
	private String command;

	public String getUrl() {
		return url;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDb() {
		return db;
	}

	public void setDb(String db) {
		this.db = db;
	}

	public String getDb1() {
		return db1;
	}

	public void setDb1(String db1) {
		this.db1 = db1;
	}
	
	public String getCommand() {
		return command;
	}

	public void setCommand(String command) {
		this.command = command;
	}
	
	public DBConnection (String text) {
		this.setCommand("select * from Parteien");
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			Connection c = DriverManager.getConnection(this.getUrl(), this.getUser(), this.getPassword());
			Statement s = c.createStatement();
			s.execute("USE"+" "+this.getDb());
			ResultSet res = s.executeQuery(this.getCommand());
			String ergStr = "";
			
			while (res.next()) {
				ergStr = ergStr.concat("\n"+res.getString("ID") + res.getString("Name") +"\n");
			}
		res.close();
		s.close();
		c.close();
		}
		catch (Exception e) {
			System.out.println("!!!Error!!!");
		}
	}
}


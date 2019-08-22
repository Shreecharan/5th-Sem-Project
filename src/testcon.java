
	import java.sql.*;
	public class testcon {

		public static void main(String[] args) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test");
				Statement smt=con.createStatement();
				ResultSet rs=smt.executeQuery("select * from users");
				while(rs.next()) {
					System.out.println("name="+rs.getString("user"));
				}
			}
			catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			catch(SQLException e) {
				e.printStackTrace();
			}

		}

	}



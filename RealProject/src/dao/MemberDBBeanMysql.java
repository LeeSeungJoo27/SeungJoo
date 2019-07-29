package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.MemberDataBean;

public class MemberDBBeanMysql {
		private static MemberDBBeanMysql instance = new MemberDBBeanMysql();

		public static MemberDBBeanMysql getInstance() {
			return instance;
		}

		private MemberDBBeanMysql() {

		}

		private Connection getConnection() throws Exception {
			Connection conn = null;
			String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
			String dbId = "scott";
			String dbPass = "1111";

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
			return conn;

		}
		
		public void insertMember(MemberDataBean member) {

			Connection conn = null;
			PreparedStatement pstmt = null;
			System.out.println(member);

			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(
						"insert into memberA values(?,?,?,?,?,?,?,?,?)");
				pstmt.setString(1, member.getId());
				pstmt.setString(2, member.getPassword());
				pstmt.setString(3, member.getName());
				pstmt.setInt(4, member.getYear());
				pstmt.setString(5, member.getGender());
				pstmt.setString(6, member.getMailcode());
				pstmt.setString(7, member.getAddr1());
				pstmt.setString(8, member.getAddr3());
				pstmt.setString(9, member.getTel());
				pstmt.executeUpdate();
			} catch(Exception ex) {
				ex.printStackTrace(); //���� ������ �ߴ°��� printStackTrace()���? ��
			} finally {
				if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
			}

		}
		
		public int userCheck(String id, String password) {
			System.out.println(id + password);
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int x = -1;

			try {
				conn = getConnection();
				pstmt = conn.prepareStatement("select password from memberA where id = ?");
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();

				if(rs.next()) {
					String dbpassword = rs.getString("password");

					if(dbpassword.equals(password)) {
						x=1;
					} else {
						x=0;
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if(rs != null) try { rs.close(); } catch(SQLException ex) {}
				if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
			}

			return x;
		}
		
		public void updateMember(MemberDataBean member) {
	    	Connection conn = null;
			PreparedStatement pstmt = null;
			System.out.println(member);

			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(
						"update membera set  password = ? , name = ? , year = ? ,gender = ? ,addr1 = ? , addr3 = ?, tel = ? ,mailcode = ? where id = ?");
				
				pstmt.setString(1, member.getPassword());
				pstmt.setString(2, member.getName());
				pstmt.setInt(3, member.getYear());
				pstmt.setString(4, member.getGender());
				pstmt.setString(5, member.getAddr1());
				pstmt.setString(6, member.getAddr3());
				pstmt.setString(7, member.getTel());
				pstmt.setString(8, member.getMailcode());
				pstmt.setString(9, member.getId());
				
				
				
				pstmt.executeUpdate();
			} catch(Exception ex) {
				ex.printStackTrace(); 
			} finally {
				if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
			}	
	    }
		

	    public MemberDataBean getMember(String id) {
	    	Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			MemberDataBean member = null;
			
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement("select * from membera where id = ?");
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();

				if(rs.next()) {
					
				member = new MemberDataBean();
				
				member.setId(id);
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setYear(rs.getInt("year"));
				member.setGender(rs.getString("gender"));
				member.setAddr1(rs.getString("addr1"));
				member.setAddr3(rs.getString("addr3"));
				member.setTel(rs.getString("tel"));
				member.setMailcode(rs.getString("mailcode"));
				
				}

			} catch (Exception e) {
				
				e.printStackTrace();
				
			} finally {
				
				if(rs != null) try { rs.close(); } catch(SQLException ex) {}
				if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
				if(conn != null) try { conn.close(); } catch(SQLException ex) {}
				
			}

			return member;
	    }
	    
	    public List<MemberDataBean> getMemberList() {
	    	Connection conn = null;
	    	PreparedStatement pstmt = null;
	    	ResultSet rs = null;
	    	MemberDataBean member = null;
	    	List<MemberDataBean> li = null;

	    	try {
	    		conn = getConnection();
	    		pstmt = conn.prepareStatement("select * from membera");

	    		rs = pstmt.executeQuery();

	    		if(rs.next()) {
	    			li = new ArrayList<MemberDataBean>();
	    			do {
	    				member = new MemberDataBean();
	    				member.setId(rs.getString("id"));
	    				member.setPassword(rs.getString("password"));
	    				member.setName(rs.getString("name"));
	    				member.setYear(rs.getInt("year"));
	    				member.setGender(rs.getString("gender"));
	    				member.setAddr1(rs.getString("addr1"));
	    				member.setAddr3(rs.getString("addr3"));
	    				member.setTel(rs.getString("tel"));
	    				member.setMailcode(rs.getString("mailcode"));
	    				li.add(member);
	    			} while(rs.next());
	    		}
	    	} catch(Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		if(rs != null) {
	    			try {
	    				rs.close();
	    			} catch (SQLException ex) {

	    			}
	    		}
	    		if(pstmt != null) {
	    			try {
	    				pstmt.close();
	    			} catch (SQLException ex) {

	    			}
	    		}
	    		if(conn != null) {
	    			try {
	    				conn.close();
	    			} catch (SQLException ex) {

	    			}
	    		}

	    	}
	    	return li;
	    }
	    
	    public int deleteMember(String id, String password) {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	        System.out.println(id+":"+password);
	        int x = -1;
	        try {
	           conn = getConnection();
	           pstmt = conn.prepareStatement("select password from membera where id = ?");
	           pstmt.setString(1, id);
	           rs = pstmt.executeQuery();
	           if (rs.next()) {
	              String dbpasswd = rs.getString("password");
	              if (dbpasswd.equals(password)) {
	                 
	                 x = 1;
	                 pstmt = conn.prepareStatement("delete from membera where id = ?");
	                 pstmt.setString(1, id);
	                 pstmt.executeUpdate();
	              } else {
	                 x = 0;
	              }
	           }

	        } catch (Exception e) {
	           e.printStackTrace();
	        } finally {
	           if (rs != null)
	              try {
	                 rs.close();
	              } catch (SQLException ex) {
	              }
	           if (pstmt != null)
	              try {
	                 pstmt.close();
	              } catch (SQLException ex) {
	              }
	           if (conn != null)
	              try {
	                 conn.close();
	              } catch (SQLException ex) {
	              }
	        }
	        return x;
	        
	     }
}

package SessionCheckFilter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fetchHighChartsDataServlet
 */
@WebServlet("/fetchStocktwitsGraph")
public class fetchStocktwitsGraph extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public fetchStocktwitsGraph() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		// String symbol = request.getParameter("symbol");
		// String sentiment = request.getParameter("sentiment");
		Statement stmt = null;
		Connection conn = null;
		try {
			
			

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(
					"jdbc:mysql://stocktwits.c0nhenmgg8th.us-west-2.rds.amazonaws.com:3306/?useSSL=false", "cmpe295b",
					"cmpe295b");
			String stockSymbol = request.getParameter("stockSymbol");
			stmt = conn.createStatement();
			String query = "SELECT timestamp,score FROM messages.stocktwits WHERE symbol='"+stockSymbol+"' AND score != 0.0";
			ResultSet rs = null;
			rs = stmt.executeQuery(query);

			// data = ([
			// [10,0.7695],
			// [12,0.7648]]);

			String JSONArray = "([";
			//int i = 1;
			while (rs.next()) {
				System.out.println(rs.getString("timestamp"));
				String times = rs.getString("timestamp").replaceAll("(-|:|\\s)",  ",");
				times=times.replaceAll("\\.0$","");
				System.out.println(times);
				JSONArray += "[Date.UTC(" + times+ ")," + rs.getString("score") + "],";

			}

			String JSONResponse = JSONArray.substring(0, JSONArray.length() - 1);
			JSONResponse = JSONResponse + "])";
			//System.out.println(JSONResponse);

			
			// Get the printwriter object from response to write the required
			// json object to the output stream
			PrintWriter out = response.getWriter();
			// Assuming your json object is **jsonObject**, perform the
			// following, it will return your json object
			out.print(JSONResponse);
			out.flush();
			// return JSONResponse;

		} catch (Exception e) {
			System.out.println("SQL error : " + e);
		}

		finally {

			try {

				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				System.out.println("SQL error : " + e);
			}

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

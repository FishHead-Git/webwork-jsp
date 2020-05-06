package webworks;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginDoPost
 */
@WebServlet("/LoginDoPost")
public class LoginDoPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginDoPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String msg = "";
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String numberRand = request.getParameter("numberRand");
		
		for(int f=0;f<1;f++) {
			if(username == null || username.trim().equals("")) {
				msg = "请输入用户名！";
				break;
			}
			if(password == null || password.trim().equals("")) {
				msg = "请输入密码！";
				break;
			}
			if(numberRand == null || numberRand.trim().equals("")) {
				msg = "请输入验证码！";
				break;
			}
			
			HttpSession sessionVercode = request.getSession();
			
			if(sessionVercode.getAttribute("numberRand") == null) {
				msg = "验证码已过期，请重新输入。";
				break;
			}
			
			String numberSession = sessionVercode.getAttribute("numberRand").toString();
			
			if(!numberSession.equalsIgnoreCase(numberRand)) {
				msg = "请输入正确的验证码!";
				break;
			}
			sessionVercode.invalidate();
			

			HttpSession session = request.getSession();
			username = username.trim();
			if(!username.equals("tom") || !password.equals("123")) {
				msg = "所输入的用户名或密码错误！请重新输入。";
				break;
			}
			
			session.setAttribute("username", username);
			
			response.sendRedirect("touzhan/ch_6_4_verifyCodeTest/main.jsp");
			return;
		}
		
		msg = URLEncoder.encode(msg, "UTF-8");
		Cookie msgCookie = new Cookie("msg", msg);
		msgCookie.setMaxAge(5);
		response.addCookie(msgCookie);

		username = URLEncoder.encode(username, "UTF-8");
		Cookie usernameCookie = new Cookie("username", username);
		msgCookie.setMaxAge(5);
		response.addCookie(usernameCookie);

		password = URLEncoder.encode(password, "UTF-8");
		Cookie passwordCookie = new Cookie("password", password);
		msgCookie.setMaxAge(5);
		response.addCookie(passwordCookie);
		
		response.sendRedirect("touzhan/ch_6_4_verifyCodeTest/index.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}

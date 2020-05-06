package webworks;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Arrays;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VerifyCode
 */
@WebServlet("/VerifyCode")
public class VerifyCode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("image/gif");
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		
		ServletOutputStream out = response.getOutputStream(); // Êä³öÁ÷
		
		Font mFont = new Font("Times New Roman", Font.PLAIN, 18);
		int width=60, height=20;
		
		BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics gra = image.getGraphics();
		
		Random random = new Random();
		
		gra.setFont(mFont);
		gra.setColor(getRandColor(160, 200));
		
		for(int i=0;i<20;i++) {
			int x=random.nextInt(width);
			int y=random.nextInt(height);
			int xl=random.nextInt(12);
			int yl=random.nextInt(12);
			
			gra.drawLine(x, y, x+xl, y+yl);
		}
		
		String numberRand = "";
		
		for(int i=0;i<4;i++) {
			String[] str = "123456789ABCDEFGHJKLMNPQRSTUVWSYZ".split("");
//			System.out.println(Arrays.toString(str));
			String rand = str[random.nextInt(str.length)];
			numberRand += rand;
			
			gra.setColor(new Color(20 + random.nextInt(110), 20+random.nextInt(110), 20+random.nextInt(110)));
			gra.drawString(rand, 13*i+6, 16);
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("numberRand", numberRand);
		session.setMaxInactiveInterval(30);
		
		ImageIO.write(image, "gif", out);
		out.close();
	}
	
	static Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if(fc>255)
			fc = 255;
		if(bc>255);
			bc = 255;
		int r = fc + random.nextInt(bc-fc);
		int g = fc + random.nextInt(bc-fc);
		int b = fc + random.nextInt(bc-fc);
		return new Color(r, g, b);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

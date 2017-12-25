package com.kms.servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.sun.prism.Graphics;

public class SidServlet extends HttpServlet {
	private final static char[] cs = { '1','2','3','4','5','6','7','8','9','0'};
	private final static Random random = new Random(new Date().getTime());
	private String sid() {
		String string = "";
		StringBuffer sb = new StringBuffer();
		for(int i=0;i<4;i++)
		{
			sb.append(cs[random.nextInt(cs.length)]);
		}
		string = sb.toString();
		return string;
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//resp.setContentType("img/jpeg");
		//产生随机验证码
		String sid = sid();
		//在session中保存验证码
		HttpSession session =req.getSession();
		session.setAttribute("sid", sid);
//		Session.setMaxInactiveInterval(30);
		//生成验证码图片
		BufferedImage bi = new BufferedImage(68, 22, BufferedImage.TYPE_3BYTE_BGR);
		java.awt.Graphics g = bi.getGraphics();
		g.drawString(sid, 0, 20);
		//向IE写入图片
		ImageIO.write(bi, "JPG", resp.getOutputStream());
	}

}

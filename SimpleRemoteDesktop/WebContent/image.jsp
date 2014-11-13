<%@page import="com.sun.javafx.scene.paint.GradientUtils.Point"%>
<%@page import="java.awt.MouseInfo"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Rectangle"%>
<%@page import="java.awt.DisplayMode"%>
<%@page import="java.awt.Robot"%>
<%@ page language="java" contentType="image/png"%>
<% 
Robot r = new Robot();
/*
Rectangle r = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
*/
BufferedImage bi = r.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
Point p= MouseInfo.getPointerInfo().getLocation();
bi.
ImageIO.write(bi,"png", response.getOutputStream());
%>
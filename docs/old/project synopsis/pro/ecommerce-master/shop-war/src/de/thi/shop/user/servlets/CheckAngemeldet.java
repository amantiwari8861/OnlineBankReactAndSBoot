// CREATED BY MARK MALDONADO

package de.thi.shop.user.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckAngemeldet {
	public static void checkAngemeldet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Test ob user angemeldet ist
		// Session Bean erhalten		
		try {
			if (request.getSession(false).getAttribute("userBean") == null || request.getSession(false).getAttribute("userBean").equals("")) {
				response.sendRedirect("eingang/login.html");
			}
		} 
		catch (Exception ex) {
			response.sendRedirect("eingang/login.html");
		}
	}
}

//CREATED BY SEYIT ARAR

package de.thi.shop.artikel.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import de.thi.shop.artikel.beans.ArtikelBean;
import de.thi.shop.user.servlets.CheckAdmin;
import de.thi.shop.user.servlets.CheckAngemeldet;


/**
 * Servlet implementation class ArtikelHinzufuegenServlet
 */
@WebServlet("/artikelhinzufuegenservlet")
@MultipartConfig
public class ArtikelHinzufuegenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Resource(lookup="java:jboss/datasources/MySqlThidbDS")
	private DataSource ds;
	
    public ArtikelHinzufuegenServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Test ob User angemeldet ist
		CheckAngemeldet.checkAngemeldet(request, response);
		
		// Test ob User Admin ist
		CheckAdmin.checkAdmin(request, response);
				
		request.setCharacterEncoding("UTF-8");
		
		ArtikelBean artikelBean = new ArtikelBean();
	
	
		int kategorieId = 0;
		boolean artikelVorhanden = false;
	
		artikelBean.setName(request.getParameter("artikelName"));
		artikelBean.setPreis(Math.round(100f*Float.parseFloat(request.getParameter("artikelPreis"))));
		artikelBean.setKategorieName(request.getParameter("artikelKategorie"));
		
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("SELECT id FROM artikel WHERE name = ?")) {
		
			pstmt.setString(1, artikelBean.getName());
			
				try (ResultSet rs = pstmt.executeQuery()) {
					if(rs.next()) {
						artikelVorhanden = true;
						artikelBean.setId(rs.getLong("id"));
						response.sendRedirect("admin/artikel_hinzu_fehler.jsp");
					}
				}
		}catch(Exception ex) {
			ex.printStackTrace();
		}	
		
		if(!artikelVorhanden) {
			
		//Bild holen und Name holen
		
		//Dieser Teil ist vom Internet : https://stackoverflow.com/questions/39229087/how-to-insert-and-retrieve-image-database-using-jsp-servlet
		Part filePart = request.getPart("artikelBild");
		InputStream inputStream = null;
		inputStream = filePart.getInputStream();
		String bildName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		
		
		// .jpg von Bildname entfernen
		if (bildName.indexOf(".") > 0) {
			   bildName = bildName.substring(0, bildName.lastIndexOf("."));
		}
		
		// Bild und Name in artikelBean schreiben
		artikelBean.setBildName(bildName);
		
		//Hole KategorieId
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("SELECT id FROM kategorie WHERE name = ?")) {
		
			pstmt.setString(1, request.getParameter("artikelKategorie"));
			
				try (ResultSet rs = pstmt.executeQuery()) {
					if(rs.next()) {
						kategorieId = rs.getInt("id");
					}
				}
		}catch(Exception ex) {
			ex.printStackTrace();
		}	
		
		//Funktion zum eigentliche hinzuf�gen aufrufen
		add(artikelBean, kategorieId, inputStream);
		
		response.sendRedirect("admin/artikel_hinzu_erfolgreich.jsp");

		}
	}
	
	private void add(ArtikelBean artikelBean, int kategorieId, InputStream inputStream) throws ServletException {
		
		String [] generatedKeys = new String[] {"id"};
		
		//in Datenbank einf�gen
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement("INSERT INTO artikel (name, preis, bild, bildName, idKategorie) VALUES (?,?,?,?,?)", generatedKeys)){
			
			pstmt.setString(1, artikelBean.getName());
			pstmt.setInt(2, artikelBean.getPreis());
			pstmt.setBlob(3, inputStream);
			pstmt.setString(4,  artikelBean.getBildName());
			pstmt.setLong(5, kategorieId);
			pstmt.executeUpdate();
			
			//neu erstellte Id in AritkelBean
			try(ResultSet rs = pstmt.getGeneratedKeys()) {
				while (rs.next()) {
					artikelBean.setId(rs.getLong(1));
				}
			}
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
			}
	}
}

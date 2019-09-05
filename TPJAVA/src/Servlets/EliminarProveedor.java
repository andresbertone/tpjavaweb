package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logica.ControladorProveedor;

/**
 * Servlet implementation class EliminarProveedor
 */
@WebServlet({ "/EliminarProveedor", "/ELIMINARPROVEEDOR", "/eliminarproveedor" })
public class EliminarProveedor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarProveedor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cuit= request.getParameter("cuit");
		ControladorProveedor cp = new ControladorProveedor();
		cp.eliminarProveedor(cuit);
		request.getRequestDispatcher("Proveedores.jsp").forward(request, response);
	}

}

package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.RepuestoFiltrar;
import entidades.Repuesto;

/**
 * Servlet implementation class RepuestoFiltro
 */
@WebServlet({ "/RepuestoFiltro", "/REPUESTOFILTRO", "/REPUESTOfiltro", "/repuestoFILTRO" })
public class RepuestoFiltro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RepuestoFiltro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String desc_buscar = request.getParameter("txtbuscar");
		RepuestoFiltrar rp = new RepuestoFiltrar();
		ArrayList<Repuesto> misRepuestos = rp.traerRepuestos(desc_buscar);
		request.getSession().setAttribute("misRepuestos", misRepuestos);
		request.getRequestDispatcher("BusquedaFiltradaRepuestos.jsp").forward(request,response);
	}

}

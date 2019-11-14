package logica;

import java.util.ArrayList;

import datos.*;
import entidades.LineaDeRepuesto;
import entidades.Reparacion;

public class ControladorReparacion {
	
	DatosReparacion dr = new DatosReparacion();
	
	public void facturarReparacion (Reparacion repa, String estado){
		dr.facturarReparacion(repa, estado);
	}
	
	public double precioManoDeObra(int cod_reparacion) {
		return dr.precioManoDeObra(cod_reparacion);
	}
	
	public ArrayList<Reparacion> traerReparacionesAModificar(){
	return dr.traerReparacionesAModificar();	
	}
	
	public void agregarReparacion(ArrayList<LineaDeRepuesto> repuestosSeleccionados, Reparacion rep, String estado){
		dr.agregarReparacion(repuestosSeleccionados, rep, estado);
	}
	
	public void agregarNuevoIngreso(Reparacion repa){
		dr.agregarNuevoIngreso(repa);
	}
	
	public ArrayList<Reparacion> traerReparaciones(){
		return dr.traerReparaciones();
	}
	
	public Reparacion traerReparacionPorNro(int nro_reparacion){
		return dr.traerReparacionPorNro(nro_reparacion);
	}
	
	public ArrayList<Reparacion> reparacionesPorCliente(String dni){
		return dr.reparacionesPorCliente(dni);
	}
	
	public ArrayList<Reparacion> reparacionesFinalizadasPorCliente(String dni){
		return dr.reparacionesFinalizadasPorCliente(dni);
	}
	
	public void eliminarReparacion(int nro_reparacion){
		dr.eliminarReparacion(nro_reparacion);
	}
	
	public ArrayList<Reparacion> reparacionesFiltradas(String nombuscar){
		return dr.reparacionesFiltradas(nombuscar);
	}
											//ser�a el Array repuestosSeleccionados
	public void modificarReparacion (ArrayList<LineaDeRepuesto> repuestosModificados, ArrayList<LineaDeRepuesto> repuestosOriginal, Reparacion rep, String estado) {
		dr.modificarReparacion(repuestosModificados, repuestosOriginal, rep, estado);
	}
}

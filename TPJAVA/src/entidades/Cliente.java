package entidades;

public class Cliente {
	
	private String dni;
	private String nombre_y_apellido;
	private String direccion;
	private String mail;
	private String telefono;
	
	
	public String getNombre_y_apellido() {
		return nombre_y_apellido;
	}
	public void setNombre_y_apellido(String nombre_y_apellido) {
		this.nombre_y_apellido = nombre_y_apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
}

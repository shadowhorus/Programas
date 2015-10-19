public class Producto{
	String nombre;
	String descripcion;
	Float precio;

	public String getNombre(){
		return nombre;
	}
	public Producto(String nombre, String descripcion, Float precio){
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.precio=precio;
	}
}
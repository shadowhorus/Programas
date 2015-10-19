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

	public static void creaLista(ArrayList<Producto> lista){
		lista.add(new Producto("Hawaiana", "Hecha con queso, piña y jamon",(float)150));
		lista.add(new Producto("Peperoni", "Hecha con queso, Peperoni y Salsa de Tomate",(float)127.50));
		lista.add(new Producto("Mexicana", "Hecha con queso, frijoles y Chile de arbol",(float)200.50));
		return;
	}
}
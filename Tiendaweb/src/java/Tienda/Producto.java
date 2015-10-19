package Tienda;
import java.util.ArrayList;
import java.util.Iterator;
public class Producto{
	String nombre;
	String descripcion;
	Integer precio;
	public String getNombre(){
		return nombre;
	}
        public Integer getPrecio(){
        return precio;
        }
	public Producto(String nombre, String descripcion, Integer precio){
		this.nombre=nombre;
		this.descripcion=descripcion;
		this.precio=precio;
	}

	public static void creaLista(ArrayList<Producto> lista){
		lista.add(new Producto("Hawaiana", "Hecha con queso, piña y jamon",150));
		lista.add(new Producto("Peperoni", "Hecha con queso, Peperoni y Salsa de Tomate",127));
		lista.add(new Producto("Mexicana", "Hecha con queso, frijoles y Chile de arbol",200));
		return;
	}

	public static String imprimirLista(ArrayList<Producto> lista){

		Iterator<Producto> iterador = lista.iterator();
		String salida="";
		salida.concat("<ul>");
		while(iterador.hasNext())
		{
		Producto elemento = iterador.next();

	salida=salida+"<li>"+elemento.nombre+"</li>"+"<li>"+elemento.descripcion+"</li>"+"<li>"+Float.toString(elemento.precio)+" pesos"+"</li>";
		}
		salida=salida+"</ul>";
		return salida;
	}

	public static String imprimirOpciones(ArrayList<Producto> lista,String nombre){
		Iterator<Producto> iterador = lista.iterator();
		String salida= " ";
		salida=salida+"<select name='"+nombre+"'>";
		while (iterador.hasNext()) {
            Producto elemento = iterador.next();
			salida=salida+"<option>"+elemento.nombre+"</option>";
		}
		salida=salida+"</select>";
                return salida;
	}

	public static void añadirCompra(Producto compra,ArrayList<Producto> lista){
			lista.add(compra);
	}

	

	


}

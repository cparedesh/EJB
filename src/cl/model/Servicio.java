package cl.model;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Singleton;

/**
 * Session Bean implementation class Servicio
 */
@Singleton
@LocalBean
public class Servicio implements ServicioLocal {
	
	private ArrayList<Cliente> lista = new ArrayList<Cliente>();

    /**
     * Default constructor. 
     */
    public Servicio() {
    	
    	lista.add(new Cliente("Juan","Pérez","1-1"));
    	lista.add(new Cliente("Diego","Fuentes","2-2"));
        
    }

	@Override
	public void addCliente(Cliente cli) {
		lista.add(cli);
		
	}

	@Override
	public ArrayList<Cliente> getClientes() {
		
		return lista;
	}
	
	@Override
	public Cliente getClienteXRut(String rut){
		
		for (Cliente cliente : lista) {
			
			if (cliente.getRut().equals(rut))
				return cliente;
			
		}
		
		return null;
		
	}
	
	@Override
	public String eliminar(String rut){
		
		Cliente cli = getClienteXRut(rut);
		
		if(cli==null){
			return "Rut no encontrado";
		}
		else{
			lista.remove(cli);
			return "Cliente Eliminado";
		}
		
	}

	@Override
	public String modificar(Cliente cliente) {

		Cliente cli = getClienteXRut(cliente.getRut());
		
		cli.setNombre(cliente.getNombre());
		cli.setApellido(cliente.getApellido());
		cli.setRut(cliente.getRut());
		
		return "Cliente Modificado";
	}

}

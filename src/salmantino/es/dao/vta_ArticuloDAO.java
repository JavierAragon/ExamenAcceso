package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.vta_Articulo;


public interface vta_ArticuloDAO {

	public List<vta_Articulo> getArticulos();
	


	public vta_Articulo getArticulo(int idarticulo);
	
	
}

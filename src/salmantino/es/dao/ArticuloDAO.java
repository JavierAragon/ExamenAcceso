package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.Articulo;


public interface ArticuloDAO {

	public List<Articulo> getArticulos();
	
	public void insertarArticulo(Articulo losArticulos);

	public Articulo getArticulo(int idarticulo);
	
	public void eliminarArticulo(int idarticulo);
}

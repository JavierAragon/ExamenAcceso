package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.Pedido;


public interface PedidoDAO {

	public List<Pedido> getPedidos();
	
	public void insertarPedido(Pedido losPedidos);

	public Pedido getPedido(int idpedido);
	
	public void eliminarPedido(int idpedido);
}

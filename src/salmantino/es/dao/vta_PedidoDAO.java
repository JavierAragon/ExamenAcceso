package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.vta_Pedido;


public interface vta_PedidoDAO {

	public List<vta_Pedido> getPedidos();
	


	public vta_Pedido getPedido(int idpedido);
	
	
}

package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.vta_Pedido;

@Repository
public class vta_PedidoDAOClase implements vta_PedidoDAO{

	@Override
	@Transactional
	public List<vta_Pedido> getPedidos() {
		Session miSession=sessionFactory.getCurrentSession();
		Query<vta_Pedido> miQuery=miSession.createQuery("from vta_Pedido",vta_Pedido.class);
		List<vta_Pedido> pedidos=miQuery.getResultList();
		return pedidos;
	}
	@Autowired
		private SessionFactory sessionFactory; 

	
	
	@Override
	@Transactional
	public vta_Pedido getPedido(int idpedido) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		vta_Pedido losPedidos=miSession.get(vta_Pedido.class, idpedido);
		
		return losPedidos;
	}
	
	

	
	
	
	
}
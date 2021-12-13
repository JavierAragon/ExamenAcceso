package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.Pedido;

@Repository
public class PedidoDAOClase implements PedidoDAO{

	@Override
	@Transactional
	public List<Pedido> getPedidos() {
		Session miSession=sessionFactory.getCurrentSession();
		Query<Pedido> miQuery=miSession.createQuery("from Pedido",Pedido.class);
		List<Pedido> pedidos=miQuery.getResultList();
		return pedidos;
	}
	@Autowired
		private SessionFactory sessionFactory; 

	@Override
	@Transactional
	public void insertarPedido(Pedido losPedidos) {
		Session miSession=sessionFactory.getCurrentSession();
		miSession.saveOrUpdate(losPedidos);
		
	}
	
	@Override
	@Transactional
	public Pedido getPedido(int idpedido) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		Pedido losPedidos=miSession.get(Pedido.class, idpedido);
		
		return losPedidos;
	}
	
	@Override
	@Transactional
	public void eliminarPedido(int idpedido) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		Query consulta=miSession.createQuery("delete from Pedido where idpedido=:IdDelPedido");
		
		consulta.setParameter("IdDelPedido", idpedido);
		
		consulta.executeUpdate();
		
	}

	
	
	
	
}
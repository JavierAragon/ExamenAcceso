package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.vta_Articulo;

@Repository
public class vta_ArticuloDAOClase implements vta_ArticuloDAO{

	@Override
	@Transactional
	public List<vta_Articulo> getArticulos() {
		Session miSession=sessionFactory.getCurrentSession();
		Query<vta_Articulo> miQuery=miSession.createQuery("from vta_Articulo",vta_Articulo.class);
		List<vta_Articulo> articulos=miQuery.getResultList();
		return articulos;
	}
	@Autowired
		private SessionFactory sessionFactory; 

	
	
	@Override
	@Transactional
	public vta_Articulo getArticulo(int idarticulo) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		vta_Articulo losArticulos=miSession.get(vta_Articulo.class, idarticulo);
		
		return losArticulos;
	}
	
	

	
	
	
	
}
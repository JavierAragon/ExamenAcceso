package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.Articulo;

@Repository
public class ArticuloDAOClase implements ArticuloDAO{

	@Override
	@Transactional
	public List<Articulo> getArticulos() {
		Session miSession=sessionFactory.getCurrentSession();
		Query<Articulo> miQuery=miSession.createQuery("from Articulo",Articulo.class);
		List<Articulo> articulos=miQuery.getResultList();
		return articulos;
	}
	@Autowired
		private SessionFactory sessionFactory; 

	@Override
	@Transactional
	public void insertarArticulo(Articulo losArticulos) {
		Session miSession=sessionFactory.getCurrentSession();
		miSession.saveOrUpdate(losArticulos);
		
	}
	
	@Override
	@Transactional
	public Articulo getArticulo(int idarticulo) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		Articulo losArticulos=miSession.get(Articulo.class, idarticulo);
		
		return losArticulos;
	}
	
	@Override
	@Transactional
	public void eliminarArticulo(int idarticulo) {
		
		Session miSession=sessionFactory.getCurrentSession();
		
		Query consulta=miSession.createQuery("delete from Articulo where idarticulo=:IdDelArticulo");
		
		consulta.setParameter("IdDelArticulo", idarticulo);
		
		consulta.executeUpdate();
		
	}

	
	
	
	
}
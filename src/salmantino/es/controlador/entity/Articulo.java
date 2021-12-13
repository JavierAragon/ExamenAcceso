package salmantino.es.controlador.entity;



import javax.persistence.*;

@Entity

@Table(name="articulo",schema="gestionPedidosBD")

public class Articulo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idarticulo")
	private int idarticulo;
	
	@Column(name="nomarticulo")
	private String nomarticulo;
	
	@Column(name="descriparticulo")
	private String descriparticulo;
	
	@Column(name="stockarticulo")
	private int stockarticulo;
	
	@Column(name="precioarticulo")
	private double precioarticulo;
	
	
	public Articulo(){
		
	}


	public int getIdarticulo() {
		return idarticulo;
	}


	public void setIdarticulo(int idarticulo) {
		this.idarticulo = idarticulo;
	}


	public String getNomarticulo() {
		return nomarticulo;
	}


	public void setNomarticulo(String nomarticulo) {
		this.nomarticulo = nomarticulo;
	}


	public String getDescriparticulo() {
		return descriparticulo;
	}


	public void setDescriparticulo(String descriparticulo) {
		this.descriparticulo = descriparticulo;
	}


	public int getStockarticulo() {
		return stockarticulo;
	}


	public void setStockarticulo(int stockarticulo) {
		this.stockarticulo = stockarticulo;
	}


	public double getPrecioarticulo() {
		return precioarticulo;
	}


	public void setPrecioarticulo(double precioarticulo) {
		this.precioarticulo = precioarticulo;
	}


	@Override
	public String toString() {
		return "Articulo [idarticulo=" + idarticulo + ", nomarticulo="
				+ nomarticulo + ", descriparticulo=" + descriparticulo
				+ ", stockarticulo=" + stockarticulo + ", precioarticulo="
				+ precioarticulo + "]";
	}

	
	

}

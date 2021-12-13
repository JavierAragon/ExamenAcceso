package salmantino.es.controlador.entity;



import javax.persistence.*;

@Entity

@Table(name="pedido",schema="gestionPedidosBD")

public class Pedido {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idpedido")
	private int idpedido;
	
	@Column(name="numpedido")
	private String numpedido;
	
	@Column(name="fecha")
	private String fecha;
	
	@Column(name="importe")
	private double importe;
	
	@Column(name="descuento")
	private double descuento;
	
	@Column(name="idcliente")
	private int idcliente;
	
	public Pedido(){
		
	}

	public int getIdpedido() {
		return idpedido;
	}

	public void setIdpedido(int idpedido) {
		this.idpedido = idpedido;
	}

	public String getNumpedido() {
		return numpedido;
	}

	public void setNumpedido(String numpedido) {
		this.numpedido = numpedido;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public double getImporte() {
		return importe;
	}

	public void setImporte(double importe) {
		this.importe = importe;
	}

	public double getDescuento() {
		return descuento;
	}

	public void setDescuento(double descuento) {
		this.descuento = descuento;
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	@Override
	public String toString() {
		return "Pedido [idpedido=" + idpedido + ", numpedido=" + numpedido
				+ ", fecha=" + fecha + ", importe=" + importe + ", descuento="
				+ descuento + ", idcliente=" + idcliente + "]";
	}
	
	
	

}

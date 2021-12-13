package salmantino.es.controlador.entity;



import javax.persistence.*;

@Entity

@Table(name="vta_Pedidos",schema="gestionPedidosBD")

public class vta_Pedido {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	@Column(name="id")
	private int id;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="apellido")
	private String apellido;
	
	@Column(name="email")
	private String email;
	
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
	
	
	public vta_Pedido(){
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
		return "vta_Pedidos [id=" + id + ", nombre=" + nombre + ", apellido="
				+ apellido + ", email=" + email + ", idpedido=" + idpedido
				+ ", numpedido=" + numpedido + ", fecha=" + fecha
				+ ", importe=" + importe + ", descuento=" + descuento
				+ ", idcliente=" + idcliente + "]";
	}

	
	
	
	

}
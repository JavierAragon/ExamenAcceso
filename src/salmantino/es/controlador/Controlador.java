package salmantino.es.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import salmantino.es.controlador.entity.Cliente;
import salmantino.es.controlador.entity.Pedido;
import salmantino.es.controlador.entity.vta_Pedido;
import salmantino.es.controlador.entity.Articulo;
import salmantino.es.controlador.entity.vta_Articulo;

import salmantino.es.dao.ClienteDAO;
import salmantino.es.dao.PedidoDAO;
import salmantino.es.dao.vta_PedidoDAO;
import salmantino.es.dao.ArticuloDAO;
import salmantino.es.dao.vta_ArticuloDAO;

@Controller
@RequestMapping("/cliente")
public class Controlador {
	//RESPECTO A CLIENTES:
	@RequestMapping("/lista")
	public String listaClientes(Model elModelo){
		
		List<Cliente> losClientes=clienteDAO.getClientes();
		elModelo.addAttribute("clientes",losClientes);
		
		return "lista-clientes";
	}
	@RequestMapping("/muestraFormularioAgregar")
	public String muestraFormularioAgregar(Model elModelo){
		Cliente elCliente = new Cliente();
		elModelo.addAttribute("cliente",elCliente);
		return "formularioCliente";
	}
	
	@PostMapping("/insertarCliente")
	public String insertarCliente(@ModelAttribute("cliente") Cliente elCliente)
	{
		clienteDAO.insertarCliente(elCliente);
		return "redirect:/cliente/lista";
	}
	
	
	@GetMapping("/muestraFormularioActualizar")
	public String muestraFormularioActualizar(@RequestParam("clienteId") int Id, Model elModelo){
		
		Cliente elCliente = clienteDAO.getCliente(Id);
		
		elModelo.addAttribute("cliente",elCliente);
		
		return "formularioCliente";
	}
	
	
	@GetMapping("/eliminar")
	public String eliminarCliente(@RequestParam("clienteId") int Id){
		
		clienteDAO.eliminarCliente(Id);
	
		return "redirect:/cliente/lista";
	}
	@Autowired
	private ClienteDAO clienteDAO;
	
	//RESPECTO A PEDIDOS:
	
	@RequestMapping("/listapedidos")
	public String listaPedidos(Model elModelo){
		
		List<Pedido> losPedidos=pedidoDAO.getPedidos();
		elModelo.addAttribute("pedidos",losPedidos);
		
		return "lista-pedidos";
	}
	
	@RequestMapping("/muestraFormularioAgregarPedido")
	public String muestraFormularioAgregarPedido(Model elModelo){
		Pedido losPedidos = new Pedido();
		elModelo.addAttribute("pedido",losPedidos);
		return "formularioPedido";
	}
	
	@PostMapping("/insertarPedido")
	public String insertarPedido(@ModelAttribute("pedido") Pedido elPedido)
	{
		pedidoDAO.insertarPedido(elPedido);
		return "redirect:/cliente/vta_listapedidos";
	}
	
	@GetMapping("/muestraFormularioActualizarPedido")
	public String muestraFormularioActualizarPedido(@RequestParam("pedidoId") int idpedido, Model elModelo){
		
		Pedido elPedido = pedidoDAO.getPedido(idpedido);
		
		elModelo.addAttribute("pedido",elPedido);
		
		return "formularioPedido";
	}
	
	@GetMapping("/eliminarpedido")
	public String eliminarPedido(@RequestParam("pedidoId") int idpedido){
		
		pedidoDAO.eliminarPedido(idpedido);
	
		return "redirect:/cliente/vta_listapedidos";
	}
	
	
	
	
	@Autowired
	private PedidoDAO pedidoDAO;
	
	//RESPECTO A LA VISTA DE PEDIDOS
	
	@RequestMapping("/vta_listapedidos")
	public String vta_listaPedidos(Model elModelo){
		
		List<vta_Pedido> losPedidos=vta_pedidoDAO.getPedidos();
		elModelo.addAttribute("pedidos",losPedidos);
		
		return "lista-vistapedidos";
	}
	
	
	
	
	
	@GetMapping("/vta_muestraFormularioActualizarPedido")
	public String vta_muestraFormularioActualizarPedido(@RequestParam("pedidoId") int idpedido, Model elModelo){
		
		vta_Pedido elPedido = vta_pedidoDAO.getPedido(idpedido);
		
		elModelo.addAttribute("pedido",elPedido);
		
		return "lista-vistapedidos";
	}
	
	
	
	
	
	
	@Autowired
	private vta_PedidoDAO vta_pedidoDAO;

	//RESPECTO A LA PARTE DEL EXAMEN (LA TABLA DE ARTICULOS)
	
	@RequestMapping("/listaarticulos")
	public String listaArticulos(Model elModelo){
		
		List<Articulo> losArticulos=articuloDAO.getArticulos();
		elModelo.addAttribute("articulos",losArticulos);
		
		return "lista-articulos";
	}
	
	@RequestMapping("/muestraFormularioAgregarArticulo")
	public String muestraFormularioAgregarArticulo(Model elModelo){
		Articulo losArticulos = new Articulo();
		elModelo.addAttribute("articulo",losArticulos);
		return "formularioArticulo";
	}
	
	@PostMapping("/insertarArticulo")
	public String insertarArticulo(@ModelAttribute("articulo") Articulo elArticulo)
	{
		articuloDAO.insertarArticulo(elArticulo);
		return "redirect:/cliente/vta_listaarticulos";
	}
	
	@GetMapping("/muestraFormularioActualizarArticulo")
	public String muestraFormularioActualizarArticulo(@RequestParam("articuloId") int idarticulo, Model elModelo){
		
		Articulo elArticulo = articuloDAO.getArticulo(idarticulo);
		
		elModelo.addAttribute("articulo",elArticulo);
		
		return "formularioArticulo";
	}
	
	@GetMapping("/eliminararticulo")
	public String eliminarArticulo(@RequestParam("articuloId") int idarticulo){
		
		articuloDAO.eliminarArticulo(idarticulo);
	
		return "redirect:/cliente/vta_listaarticulos";
	}
	
	
	
	
	@Autowired
	private ArticuloDAO articuloDAO;
	
	//RESPECTO A LA VISTA DE ARTICULOS(DEL EXAMEN)
	
		@RequestMapping("/vta_listaarticulos")
		public String vta_listaArticulos(Model elModelo){
			
			List<vta_Articulo> losArticulos=vta_articuloDAO.getArticulos();
			elModelo.addAttribute("articulos",losArticulos);
			
			return "lista-vistaarticulos";
		}
		
		
		
		
		
		@GetMapping("/vta_muestraFormularioActualizarArticulo")
		public String vta_muestraFormularioActualizarArticulo(@RequestParam("articuloId") int idarticulo, Model elModelo){
			
			vta_Articulo elArticulo = vta_articuloDAO.getArticulo(idarticulo);
			
			elModelo.addAttribute("articulo",elArticulo);
			
			return "lista-vistaarticulos";
		}
		
		
		
		
		
		
		@Autowired
		private vta_ArticuloDAO vta_articuloDAO;
}

package persistencia;

import java.util.List;
import negocio.Pedido;
import negocio.Persona;
import negocio.Presentador;

public class PedidoDaoImp implements PedidoDao{

    @Override
    public String grabarPedido(Pedido pe) {
        String sql="call GrabarPedido("+pe.getIdPerCli()+",'"+pe.getFecha()+"',"+pe.getTotal()+")";
        return Operacion.ejecutar(sql);
    }
    
    @Override
    public String grabarDetalle(Pedido pe) {
        String sql="call GrabarDetalle("+pe.getIdLibro()+","+pe.getCantidad()+","+pe.getPrecio()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String AprobarPedido(Pedido pe) {
        String sql="call AprobarPedido("+pe.getIdPedido()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Presentador buscar(Pedido pe) {
        String sql = "call buscarPedido("+pe.getIdPedido()+")";
        Object[] fill = Operacion.buscar(sql);
        
        if (fill != null) {
            Persona per=new Persona();
            Pedido ped=new Pedido();
            
            ped.setIdPedido((int) fill[0]);
            per.setNombre((String) fill[1]);
            per.setApellidos((String) fill[2]);
            per.setDni((String) fill[3]);
            per.setDireccion((String) fill[4]);
            ped.setFecha(fill[5].toString());
            ped.setEstado((int)fill[6]);
            ped.setTotal((double)fill[7]);
            
            Presentador pre=new Presentador(per, ped);
            return pre;
        }
        return null;
    }

    @Override
    public String NegarPedido(Pedido pe) {
        String sql="call RechazarPedido("+pe.getIdPedido()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listarDetalle(Pedido pe) {
        String sql = "call ListarDetalle("+pe.getIdPedido()+")";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }

    @Override
    public List listarPedido(Pedido pe) {
        String sql = "call ListarPedido("+pe.getEstado()+")";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
}

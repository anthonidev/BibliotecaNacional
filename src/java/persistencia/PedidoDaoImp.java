package persistencia;

import java.util.List;
import negocio.BuscarPedido;
import negocio.Pedido;

public class PedidoDaoImp implements PedidoDao{

    @Override
    public String grabar(Pedido pe) {
        
    String sql="insert into pedido values(Null," + pe.getIdPerCli() + ",'" + pe.getFecha()+ "',Null'" + pe.getTotal() + ")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String AprobarPedido(int IdPedido) {
        String sql="call AprobarPedido("+IdPedido+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public BuscarPedido buscarId(int IdPedido) {
        String sql = "call buscarPedido("+ IdPedido +")";
        Object[] fill = Operacion.buscar(sql);
        
        if (fill != null) {
            BuscarPedido bp = new BuscarPedido();
            bp.setIdPedido((int) fill[0]);
            bp.setNombre((String) fill[1]);
            bp.setApellidos((String) fill[2]);
            bp.setDni((String) fill[3]);
            bp.setDireccion((String) fill[4]);
            bp.setFecha(fill[5].toString());
            bp.setEstado((int)fill[6]);
            bp.setTotal((double)fill[7]);
            return bp;
        }
        return null;
    }

    @Override
    public String NegarPedido(int IdPedido) {
        String sql="call RechazarPedido("+IdPedido+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listarDetalle(int IdPedido) {
        String sql = "call ListarDetalle("+IdPedido+")";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }

    @Override
    public List listarPedido(int estado) {
         String sql = "call ListarPedido("+estado+")";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
}

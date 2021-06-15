package servicio;

import java.util.List;
import negocio.BuscarPedido;
import negocio.Pedido;
import persistencia.PedidoDao;
import persistencia.PedidoDaoImp;

public class PedidoServicioImp implements PedidoServicio {
    private PedidoDao peDao;
    
    public PedidoServicioImp() {
        peDao = new PedidoDaoImp();
    }

    @Override
    public String grabar(int IdPerCli, String fecha, int estado, double Total) {
        Pedido Pe = new Pedido(IdPerCli, fecha, Total);
        String msg = peDao.grabar(Pe);
        return msg;
    }

    @Override
    public String aprobarPedido(int IdPerCli) {
        String msg = peDao.AprobarPedido(IdPerCli);
        return msg;
    }

    @Override
    public Object[] buscar(int IdPerCli) {
        BuscarPedido bp=peDao.buscarId(IdPerCli);
        if(bp!=null){
            Object[]fil=new Object[8];
            fil[0]=bp.getIdPedido();
            fil[1]=bp.getNombre();
            fil[2]=bp.getApellidos();
            fil[3]=bp.getDni();
            fil[4]=bp.getDireccion();
            fil[5]=bp.getFecha();
            fil[6]=bp.getEstado();
            fil[7]=bp.getTotal();
            return fil;
        }
        return null;
    }

    @Override
    public String negarPedido(int IdPerCli) {
        String msg = peDao.NegarPedido(IdPerCli);
        return msg;
    }

    @Override
    public List listarDetalle(int IdPerCli) {
         return peDao.listarDetalle(IdPerCli);
    }

    @Override
    public List listarPedido(int estado) {
        return peDao.listarPedido(estado);
    }
}
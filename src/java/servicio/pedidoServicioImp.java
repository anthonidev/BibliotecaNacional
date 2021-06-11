
package servicio;

import java.util.List;
import negocio.BuscarPedido;
import negocio.Pedido;
import persistencia.pedidoDao;
import persistencia.pedidoDaoImp;

public class pedidoServicioImp implements pedidoServicio {
    
    private pedidoDao peDao;

    
    public pedidoServicioImp() {
    peDao = new pedidoDaoImp();
    }
    

    @Override
    public String grabar(int IdPerCli, String fecha, int estado, double Total) {
        Pedido Pe = new Pedido(IdPerCli, fecha, Total);
        String msg = peDao.grabar(Pe);
        return msg;
    }

    @Override
    public String AprobarPedido(int IdPerCli) {
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
    public String NegarPedido(int IdPerCli) {
        String msg = peDao.NegarPedido(IdPerCli);
        return msg;
    }

    @Override
    public List listarPedido(int IdPerCli) {
         return peDao.listarDetalle(IdPerCli);
    }
    
}

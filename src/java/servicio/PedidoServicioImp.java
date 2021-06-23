package servicio;

import java.time.LocalDate;
import java.util.List;
import negocio.Pedido;
import negocio.Presentador;
import persistencia.PedidoDao;
import persistencia.PedidoDaoImp;

public class PedidoServicioImp implements PedidoServicio {
    private PedidoDao peDao;
    
    public PedidoServicioImp() {
        peDao = new PedidoDaoImp();
    }

    @Override
    public String grabarPedido(int IdPerCli, double Total) {
        Pedido Pe = new Pedido(IdPerCli, LocalDate.now().toString(), Total);
        String msg = peDao.grabarPedido(Pe);
        if (msg==null)
            msg="Pedido Grabado";
        return msg;
    }

    @Override
    public String grabarDetalle(int IdLibro, int Cantidad, double Precio) {
        Pedido Pe = new Pedido(IdLibro, Cantidad, Precio);
        String msg = peDao.grabarDetalle(Pe);
        if (msg==null)
            msg="Pedido Grabado";
        return msg;
    }

    @Override
    public String aprobarPedido(int IdPed) {
        Pedido ped=new Pedido(IdPed);
        String msg = peDao.AprobarPedido(ped);
        return msg;
    }

    @Override
    public Object[] buscar(int IdPed) {
        Pedido ped=new Pedido(IdPed);
        Presentador pre=peDao.buscar(ped);
        if(pre!=null){
            Object[]fil=new Object[8];
            fil[0]=pre.getPed().getIdPedido();
            fil[1]=pre.getPer().getNombre();
            fil[2]=pre.getPer().getApellidos();
            fil[3]=pre.getPer().getDni();
            fil[4]=pre.getPer().getDireccion();
            fil[5]=pre.getPed().getFecha();
            fil[6]=pre.getPed().getEstado();
            fil[7]=pre.getPed().getTotal();
            return fil;
        }
        return null;
    }

    @Override
    public String negarPedido(int IdPed) {
        Pedido ped=new Pedido(IdPed);
        String msg = peDao.NegarPedido(ped);
        return msg;
    }

    @Override
    public List listarDetalle(int IdPed) {
        Pedido ped=new Pedido(IdPed);
        return peDao.listarDetalle(ped);
    }

    @Override
    public List listarPedido(int estado) {
        Pedido ped=new Pedido(estado, estado);
        return peDao.listarPedido(ped);
    }
}
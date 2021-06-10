
package servicio;

import negocio.Pedido;
import negocio.Persona;
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
    public String actualizar(int IdPerCli, int estado) {
         Pedido Pe = new Pedido(IdPerCli, estado);
        String msg = peDao.actualizar(Pe);
        return msg;
    }

    @Override
    public Object[] buscar(int IdPerCli) {
        Pedido pe=peDao.buscarId(IdPerCli);
        if(pe!=null){
            Object[]fil=new Object[5];
            fil[0]=pe.getIdPedido();
            fil[1]=pe.getIdPerCli();
            fil[2]=pe.getFecha();
            fil[3]=pe.getEstado();
            fil[4]=pe.getTotal();
            return fil;
        }
        return null;
    }
    
}

package persistencia;

import negocio.Pedido;

public class pedidoDaoImp implements pedidoDao{

    @Override
    public String grabar(Pedido pe) {
        
    String sql="insert into pedido values(Null," + pe.getIdPerCli() + ",'" + pe.getFecha()+ "',Null'" + pe.getTotal() + ")";
        return operacion.ejecutar(sql);
    }

    @Override
    public String actualizar(Pedido pe) {
        String sql="update pedido set estado="+pe.getEstado()+" where IdPer="+pe.getIdPedido()+"";
        return operacion.ejecutar(sql);
    }

    @Override
    public Pedido buscarId(int IdPedido) {
        String sql = "select * from pedido where Dni=" + IdPedido + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Pedido pe = new Pedido();
            pe.setIdPedido((int) fill[0]);
            pe.setIdPerCli((int) fill[1]);
            pe.setFecha(fill[2].toString());
            pe.setEstado((int)fill[3]);
            pe.setTotal((double)fill[4]);
            return pe;
        }
        return null;
    }
    
   
}

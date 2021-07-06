
package persistencia;

import negocio.Devolucion;

public class DevolucionDaoImp implements DevolucionDao{

    @Override
    public String grabarCliente(Devolucion dev) {
        String sql = "call GrabarCLiente('" + dev.getCod() + "','"+ dev.getTotal()+"','"+ dev.getFecha()+"')";
        return Operacion.ejecutar(sql);
    }
    
}

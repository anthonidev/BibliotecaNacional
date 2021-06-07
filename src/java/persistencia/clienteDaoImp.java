
package persistencia;

import negocio.cliente;


public class clienteDaoImp implements clienteDao{

    @Override
    public String grabar(cliente cli) {
        String sql = "insert into cliente values(" + cli.getIdPerCli() + "," + cli.getIdCuenta()+ ")";
        return operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdPerCli) {
        String sql= "delete from cliente where IdPerCli="+IdPerCli+"";
        return operacion.ejecutar(sql);
    }
    
}


package servicio;

import negocio.cliente;
import persistencia.*;

public class clienteServicioImp implements clienteServicio{
    
    private clienteDao cliDao;

    public clienteServicioImp() {
        cliDao =new clienteDaoImp();
    }
    
    
    @Override
    public String grabar(int IdPerCli, int IdCuenta) {
        cliente cli=new cliente(IdPerCli,IdCuenta);
        String msg=cliDao.grabar(cli);
        return msg;
    }

    @Override
    public String eliminar(int IdPerCli) {
        return cliDao.eliminar(IdPerCli);
    }
    
}

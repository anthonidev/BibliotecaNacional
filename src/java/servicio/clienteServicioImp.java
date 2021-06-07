
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

    @Override
    public Object[] buscar(int idPerCli) {
        cliente cu=cliDao.buscar(idPerCli);
        if(cu!=null){
            Object[]fil=new Object[2];
            fil[0]=cu.getIdPerCli();
            fil[1]=cu.getIdCuenta();
            return fil;
        }
        return null;
    }
    
}

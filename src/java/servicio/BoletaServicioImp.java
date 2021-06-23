package servicio;

import negocio.Boleta;
import persistencia.BoletaDao;
import persistencia.BoletaDaoImp;

public class BoletaServicioImp implements BoletaServicio {
    private BoletaDao boleDao;

    public BoletaServicioImp() {
        boleDao = new BoletaDaoImp();
    }
    
    @Override
    public String grabar(int codPed, int codEmp, String fechPed, String fechDev, double total) {
        Boleta bole=new Boleta(codPed, codEmp, fechPed, fechDev, total);
        String msg=boleDao.grabar(bole);
        
        if (msg==null) {
            msg="Boleta Generada";
        } return msg;
    }
}

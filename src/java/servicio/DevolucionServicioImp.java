package servicio;

import negocio.Devolucion;
import persistencia.DevolucionDao;
import persistencia.DevolucionDaoImp;

public class DevolucionServicioImp implements DevolucionServicio {
    
    private DevolucionDao devDao;
    
    public DevolucionServicioImp() {
        devDao = new DevolucionDaoImp();
    }
    
    
    
    
    @Override
    public double CalcularDevolucion(String libros, String dias) {
        int lib,dia;
        lib = Integer.parseInt(libros);
        dia = Integer.parseInt(dias);
        return (dia*5)+(lib*20);
    }

    @Override
    public String RegistrarDevolucion(String cod, String fecha, String total) {
        
        Devolucion dev = new Devolucion(Integer.parseInt(cod), fecha, Double.parseDouble(total));
        
        String msg = devDao.grabarCliente(dev);
        
        if (msg==null) {
            msg="Devolucion Concretada con exito";
        } return msg;
    }
}
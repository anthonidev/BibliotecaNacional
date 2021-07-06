package servicio;

import java.util.List;
import negocio.Boleta;
import negocio.Presentador;
import persistencia.BoletaDao;
import persistencia.BoletaDaoImp;

public class BoletaServicioImp implements BoletaServicio {

    private BoletaDao boleDao;

    public BoletaServicioImp() {
        boleDao = new BoletaDaoImp();
    }

    @Override
    public String grabar(int codPed, int codEmp, String fechPed, String fechDev, double total) {
        Boleta bole = new Boleta(codPed, codEmp, fechPed, fechDev, total);
        String msg = boleDao.grabar(bole);

        if (msg == null) {
            msg = "Boleta Generada";
        }
        return msg;
    }

    @Override
    public List listar() {
        return boleDao.listar();
    }

    @Override
    public Object[] buscarBoleta(int cod) {
        Boleta bole = new Boleta(cod);
        Presentador pre = boleDao.buscar(bole);
        if (pre != null) {
            Object[] fil = new Object[8];
            fil[0] = pre.getBole().getIdBoleta();
            fil[1] = pre.getPer().getNombre();
            fil[2] = pre.getPer().getApellidos();
            fil[3] = pre.getPer().getDni();
            fil[4] = pre.getPer().getDireccion();
            fil[5] = pre.getBole().getFecha();
            fil[6] = pre.getBole().getFechaDev();
            fil[7] = pre.getBole().getIdPedido();
            return fil;
        }
        return null;
    }
}

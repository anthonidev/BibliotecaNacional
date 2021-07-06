package persistencia;

import java.util.List;
import negocio.Boleta;
import negocio.Persona;
import negocio.Presentador;

public class BoletaDaoImp implements BoletaDao {

    @Override
    public String grabar(Boleta bole) {
        String sql = "call SP_GRABARBOLETA("+bole.getIdPedido()+","+bole.getIdPerEmp()+",'"+bole.getFecha()+"','"+bole.getFechaDev()+"',"+bole.getTotal()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Presentador buscar(Boleta bole) {
        String sql = "call BuscarBoleta("+bole.getIdBoleta()+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Persona per=new Persona();
            bole.setIdBoleta((int) fill[0]);
            per.setNombre((String) fill[1]);
            per.setApellidos((String) fill[2]);
            per.setDni((String) fill[3]);
            per.setDireccion((String) fill[4]);
            bole.setFecha(fill[5].toString());
            bole.setFechaDev(fill[6].toString());
            bole.setIdPedido((int)fill[7]);
            Presentador pre=new Presentador(per, bole);
            return pre;
        }
        return null;
    }

    @Override
    public List listar() {
        String sql = "call SP_LISTARBOLETA()";
        List lis=Operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }
}

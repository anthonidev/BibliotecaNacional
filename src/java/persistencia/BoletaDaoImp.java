package persistencia;

import java.util.List;
import negocio.Boleta;

public class BoletaDaoImp implements BoletaDao {

    @Override
    public String grabar(Boleta bole) {
        String sql = "call SP_GRABARBOLETA("+bole.getIdPedido()+","+bole.getIdPerEmp()+",'"+bole.getFecha()+"','"+bole.getFechaDev()+"',"+bole.getTotal()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Boleta buscar(Boleta bole) {
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

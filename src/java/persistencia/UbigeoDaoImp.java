package persistencia;

import java.util.List;
import negocio.Ubigeo;

public class UbigeoDaoImp implements UbigeoDao {

    @Override
    public List listarDep() {
        String sql = "call SP_LISTARDEP()";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarPro(Ubigeo ubi) {
        String sql = "call SP_LISTARPRO('"+ubi.getNameDep()+"')";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDis(Ubigeo ubi) {
        String sql = "call SP_LISTARDIS('"+ubi.getNameDep()+"','"+ubi.getNamePro()+"')";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }
}
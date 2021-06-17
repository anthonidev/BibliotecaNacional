
package persistencia;

import java.util.List;

public class TipoDaoImp implements TipoDao{

    @Override
    public List listar() {
        String sql = "call SP_LISTARTIPOEMP()";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }
}

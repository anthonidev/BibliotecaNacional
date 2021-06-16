package persistencia;

import java.util.List;

public class UbigeoDaoImp implements UbigeoDao {

    @Override
    public List listarDep() {
        String sql = "SELECT name FROM ubigeo_peru_departments";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarPro(String Dep) {
        String sql = "SELECT NAME FROM UBIGEO_PERU_PROVINCES WHERE DEPARTMENT_ID=(SELECT ID FROM UBIGEO_PERU_DEPARTMENTS WHERE NAME='"+Dep+"')";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }

    @Override
    public List listarDis(String Dep, String Pro) {
        String sql = "SELECT NAME FROM UBIGEO_PERU_DISTRICTS WHERE DEPARTMENT_ID=(SELECT ID FROM UBIGEO_PERU_DEPARTMENTS WHERE NAME='"+Dep+"') AND PROVINCE_ID=(SELECT ID FROM UBIGEO_PERU_PROVINCES WHERE NAME='"+Pro+"')";
        List lis = Operacion.listar(sql);
        if (lis != null) {
            return lis;
        }
        return null;
    }
}
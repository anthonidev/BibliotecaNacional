package persistencia;

import java.util.List;
import negocio.Persona;

public class personaDaoImp implements personaDao {

    @Override
    public String grabar(Persona Per) {
        String sql = "insert into persona values(Null,'" + Per.getNombre() + "','" + Per.getApellidos() + "','" + Per.getDni() + "','" + Per.getDireccion() + "','" + Per.getTelefono() + "','" + Per.getFechaNa() + "','" + Per.getIdDist() + "','" + Per.getIdPro() + "','" + Per.getIdDep() + "')";
        return operacion.ejecutar(sql);
    }

    @Override
    public Persona buscar(String Dni) {
        String sql = "select * from persona where Dni='" + Dni + "'";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            per.setApellidos(fill[2].toString());
            per.setDni(fill[3].toString());
            per.setDireccion(fill[4].toString());
            per.setTelefono(fill[5].toString());
            per.setFechaNa(fill[6].toString());
            per.setIdDist(fill[7].toString());
            per.setIdPro(fill[8].toString());
            per.setIdDep(fill[9].toString());
            return per;
        }
        return null;
    }

    @Override
    public String actualizar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(int IdPer) {
         String sql = "delete from persona where IdPer=" + IdPer + "";
         return operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from persona";
        List lis=operacion.listar(sql);
        if(lis!=null){
            return lis;
        }
        return null;
    }

    @Override
    public int lastId() {
       String sql="SELECT MAX(IdPer) AS id FROM persona";
        String idPer=operacion.ejecutar(sql);
        return Integer.parseInt(idPer);
    }

    @Override
    public Persona buscarId(int IdPer) {
        String sql = "select * from persona where IdPer=" + IdPer + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Persona per = new Persona();
            per.setCodPer((int) fill[0]);
            per.setNombre(fill[1].toString());
            per.setApellidos(fill[2].toString());
            per.setDni(fill[3].toString());
            per.setDireccion(fill[4].toString());
            per.setTelefono(fill[5].toString());
            per.setFechaNa(fill[6].toString());
            per.setIdDist(fill[7].toString());
            per.setIdPro(fill[8].toString());
            per.setIdDep(fill[9].toString());
            return per;
        }
        return null;
    }

}

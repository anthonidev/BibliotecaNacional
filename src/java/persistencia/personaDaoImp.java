package persistencia;

import java.util.List;
import negocio.Persona;
import negocio.Presentador;

public class personaDaoImp implements personaDao {

    @Override
    public String grabar(Presentador pre) {
        String sql = "insert into persona values(null,'"+pre.getPer().getNombre()+"','"+pre.getPer().getApellidos()+"','"+pre.getPer().getDni()+"','"+pre.getPer().getDireccion()+"'," +
                    "'"+pre.getPer().getTelefono()+"','"+pre.getPer().getFechaNa()+"','"+pre.getPer().getIdDist()+"','"+pre.getPer().getIdPro()+"','"+pre.getPer().getIdDep()+"');\n" +
                    "insert into cuenta values(Null,'"+pre.getCu().getUser()+"','"+pre.getCu().getPass()+"');";
        return operacion.ejecutar(sql);
    }
    
    @Override
    public String grabarasas(Persona Per) {
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
    public String actualizar(Persona Per) {
        String sql="update persona set Nombre='"+Per.getNombre()+"',Apellidos='"+Per.getApellidos()+"',Direccion='"+Per.getDireccion()+"',Telefono='"+Per.getTelefono()+"',FechaNa='"+Per.getFechaNa()+"',IdDist='"+Per.getIdDist()+"',IdPro='"+Per.getIdPro()+"',IdDep='"+Per.getIdDep()+"' where IdPer="+Per.getCodPer()+"";
        return operacion.ejecutar(sql);
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
        if (lis!=null)
            return lis;
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

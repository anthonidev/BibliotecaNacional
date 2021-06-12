package persistencia;

import java.util.List;
import negocio.Libro;

public class libroDaoImp implements libroDao {

    @Override
    public String grabar(Libro lib) {
        String sql = "insert into libro values(Null,'" + lib.getNombre() + "'," + lib.getIdCat()+ ",'" + lib.getDescripcion()+ "'," + lib.getStock()+ ",Null," + lib.getPrecio()+ ",'" + lib.getFoto()+ "')";
        return operacion.ejecutar(sql);
    }

    @Override
    public Libro buscarId(int IdLibro) {
        String sql = "select * from libro where IdLibro=" + IdLibro + "";
        Object[] fill = operacion.buscar(sql);
        if (fill != null) {
            Libro lib = new Libro();
            lib.setIdLibro((int) fill[0]);
            lib.setNombre(fill[1].toString());
            lib.setIdCat((int) fill[2]);
            lib.setDescripcion(fill[3].toString());
            lib.setStock((int) fill[4]);
            lib.setEstado((int) fill[5]);
            lib.setPrecio((double) fill[6]);
            lib.setFoto(fill[7].toString());
            return lib;
        }
        return null;
    }

    @Override
    public String actualizar(Libro lib) {
        String sql="update libro set NomLibro='"+lib.getNombre()+"',IdCat="+lib.getIdCat()+",Descripcion='"+lib.getDescripcion()+"',Stock="+lib.getStock()+",Precio="+lib.getPrecio()+",Foto='"+lib.getFoto()+"' where IdLibro="+lib.getIdLibro()+"";
        return operacion.ejecutar(sql);
    }

    @Override
    public String actualizarFoto(Libro lib) {
        String sql="update libro set foto='"+lib.getFoto()+"' where IdLibro="+lib.getIdLibro()+"";
        return operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdLibro) {
        String sql = "delete from libro where IdLibro=" + IdLibro + "";
        return operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from libro";
        List lis=operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public int lastId() {
        String sql="SELECT MAX(IdLibro) AS id FROM libro";
        String IdLibro=operacion.ejecutar(sql);
        return Integer.parseInt(IdLibro);
    }
}
<<<<<<< HEAD
package persistencia;

import java.util.List;
import negocio.Libro;

public class LibroDaoImp implements LibroDao {

    @Override
    public String grabar(Libro lib) {
        String sql = "insert into libro values(Null,'" + lib.getNombre() + "'," + lib.getIdCat()+ ",'" + lib.getDescripcion()+ "'," + lib.getStock()+ ",Null," + lib.getPrecio()+ ",'" + lib.getFoto()+ "')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public Libro buscarId(int IdLibro) {
        String sql = "select * from libro where IdLibro=" + IdLibro + "";
        Object[] fill = Operacion.buscar(sql);
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
        return Operacion.ejecutar(sql);
    }

    @Override
    public String actualizarFoto(Libro lib) {
        String sql="update libro set foto='"+lib.getFoto()+"' where IdLibro="+lib.getIdLibro()+"";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int IdLibro) {
        String sql = "delete from libro where IdLibro=" + IdLibro + "";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listar() {
        String sql = "select * from libro";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public int lastId() {
        String sql="SELECT MAX(IdLibro) AS id FROM libro";
        String IdLibro=Operacion.ejecutar(sql);
        return Integer.parseInt(IdLibro);
    }
=======
package persistencia;

import java.util.List;
import negocio.Libro;

public class LibroDaoImp implements LibroDao {

    @Override
    public Libro buscar(int idLibro) {
        String sql = "call SP_BUSCARLIBRO("+idLibro+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            Libro lib = new Libro();
            lib.setIdLibro((int) fill[0]);
            lib.setNombre(fill[1].toString());
            lib.setCategoria(fill[2].toString());
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
    public String grabar(Libro lib) {
        String sql = "call SP_GRABARLIBRO('"+lib.getNombre()+"','"+lib.getCategoria()+"','"+lib.getDescripcion()+"',"+lib.getStock()+","+lib.getPrecio()+",'"+lib.getFoto()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String actualizar(Libro lib) {
        System.out.println(lib.getPrecio());
        String sql="call SP_ACTUALIZARLIBRO("+lib.getIdLibro()+","+lib.getStock()+","+lib.getPrecio()+",'"+lib.getDescripcion()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String actualizarEstado(int idLibro, int estado) {
        String sql="call SP_ACTUALIZARESTADO("+idLibro+","+estado+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(int idLibro) {
        String sql = "call SP_ELIMINARLIBRO("+idLibro+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public List listarCategoria() {
        String sql = "call SP_LISTARCATEGORIA()";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }

    @Override
    public List listar() {
        String sql = "call SP_LISTARLIBROS()";
        List lis=Operacion.listar(sql);
        if (lis!=null)
            return lis;
        return null;
    }
>>>>>>> main
}
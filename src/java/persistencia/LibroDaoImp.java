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
}
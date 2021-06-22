package persistencia;

import java.util.List;
import negocio.Libro;

public class LibroDaoImp implements LibroDao {

    @Override
    public Libro buscar(Libro lib) {
        String sql = "call SP_BUSCARLIBRO("+lib.getIdLibro()+")";
        Object[] fill = Operacion.buscar(sql);
        if (fill != null) {
            lib.setIdLibro((int) fill[0]);
            lib.setNombre(fill[1].toString());
            lib.setCategoria(fill[2].toString());
            lib.setDescripcion(fill[3].toString());
            lib.setStock((int) fill[4]);
            lib.setEstado((int) fill[5]);
            lib.setPrecio((double) fill[6]);
            lib.setFoto((byte[]) fill[7]);
            return lib;
        }
        return null;
    }
    
    @Override
    public String grabar(Libro lib) {
        String sql = "call SP_GRABARLIBRO(?,?,?,?,?,?)";
        return Operacion.grabarImagen(sql, lib);
    }

    @Override
    public String actualizar(Libro lib) {

        String sql="call SP_ACTUALIZARLIBRO("+lib.getIdLibro()+","+lib.getStock()+","+lib.getPrecio()+",'"+lib.getDescripcion()+"')";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String actualizarEstado(Libro lib) {
        String sql="call SP_ACTUALIZARESTADO("+lib.getIdLibro()+","+lib.getEstado()+")";
        return Operacion.ejecutar(sql);
    }

    @Override
    public String eliminar(Libro lib) {
        String sql = "call SP_ELIMINARLIBRO("+lib.getIdLibro()+")";
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
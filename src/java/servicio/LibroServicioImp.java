package servicio;

import java.util.List;
import negocio.Libro;
import persistencia.LibroDaoImp;
import persistencia.LibroDao;

public class LibroServicioImp implements LibroServicio {
    private LibroDao libDao;

    public LibroServicioImp() {
        libDao = new LibroDaoImp();
    }
    
    @Override
    public String grabar(String nombre, String categoria, String descripcion, int stock, double precio, String foto) {
        Libro lib = new Libro(stock, nombre, categoria, descripcion, foto, precio);
        String msg = libDao.grabar(lib);
        if (msg==null)
            msg="Libro Grabado";
        return msg;
    }

    @Override
    public Object[] buscar(int idLibro) {
        Libro lib=libDao.buscar(idLibro);
        if(lib!=null){
            Object[]fil=new Object[8];
            fil[0]=lib.getIdLibro();
            fil[1]=lib.getNombre();
            fil[2]=lib.getCategoria();
            fil[3]=lib.getDescripcion();
            fil[4]=lib.getStock();
            fil[5]=lib.getEstado();
            fil[6]="S/ "+lib.getPrecio();
            fil[7]=lib.getFoto();
            return fil;
        }
        return null;
    }

    @Override
    public String actualizar(int idLibro, int stock, double precio, String descripcion) {
        Libro lib = new Libro(idLibro, stock, descripcion, precio);
        String msg = libDao.actualizar(lib);
        if (msg==null)
            msg="Libro Actualizado";
        return msg;
    }

    @Override
    public String actualizarEstado(int idLibro, int estado) {
        return null;
    }

    @Override
    public String eliminar(int idLibro) {
        String msg=libDao.eliminar(idLibro);
        if (msg==null)
            msg="Libro Eliminado";
        return msg;
    }

    @Override
    public List listarCategoria() {
        return libDao.listarCategoria();
    }

    @Override
    public List listar() {
        return libDao.listar();
    }
}

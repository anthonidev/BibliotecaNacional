<<<<<<< HEAD
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
    public String grabar(String Nombre, int IdCat, String Descripcion, int Stock, double Precio, String Foto) {
        Libro lib = new Libro(IdCat, Stock, Nombre, Descripcion, Foto, Precio);
        String msg = libDao.grabar(lib);
        if (msg==null)
            msg="Libro Grabado";
        return msg;
    }

    @Override
    public Object[] buscarId(int IdLibro) {
        Libro lib=libDao.buscarId(IdLibro);
        if(lib!=null){
            Object[]fil=new Object[8];
            fil[0]=lib.getIdLibro();
            fil[1]=lib.getNombre();
            fil[2]=lib.getIdCat();
            fil[3]=lib.getDescripcion();
            fil[4]=lib.getStock();
            fil[5]=lib.getEstado();
            fil[6]=lib.getPrecio();
            fil[7]=lib.getFoto();
            return fil;
        }
        return null;
    }

    @Override
    public String actualizar(int IdLibro, String Nombre, int IdCat, String Descripcion, int Stock, double Precio) {
        Libro lib = new Libro(IdLibro, IdCat, Stock, Nombre, Descripcion, null, Precio);
        String msg = libDao.actualizar(lib);
        if (msg==null)
            msg="Libro Actualizado";
        return msg;
    }

    @Override
    public String actualizarFoto(String Foto) {
        Libro lib = new Libro(0, 0, null, null, Foto, 0);
        return libDao.actualizar(lib);
    }

    @Override
    public String actualizarEstado(int IdLibro, int Estado) {
        return null;
    }

    @Override
    public String eliminar(int IdLibro) {
        String msg=libDao.eliminar(IdLibro);
        if (msg==null)
            msg="Libro Eliminado";
        return msg;
    }

    @Override
    public List listar() {
        return libDao.listar();
    }

    @Override
    public int lastId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
=======
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
            fil[6]=lib.getPrecio();
            fil[7]="../../img/libros/"+lib.getFoto();
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
        String msg = libDao.actualizarEstado(idLibro, estado);
        if (msg==null)
            msg="Estado Actualizado";
        return msg;
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
>>>>>>> main

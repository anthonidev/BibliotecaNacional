package servicio;

import java.io.InputStream;
import java.util.List;
import javax.xml.bind.DatatypeConverter;
import negocio.Libro;
import persistencia.LibroDaoImp;
import persistencia.LibroDao;

public class LibroServicioImp implements LibroServicio {
    private LibroDao libDao;

    public LibroServicioImp() {
        libDao = new LibroDaoImp();
    }
    
    @Override
    public String grabar(String nombre, int idCategoria, String descripcion, int stock, double precio, InputStream portada) {
        Libro lib = new Libro(stock, nombre, idCategoria, descripcion, portada, precio);

        String msg = libDao.grabar(lib);
        if (msg==null)
            msg="Libro Grabado";
        return msg;
    }

    @Override
    public Object[] buscar(int idLibro) {
        Libro libro=new Libro(idLibro);
        Libro lib=libDao.buscar(libro);
        if(lib!=null){
            Object[]fil=new Object[8];
            fil[0]=lib.getIdLibro();
            fil[1]=lib.getNombre();
            fil[2]=lib.getCategoria();
            fil[3]=lib.getDescripcion();
            fil[4]=lib.getStock();
            fil[5]=lib.getEstado();
            fil[6]=lib.getPrecio();

            String data = DatatypeConverter.printBase64Binary(lib.getFoto());
            String src = "data:image/png;base64," + data;
            fil[7] = src;
            

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
        Libro lib=new Libro(idLibro, estado);
        String msg = libDao.actualizarEstado(lib);
        if (msg==null)
            msg="Estado Actualizado";
        return msg;
    }

    @Override
    public String eliminar(int idLibro) {
        Libro lib=new Libro(idLibro);
        String msg=libDao.eliminar(lib);
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

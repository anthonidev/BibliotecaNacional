package servicio;

import java.util.List;

public interface BoletaServicio {
    public String grabar(int codPed, int codEmp, String fechPed, String fechDev, double total);
    public List listar();
}

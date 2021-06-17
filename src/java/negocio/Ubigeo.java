package negocio;

public class Ubigeo {
    private String nameDep,namePro,nameDis;

    public Ubigeo() {
    }

    public Ubigeo(String nameDep, String namePro) {
        this.nameDep = nameDep;
        this.namePro = namePro;
    }

    public Ubigeo(String nameDep) {
        this.nameDep = nameDep;
    }

    public String getNameDep() {
        return nameDep;
    }

    public void setNameDep(String nameDep) {
        this.nameDep = nameDep;
    }

    public String getNamePro() {
        return namePro;
    }

    public void setNamePro(String namePro) {
        this.namePro = namePro;
    }

    public String getNameDis() {
        return nameDis;
    }

    public void setNameDis(String nameDis) {
        this.nameDis = nameDis;
    }
}
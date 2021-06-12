package negocio;

public class Ubigeo {
    private String id,name,district_id,province_id,department_id;

    public Ubigeo() {
    }

    public Ubigeo(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Ubigeo(String district_id, String province_id, String department_id) {
        this.district_id = district_id;
        this.province_id = province_id;
        this.department_id = department_id;
    }

    public Ubigeo(String id, String name, String province_id, String department_id) {
        this.id = id;
        this.name = name;
        this.province_id = province_id;
        this.department_id = department_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDistrict_id() {
        return district_id;
    }

    public void setDistrict_id(String district_id) {
        this.district_id = district_id;
    }

    public String getProvince_id() {
        return province_id;
    }

    public void setProvince_id(String province_id) {
        this.province_id = province_id;
    }

    public String getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(String department_id) {
        this.department_id = department_id;
    }
}

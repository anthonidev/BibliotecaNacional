package negocio;

public class ubigeo {
    String id,name,province_id,department_id;

    public ubigeo(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public ubigeo(String id, String name, String province_id) {
        this.id = id;
        this.name = name;
        this.province_id = province_id;
    }

    public ubigeo() {
    }

    public ubigeo(String id, String name, String province_id, String department_id) {
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

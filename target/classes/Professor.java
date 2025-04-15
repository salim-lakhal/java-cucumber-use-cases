package classes;

public class Professor {
    private String name;
    private String department;
    private String role;
    private boolean logged;
    private String course;
    public Professor(String name, String department, String role, boolean logged, String course) {
        this.name = name;
        this.department = department;
        this.role = role;
        this.logged = logged;
        this.course = course;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean isLogged() {
        return logged;
    }

    public void setLogged(boolean logged) {
        this.logged = logged;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }
}

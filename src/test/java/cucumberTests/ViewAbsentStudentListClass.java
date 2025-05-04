package cucumberTests;

import java.util.HashMap;

public class ViewAbsentStudentListClass {

    private HashMap<String, Boolean> students;
    private String role;
    private String course;
    private boolean logged;

    public ViewAbsentStudentListClass(HashMap<String, Boolean> students, String role, String course, boolean logged) {
        this.students = students;
        this.role = role;
        this.course = course;
        this.logged = logged;
    }

    public HashMap<String, Boolean> getStudents() {
        return students;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public void setLogged(boolean logged) {
        this.logged = logged;
    }
}

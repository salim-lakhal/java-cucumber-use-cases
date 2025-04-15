package classes;
import java.util.List;

public class Course {
    
}
public class Course {
    private String id;
    private List<Student> students;

    public Course(String id, List<Student> students) {
        this.id = id;
        this.students = students;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
}
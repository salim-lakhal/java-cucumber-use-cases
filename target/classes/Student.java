public class Student {
    private boolean present;
    private String name;
    public Student(boolean present, String name) {
        this.present = present;
        this.name = name;
    }

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

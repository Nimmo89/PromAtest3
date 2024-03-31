public class WorkingAnimal extends Animal {
    // Дополнительные поля для рабочих животных
    private int loadCapacity;

    // Конструктор
    public WorkingAnimal(String name, String command, String birthDate, int loadCapacity) {
        super(name, command, birthDate);
        this.loadCapacity = loadCapacity;
    }

    // Геттер и сеттер для поля loadCapacity
    public int getLoadCapacity() {
        return loadCapacity;
    }

    public void setLoadCapacity(int loadCapacity) {
        this.loadCapacity = loadCapacity;
    }
}
public class DomesticAnimal extends Animal {
    // Дополнительные поля для домашних животных
    private String breed;

    // Конструктор
    public DomesticAnimal(String name, String command, String birthDate, String breed) {
        super(name, birthDate);
        this.breed = breed;
    }

    // Метод для определения класса животного
    public String getAnimalClass() {
        return "Домашнее животное";
    }

    // Метод для добавления новой команды
    public void teachCommand(String command) {
        addCommand(command);
    }

    // Геттер и сеттер для поля breed
    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }
}
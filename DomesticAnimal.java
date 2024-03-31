public class DomesticAnimal extends Animal {
    // Дополнительные поля для домашних животных
    private String breed;

    // Конструктор
    public DomesticAnimal(String name, String command, String birthDate, String breed) {
        super(name, command, birthDate);
        this.breed = breed;
    }

    // Геттер и сеттер для поля breed
    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }
}
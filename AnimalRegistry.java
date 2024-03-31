import java.util.ArrayList;

public class AnimalRegistry {
    private ArrayList<Animal> animals;

    // Конструктор
    public AnimalRegistry() {
        this.animals = new ArrayList<>();
    }

    // Метод для добавления нового животного
    public void addAnimal(Animal animal) {
        animals.add(animal);
    }

    // Метод для вывода списка всех животных
    public void listAllAnimals() {
        System.out.println("Список всех зарегистрированных животных:");
        for (Animal animal : animals) {
            System.out.println(animal.getAnimalClass() + ": " + animal.getName());
        }
    }

    // Метод для вывода списка команд для конкретного животного
    public void listCommands(String animalName) {
        for (Animal animal : animals) {
            if (animal.getName().equals(animalName)) {
                animal.listCommands();
                return;
            }
        }
        System.out.println("Животное с таким именем не найдено.");
    }

    // Метод для обучения животного новой команде
    public void teachCommand(String animalName, String command) {
        for (Animal animal : animals) {
            if (animal.getName().equals(animalName)) {
                animal.addCommand(command);
                System.out.println("Команда успешно добавлена для " + animal.getName());
                return;
            }
        }
        System.out.println("Животное с таким именем не найдено.");
    }
}
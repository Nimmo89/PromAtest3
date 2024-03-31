import java.util.ArrayList;
public class Animal {
    private String name;
    private ArrayList<String> commands;
    private String birthDate;

    // Конструктор
    public Animal(String name, String birthDate) {
        this.name = name;
        this.commands = new ArrayList<>();
        this.birthDate = birthDate;
    }

    // Метод для добавления команды
    public void addCommand(String command) {
        commands.add(command);
    }

    // Геттеры и сеттеры для полей
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // Метод для вывода списка команд
    public void listCommands() {
        System.out.println("Список команд для " + name + ":");
        for (String command : commands) {
            System.out.println(command);
        }
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }
}
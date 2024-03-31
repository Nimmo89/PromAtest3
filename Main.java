import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        AnimalRegistry registry = new AnimalRegistry();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\nМеню:");
            System.out.println("1. Завести новое животное");
            System.out.println("2. Показать список всех животных");
            System.out.println("3. Показать список команд для животного");
            System.out.println("4. Обучить животное новой команде");
            System.out.println("5. Выйти");

            System.out.print("\nВведите номер выбранного пункта: ");
            int choice = scanner.nextInt();
            scanner.nextLine();  // Чтение символа новой строки после числа

            switch (choice) {
                case 1:
                    System.out.print("Введите имя нового животного: ");
                    String name = scanner.nextLine();
                    System.out.print("Введите породу/вид нового животного: ");
                    String breed = scanner.nextLine();
                    registry.addAnimal(new DomesticAnimal(name, breed, name, name));
                    System.out.println("Животное успешно зарегистрировано.");
                    try (Counter counter = new Counter()) {
                        // Действия, при которых увеличивается значение счетчика
                        counter.add();
                    } catch (Exception e) {
                        System.out.println("Произошла ошибка: " + e.getMessage());
                    }
                    break;
                case 2:
                    registry.listAllAnimals();
                    break;
                case 3:
                    System.out.print("Введите имя животного: ");
                    String animalName = scanner.nextLine();
                    registry.listCommands(animalName);
                    break;
                case 4:
                    System.out.print("Введите имя животного: ");
                    String animalName2 = scanner.nextLine();
                    System.out.print("Введите новую команду: ");
                    String newCommand = scanner.nextLine();
                    registry.teachCommand(animalName2, newCommand);
                    break;
                case 5:
                    System.out.println("Выход из программы.");
                    System.exit(0);
                default:
                    System.out.println("Некорректный ввод. Попробуйте снова.");
            }
        }
    }
}
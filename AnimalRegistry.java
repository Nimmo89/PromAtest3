import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AnimalRegistry {
    private static final String DB_URL = "jdbc:mysql://localhost/FriendsOfHumans";
    private static final String USER = "kpa";
    private static final String PASSWORD = "kpa11";

    // Метод для добавления животного в базу данных
    public void addAnimal(String animalType, String name, String command, String birthDate) {
        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASSWORD)) {
            String query = "INSERT INTO ";
            if (animalType.equals("Domestic"))
                query += "DomesticAnimals ";
            else if (animalType.equals("Working"))
                query += "WorkingAnimals ";
            else {
                System.out.println("Неизвестный тип животного.");
                return;
            }
            query += "(animal_type, name, command, birth_date) VALUES (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, animalType);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, command);
            preparedStatement.setString(4, birthDate);
            preparedStatement.executeUpdate();
            System.out.println("Животное добалено.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Другие методы для работы с реестром
}
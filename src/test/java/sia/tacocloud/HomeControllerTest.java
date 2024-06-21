package sia.tacocloud;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HomeControllerTest {
    @Test
    public void testHome() {
        // Arrange
        HomeController controller = new HomeController();

        // Act
        String viewName = controller.home();

        // Assert
        assertEquals("home", viewName);
    }
}
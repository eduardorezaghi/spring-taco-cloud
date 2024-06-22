# spring-taco-cloud

This is a simple Spring Boot application that demonstrates the use of Thymeleaf, Spring Data JPA, and Spring Security.
It is based on the Taco Cloud example from the book [Spring in Action, 6th Edition](https://www.manning.com/books/spring-in-action-sixth-edition) by Craig Walls.

---
## List project dependencies


```
./mvnw dependency:tree
```


---
## Running the application
To run the application, execute the following command:

```
./mvnw spring-boot:run
```

The application will be available at http://localhost:9096.

---
## Running the tests

To run the tests, execute the following command:

```
./mvnw test
```

---
## Building the application

To build the application, execute the following command:

```shell
./mvnw package
# or
./mvnw clean package
# or (no tests)
./mvnw clean package -DskipTests
```

package vn.iostar.graphql.resolver;

import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Component;
import vn.iostar.entity.*;
@Component
public class UserResolver {

    @QueryMapping
    public User getUserById(String id) {
        // Lấy thông tin người dùng từ database
        return new User(id, "John Doe", "john@example.com");
    }

    @QueryMapping
    public List<User> getAllUsers() {
        return Arrays.asList(
            new User("1", "John Doe", "john@example.com"),
            new User("2", "Jane Smith", "jane@example.com")
        );
    }

    @MutationMapping
    public User createUser(String name, String email) {
        // Logic để tạo mới người dùng
        return new User("3", name, email);
    }
}

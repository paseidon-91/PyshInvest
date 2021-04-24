package pysh.investing.appserver.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pysh.investing.appserver.model.User;

public interface UserDetailsRepository extends JpaRepository<User, String> {
}

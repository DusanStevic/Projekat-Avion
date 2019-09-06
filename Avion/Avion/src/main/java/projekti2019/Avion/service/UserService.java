package projekti2019.Avion.service;

import java.util.List;

import projekti2019.Avion.model.User;



public interface UserService {
    User findById(Long id);
    User findByUsername(String username);
    List<User> findAll ();
}

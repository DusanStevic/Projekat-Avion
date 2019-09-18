package projekti2019.Avion.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import projekti2019.Avion.model.User;
import projekti2019.Avion.repository.UserRepository;
import projekti2019.Avion.service.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public User findByUsername(String username) throws UsernameNotFoundException {
		User u = userRepository.findByUsername(username);
		return u;
	}
	@Override
	public User findById(Long id){
		User u = userRepository.getOne(id);
		return u;
	}
	
	

	public List<User> findAll() throws AccessDeniedException {
		List<User> result = userRepository.findAll();
		return result;
	}
}

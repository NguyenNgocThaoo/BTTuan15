package vn.iostar.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import vn.iostar.entity.Category;

public interface CategoryService {

	void deleteById(Integer id);

	long count();

	Optional<Category> findById(Integer id);

	List<Category> findAll();

	Page<Category> findAll(Pageable pageable);

	List<Category> findAll(Sort sort);

	<S extends Category> S save(S entity);

	Page<Category> findByCategorynameContaining(String name, Pageable pageable);

	Optional<Category> findByCategoryname(String name);

}

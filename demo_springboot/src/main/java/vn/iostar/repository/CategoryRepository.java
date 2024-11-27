package vn.iostar.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.iostar.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{
	Optional<Category> findByCategoryname (String name);
	Page <Category> findByCategorynameContaining (String name, Pageable pageable);
}

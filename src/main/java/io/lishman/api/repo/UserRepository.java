package io.lishman.api.repo;


import io.lishman.api.entity.User;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface UserRepository extends PagingAndSortingRepository<User, Long> {

    User findByEmail(@Param("email") String email);

}

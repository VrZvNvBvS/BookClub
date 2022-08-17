package com.nguyen.bookClub.repositories;

import com.nguyen.bookClub.models.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{


}

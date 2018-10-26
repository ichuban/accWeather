package pl.rafals.pogodynka.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.rafals.pogodynka.entity.WindEntity;
@Repository
public interface WindRepository extends CrudRepository<WindEntity, Long> {
}

package pl.rafals.pogodynka.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.rafals.pogodynka.entity.PressuresEntity;
@Repository
public interface PressuresRepository extends CrudRepository<PressuresEntity,Long> {
}

package pl.rafals.pogodynka.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import pl.rafals.pogodynka.entity.MoisturesEntity;
@Repository
public interface MoisturesRepository extends CrudRepository<MoisturesEntity,Long> {
}

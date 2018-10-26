package pl.rafals.pogodynka.dao;

import org.springframework.data.repository.CrudRepository;
import pl.rafals.pogodynka.entity.RegionsEntity;
//@Repository
public interface RegionsRepository extends CrudRepository<RegionsEntity,Long> {
}

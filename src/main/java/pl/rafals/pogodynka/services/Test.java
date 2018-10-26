package pl.rafals.pogodynka.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.rafals.pogodynka.dao.RegionsRepository;
import pl.rafals.pogodynka.entity.RegionsEntity;

@Service
public class Test implements TestI {

    private final
    RegionsRepository  regionsRepository;

    @Autowired
    public Test(RegionsRepository regionsRepository) {
        this.regionsRepository = regionsRepository;
    }

    public void saveTest(RegionsEntity regionsEntity){

     regionsRepository.save(regionsEntity);

    }

    public Iterable<RegionsEntity> getRegions(){

        return regionsRepository.findAll();
    }
}

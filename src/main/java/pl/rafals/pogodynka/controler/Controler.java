package pl.rafals.pogodynka.controler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.rafals.pogodynka.entity.RegionsEntity;
import pl.rafals.pogodynka.services.Test;

@RestController
@RequestMapping("/test")
public class Controler {
    private final
    Test test;

    @Autowired
    public Controler(Test test) {
        this.test = test;
    }

    @GetMapping("/save")
    public void getSaveTest() {
        RegionsEntity regionsEntity = new RegionsEntity();
        regionsEntity.setName("name");
        regionsEntity.setCordX("10");
        regionsEntity.setCordY("4");

        test.saveTest(regionsEntity);
    }

    @GetMapping("/get")
    public Iterable<RegionsEntity> getAll(){



        return test.getRegions();
    }
}

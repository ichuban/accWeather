package pl.rafals.pogodynka.services;

import pl.rafals.pogodynka.entity.RegionsEntity;

public interface TestI {
    public void saveTest(RegionsEntity regionsEntity);

    public Iterable<RegionsEntity> getRegions();
}

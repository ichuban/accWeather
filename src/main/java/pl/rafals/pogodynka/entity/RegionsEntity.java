package pl.rafals.pogodynka.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "regions",schema = "public",catalog = "accWeather")
public class RegionsEntity {
  public RegionsEntity() {
  }

  @GeneratedValue(strategy= GenerationType.IDENTITY)

  @Id
  private Long id;

  @Basic
  @Column(name = "cord_x")
  private String cordX;

  @Basic
  @Column(name = "cord_y")
  private String cordY;

  @Basic
  private String name;

  @JsonIgnore
  @OneToMany(mappedBy = "region")
  private List<MoisturesEntity> moisturesEntities;

  @JsonIgnore
  @OneToMany(mappedBy = "region")
  private List<PressuresEntity> a;

  @JsonIgnore
  @OneToMany(mappedBy = "region")
  private List<TemperaturesEntity> b;

  @JsonIgnore
  @OneToMany(mappedBy = "region")
  private List<WindEntity> c;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getCordX() {
    return cordX;
  }

  public void setCordX(String cordX) {
    this.cordX = cordX;
  }

  public String getCordY() {
    return cordY;
  }

  public void setCordY(String cordY) {
    this.cordY = cordY;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}

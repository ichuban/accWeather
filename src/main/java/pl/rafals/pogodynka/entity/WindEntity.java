package pl.rafals.pogodynka.entity;

import javax.persistence.*;

@Entity
@Table(name = "wind",schema = "public",catalog = "accWeather")
public class WindEntity {
  @Id
  private Long id;
  @Column(name = "create_time")
  @Basic
  private java.sql.Timestamp createTime;
  @Basic
  private String directions;
  @ManyToOne
  @JoinColumn(name = "region_id")
  private RegionsEntity region;
  @Basic
  private String source;

  public WindEntity() {
  }

  @Column(name = "wind_strength")

  private Long windStrength;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public java.sql.Timestamp getCreateTime() {
    return createTime;
  }

  public void setCreateTime(java.sql.Timestamp createTime) {
    this.createTime = createTime;
  }

  public String getDirections() {
    return directions;
  }

  public void setDirections(String directions) {
    this.directions = directions;
  }

  public RegionsEntity getRegion() {
    return region;
  }

  public void setRegion(RegionsEntity region) {
    this.region = region;
  }

  public String getSource() {
    return source;
  }

  public void setSource(String source) {
    this.source = source;
  }

  public Long getWindStrength() {
    return windStrength;
  }

  public void setWindStrength(Long windStrength) {
    this.windStrength = windStrength;
  }
}

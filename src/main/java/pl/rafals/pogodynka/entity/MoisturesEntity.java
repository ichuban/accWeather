package pl.rafals.pogodynka.entity;

import javax.persistence.*;

@Entity
@Table(name = "moistures", schema = "public", catalog = "accWeather")
public class MoisturesEntity {
    @Id
    private Long id;
    @Column(name = "create_time")
    @Basic
    private java.sql.Timestamp createTime;
    @Basic
    private Long value;
    @ManyToOne
    @JoinColumn(name = "region_id")
    private RegionsEntity region;
    @Basic
    private String source;

    public MoisturesEntity() {
    }

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

    public Long getValue() {
        return value;
    }

    public void setValue(Long value) {
        this.value = value;
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
}

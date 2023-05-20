package com.visitafrica.tongaclient.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rate_tb")
public class Rate {
    @Id
    private long id ;
    private long price_unit;
    private String starting_date;
    private String ending_date;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getPrice_unit() {
        return price_unit;
    }

    public void setPrice_unit(long price_unit) {
        this.price_unit = price_unit;
    }

    public String getStarting_date() {
        return starting_date;
    }

    public void setStarting_date(String starting_date) {
        this.starting_date = starting_date;
    }

    public String getEnding_date() {
        return ending_date;
    }

    public void setEnding_date(String ending_date) {
        this.ending_date = ending_date;
    }
}

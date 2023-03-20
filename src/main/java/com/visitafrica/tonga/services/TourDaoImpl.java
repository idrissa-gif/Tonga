package com.visitafrica.tonga.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import com.visitafrica.tonga.model.Tour;
import com.visitafrica.tonga.repo.TourDao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class TourDaoImpl implements TourDao {

    private JdbcTemplate jdbcTemp;

    public TourDaoImpl(DataSource dataSource) {
        jdbcTemp = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Tour> tourList() {
        List<Tour> list = jdbcTemp.query("SELECT * FROM tour_tb", new RowMapper<Tour>() {

            @Override
            public Tour mapRow(ResultSet rs, int rowNum) throws SQLException {
                Tour tour = new Tour();
                tour.setId(rs.getInt("tour_id"));
                tour.setTour_name(rs.getString("tour_name"));
                tour.setTour_operator(rs.getString("tour_operator"));
                tour.setCountries(rs.getString("countries"));
                tour.setPrices(rs.getString("prices"));
                tour.setNumber_person(String.valueOf(rs.getInt("number_person")));
                tour.setRate(rs.getInt("rate"));
                return tour;
            }

        });

        return list;
    }

}
package com.bra.modules.reserve.entity.form;


import com.bra.common.persistence.PayTypeEntity;
import com.bra.modules.reserve.entity.ReserveField;
import com.bra.modules.reserve.entity.ReserveProject;
import com.bra.modules.reserve.entity.ReserveVenue;

import java.util.Date;
import java.util.List;

/**

 * 场馆项目收入统计Entity
 *
 * @author jiangxingqi
 * @version 2015-12-29
 */
public class ReserveVenueProjectIntervalReport extends PayTypeEntity<ReserveVenueProjectIntervalReport> {

    private static final long serialVersionUID = 1L;

    private ReserveField reserveField;//场地

    private ReserveVenue reserveVenue;//场馆

    private ReserveProject reserveProject;//项目


    private List<ReserveVenueProjectFieldIntervalReport> fieldIntervalReports;//场地报表

    private Date startDate;//开始日期

    private Date endDate;//结束日期

    public List<ReserveVenueProjectFieldIntervalReport> getFieldIntervalReports() {
        return fieldIntervalReports;
    }

    public void setFieldIntervalReports(List<ReserveVenueProjectFieldIntervalReport> fieldIntervalReports) {
        this.fieldIntervalReports = fieldIntervalReports;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public ReserveField getReserveField() {
        return reserveField;
    }

    public void setReserveField(ReserveField reserveField) {
        this.reserveField = reserveField;
    }

    public ReserveVenue getReserveVenue() {
        return reserveVenue;
    }

    public void setReserveVenue(ReserveVenue reserveVenue) {
        this.reserveVenue = reserveVenue;
    }

    public ReserveProject getReserveProject() {
        return reserveProject;
    }

    public void setReserveProject(ReserveProject reserveProject) {
        this.reserveProject = reserveProject;
    }

}
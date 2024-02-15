package com.sap.hana.hibernate.tutorial.spatial;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.geolatte.geom.C2D;
import org.geolatte.geom.crs.CoordinateReferenceSystem;
import org.geolatte.geom.crs.CoordinateReferenceSystems;
import org.geolatte.geom.crs.Unit;

public class Helper {

  static final SimpleDateFormat DAY_DATE_FORMAT = new SimpleDateFormat("yyyyMMdd");
  static final SimpleDateFormat MONTH_DATE_FORMAT = new SimpleDateFormat("yyyyMM");
  // The default HANA coordinate reference system with ID 0
  static final CoordinateReferenceSystem<C2D> DEFAULT_CRS = CoordinateReferenceSystems.mkProjected(0, Unit.METER);

  public static Date parseDate(String s) {
    if (s == null || s.isEmpty()) {
      return null;
    }

    try {
      return DAY_DATE_FORMAT.parse(s);
    } catch (ParseException e) {
      return null;
    }
  }

  public static double parseDouble(String s) {
    if (s == null || s.isEmpty()) {
      return 0.d;
    }

    return Double.parseDouble(s);
  }

  public static int parseInt(String s) {
    if (s == null || s.isEmpty()) {
      return 0;
    }

    return Integer.parseInt(s);
  }

  public static SimpleDateFormat getDayDateFormat() {
    return Helper.DAY_DATE_FORMAT;
  }

  public static SimpleDateFormat getMonthDateFormat() {
    return Helper.MONTH_DATE_FORMAT;
  }
}

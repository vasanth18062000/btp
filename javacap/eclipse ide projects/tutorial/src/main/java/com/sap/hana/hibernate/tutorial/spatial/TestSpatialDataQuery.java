package com.sap.hana.hibernate.tutorial.spatial;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.geolatte.geom.Polygon;
import org.geolatte.geom.codec.Wkt;
import org.geolatte.geom.codec.WktDecoder;

public class TestSpatialDataQuery {

  // The GDELT file name
  private static final String FILE_NAME = "20171005.export.CSV";

  public static void main(String[] args) {
    try {
      // TestSpatialDataImport.main(args);
      EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Tutorial");
      EntityManager entityManager = entityManagerFactory.createEntityManager();

      Path csvFilePath = Paths.get(Thread.currentThread().getContextClassLoader().getResource(FILE_NAME).toURI());
      TestSpatialDataImport.parseAndStoreCSV(csvFilePath, entityManager);

      // Select all events within a region
      TypedQuery<Event> eventQuery = entityManager.createQuery("select e from Event e where within(actionGeo.position, :area) = true", Event.class);

      // Create a polygon describing a box around Europe
      WktDecoder decoder = Wkt.newDecoder(Wkt.Dialect.HANA_EWKT);
      Polygon<?> europeBox = (Polygon<?>) decoder.decode("POLYGON((35 -10, 35 30, 71 30, 71 -10, 35 -10))");
      eventQuery.setParameter("area", europeBox);

      // Return all events within the Europe box
      List<Event> eventsInEurope = eventQuery.getResultList();

      System.out.println("Found " + eventsInEurope.size() + " events in Europe");

      entityManager.clear();
      entityManager.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
    System.exit(0);
  }
}

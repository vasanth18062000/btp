package com.sap.hana.hibernate.tutorial.spatial;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
//
public class TestSpatialDataImport {

  // The GDELT file name
  private static final String FILE_NAME = "20171005.export.CSV";

  // The flush size
  private static final int FLUSH_SIZE = 10000;
//
//  public static void main(String[] args) {
//    try {
//      EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Tutorial");
//      EntityManager entityManager = entityManagerFactory.createEntityManager();
//
//      Path csvFilePath = Paths.get(Thread.currentThread().getContextClassLoader().getResource(FILE_NAME).toURI());
//      parseAndStoreCSV(csvFilePath, entityManager);
//
//      entityManager.clear();
//      entityManager.close();
//    } catch (Exception e) {
//      e.printStackTrace();
//    }
//    System.exit(0);
//  }
//
  public static void parseAndStoreCSV(Path filePath, EntityManager entityManager) throws IOException, ParseException {
    // Open the CSV file containing the data
    String line = null;
    int numberOfRecords = 0;
    try {
      BufferedReader reader = Files.newBufferedReader(filePath);

      // Start a database transaction
      entityManager.getTransaction().begin();

      // Read the CSV file line by line
      while ((line = reader.readLine()) != null) {
        Event event = parseEvent(line, entityManager);
        entityManager.persist(event);

        numberOfRecords++;

        // Clear the entity manager cache every 1000 records to avoid
        // excessive memory usage
        if (numberOfRecords % FLUSH_SIZE == 0) {
          System.out.println("Flushing after " + numberOfRecords + " records");

          entityManager.flush();
          entityManager.clear();
        }
      }
      System.out.println("Imported " + numberOfRecords + " records");
      // Commit the database transaction
      entityManager.getTransaction().commit();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public static Event parseEvent(String line, EntityManager entityManager) throws IOException, ParseException {
    // Split the line by tab separator
    String[] fields = line.split("\t");
    assert fields.length == 58;

    Event event = new Event();
    event.setId(Helper.parseInt(fields[0]));
    event.setDay(fields[1]);
    event.setMonth(fields[2]);
    event.setYear(Helper.parseInt(fields[3]));
    event.setFractionDate(Helper.parseDouble(fields[4]));

    String actor1Code = fields[5];
    if (actor1Code != null && !actor1Code.trim().isEmpty()) {
      Actor actor1 = entityManager.find(Actor.class, actor1Code);
      if (actor1 == null) {
        actor1 = new Actor(actor1Code, fields[6], fields[7], fields[8], fields[9], fields[10], fields[11], fields[12], fields[13], fields[14]);
        entityManager.persist(actor1);
      }
      event.setActor1(actor1);
    }

    String actor2Code = fields[15];
    if (actor2Code != null && !actor2Code.trim().isEmpty()) {
      Actor actor2 = entityManager.find(Actor.class, actor2Code);
      if (actor2 == null) {
        actor2 = new Actor(actor2Code, fields[16], fields[17], fields[18], fields[19], fields[20], fields[21], fields[22], fields[23], fields[24]);
        entityManager.persist(actor2);
      }
      event.setActor2(actor2);
    }

    String actionCode = fields[26];
    Action action = entityManager.find(Action.class, actionCode);
    if (action == null) {
      action = new Action("1".equals(fields[25]), actionCode, fields[27], fields[28], Helper.parseInt(fields[29]), Helper.parseDouble(fields[30]), Helper.parseInt(fields[31]), Helper.parseInt(fields[32]), Helper.parseInt(fields[33]), Helper.parseDouble(fields[34]));
      entityManager.persist(action);
    }
    event.setAction(action);

    Geography actor1Geo = new Geography();
    int actor1Geo_Type = Helper.parseInt(fields[35]);
    if (actor1Geo_Type > 0) {
      actor1Geo = new Geography(actor1Geo_Type, fields[36], fields[37], fields[38], fields[39], fields[40], actor1Geo_Type, fields[41]);
    }
    event.setActor1Geo(actor1Geo);

    Geography actor2Geo = new Geography();
    int actor2Geo_Type = Helper.parseInt(fields[42]);
    if (actor2Geo_Type > 0) {
      actor2Geo = new Geography(actor2Geo_Type, fields[43], fields[44], fields[45], fields[46], fields[47], actor2Geo_Type, fields[48]);
    }
    event.setActor2Geo(actor2Geo);

    Geography actionGeo = new Geography();
    int actionGeo_Type = Helper.parseInt(fields[49]);
    if (actionGeo_Type > 0) {
      actionGeo = new Geography(actionGeo_Type, fields[50], fields[51], fields[52], fields[53], fields[54], actionGeo_Type, fields[55]);
    }
    event.setActionGeo(actionGeo);

    event.setDateAdded(Helper.parseDate(fields[57]));

    return event;
  }
}

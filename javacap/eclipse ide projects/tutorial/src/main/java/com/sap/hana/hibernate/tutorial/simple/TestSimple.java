package com.sap.hana.hibernate.tutorial.simple;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TestSimple {

  private static Developer createDeveloper(String name, String eMail) {
    Developer developer = new Developer(eMail);
    developer.setName(name);
    return developer;
  }

  private static Project createProject(String name, Developer owner) {
    Project project = new Project(name);
    project.setProjectOwner(owner);
    return project;
  }

  private static Version createVersion(String versionNumber, Project project) {
    Version version = new Version(versionNumber, project);
    return version;
  }

  public static void main(String[] args) {
    try {
      EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Tutorial");
      EntityManager entityManager = entityManagerFactory.createEntityManager();

      entityManager.getTransaction().begin();

      System.out.println("************************************************************************");
      System.out.println(" >> Creating entities");
      System.out.println("************************************************************************");

      Developer john = createDeveloper("John Doe", "john@doe.com");
      entityManager.persist(john);

      Developer jane = createDeveloper("Jane Doe", "jane@doe.com");
      entityManager.persist(jane);

      Project project = createProject("John's big project", john);
      project.addContributor(jane);

      Version version = createVersion("1.0", project);
      project.addVersion(version);

      entityManager.persist(project);

      project.addVersion(version);

      entityManager.persist(version);

      entityManager.getTransaction().commit();
      entityManager.clear();

      System.out.println("************************************************************************");
      System.out.println(" >> Creating entities completed");
      System.out.println("************************************************************************");

      System.out.println("************************************************************************");
      System.out.println(" >> Finding project by name");
      System.out.println("************************************************************************");

      Project johnsBigProject = entityManager.find(Project.class, "John's big project");

      System.out.println("************************************************************************");
      System.out.println(" >> Getting project name : " + johnsBigProject.getName());
      System.out.println(" >> Getting project owner: " + johnsBigProject.getProjectOwner().getName());
      System.out.println("************************************************************************");

      assert johnsBigProject.getName().equals("John's big project");
      assert johnsBigProject.getProjectOwner().getName().equals("John Doe");
      System.out.println("************************************************************************");
      entityManager.clear();
      entityManager.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
    System.exit(0);
  }
}

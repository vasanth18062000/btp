//package com.sap.hana.hibernate.tutorial.setup;
//
//import java.util.ArrayList;
//import java.util.Iterator;
//import java.util.List;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.Persistence;
//import javax.persistence.Query;
//
//public class TestSetup {
//
//	public static void main(String[] args) {
//		try {
//      EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Tutorial");
//  		EntityManager entityManager = entityManagerFactory.createEntityManager();
//
//      Query nativeQuery = entityManager.createNativeQuery("SELECT * FROM Laptop1");
//      List list1=new ArrayList();
//      list1 = nativeQuery.getResultList();
//			System.out.println("The result is 1" + list1);
//			
//			
////			if ("X".equals(result)) {
////				System.out.println("SUCCESS!");
////			} else {
////				throw new RuntimeException("Wrong result!");
////			}
//			entityManager.clear();
//			entityManager.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		System.exit(0);
//	}
//}

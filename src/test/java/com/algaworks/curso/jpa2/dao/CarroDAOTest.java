package com.algaworks.curso.jpa2.dao;

import static org.junit.Assert.assertEquals;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.algaworks.curso.jpa2.modelo.Carro;

public class CarroDAOTest {

	private static EntityManagerFactory factory;
	
	private CarroDAO carroDAO;
	
	@BeforeClass
	public static void init() {
		factory = Persistence.createEntityManagerFactory("locadoraVeiculoPUJUnit");
	}
	
	@AfterClass
	public static void finish() {
		System.out.println("Fim do teste ");
	}
	
	@Before
	public void setUp() {
		this.carroDAO = new CarroDAO();
		this.carroDAO.setEntityManager(factory.createEntityManager());
	}
	
	@After
	public void tearDown() {
		
	}
	
	@Test
	public void buscarCarroPeloCodigo() {
		Carro carro = this.carroDAO.buscarPeloCodigo(1L);
		
		assertEquals(1L, carro.getCodigo().longValue());
		assertEquals("AAA-1112", carro.getPlaca());
	}
	
	@Test
	public void buscarCarroPeloCodigo2() {
		Carro carro = this.carroDAO.buscarPeloCodigo(1L);
		
		assertEquals(1L, carro.getCodigo().longValue());
		assertEquals("AAA-1112", carro.getPlaca());
	}
}

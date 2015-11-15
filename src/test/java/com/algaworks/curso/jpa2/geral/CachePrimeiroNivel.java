package com.algaworks.curso.jpa2.geral;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.algaworks.curso.jpa2.modelo.Carro;

public class CachePrimeiroNivel {

private static EntityManagerFactory factory;
	
	private EntityManager manager;
	
	@BeforeClass
	public static void init() {
		factory = Persistence.createEntityManagerFactory("locadoraVeiculoPUJUnit");
	}
	
	@Before
	public void setUp() {
		this.manager = factory.createEntityManager();
	}
	
	@After
	public void tearDown() {
		this.manager.close();
	}
	
	@Test
	public void cache() {
		TypedQuery<Carro> query = this.manager.createQuery("from Carro c", Carro.class);
		List<Carro> carros = query.getResultList();
		
		for (Carro carro : carros) {
			System.out.println(carro.getCodigo() + " - " + carro.getPlaca());
		}
		
//		this.manager.close();
//		this.manager = factory.createEntityManager();
		
		System.out.println("--------------------------------------------");
		Carro carro = this.manager.find(Carro.class, 1L);
		System.out.println(carro.getCodigo() + " - " + carro.getPlaca());
		
		System.out.println("--------------------------------------------");
		carro = this.manager.find(Carro.class, 2L);
		System.out.println(carro.getCodigo() + " - " + carro.getPlaca());
	}
	

}

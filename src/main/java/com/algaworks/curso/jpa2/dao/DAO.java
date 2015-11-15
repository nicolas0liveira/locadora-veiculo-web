package com.algaworks.curso.jpa2.dao;

import java.io.Serializable;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import com.algaworks.curso.jpa2.service.NegocioException;


/*TODO: Criar um DAO Generico*/
public abstract class DAO<T, ID> implements Serializable {
	private static final long serialVersionUID = -4910477900799701644L;

	@Inject
	protected EntityManager em;

	public abstract void salvar(T t);

	public abstract void excluir(T t) throws NegocioException;

	public abstract List<T> buscarTodos();

	public abstract T buscarPeloCodigo(ID codigo);

	public List<T> buscaComConsultaPaginada(String namedQuery, int first, int pageSize, Class<T> clazz) {
		return em.createNamedQuery(namedQuery, clazz).setFirstResult(first).setMaxResults(pageSize).getResultList();
	}

	public abstract List<T> buscaComConsultaPaginada(int first, int pageSize);

	@SuppressWarnings("unchecked")
	public ID buscaQuantidadeTotalDeEntidade(Class<T> clazz) {
		return (ID) em.createQuery("SELECT COUNT(obj) FROM " + clazz.getName() + " obj").getSingleResult();
	}
}

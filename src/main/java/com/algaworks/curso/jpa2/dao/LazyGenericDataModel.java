package com.algaworks.curso.jpa2.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

public class LazyGenericDataModel<T> extends LazyDataModel<T> implements Serializable {

	private PaginatorDAO<T> dao; // Essa é a interface que te falei acima

	public LazyGenericDataModel(PaginatorDAO<T> dao) {
		this.dao = dao;
	}

	@Override
	public List<T> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, Object> filters) {
		  List<T> lista = this.dao.buscarComPaginacao(first, pageSize);

	      this.setRowCount(this.dao.encontrarQuantidadeTotal().intValue());

	      return lista;
	}
}

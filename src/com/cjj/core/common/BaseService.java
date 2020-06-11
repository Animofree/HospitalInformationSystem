package com.cjj.core.common;

import java.io.Serializable;
import java.util.List;

public interface BaseService<T, PK extends Serializable> {

	public List<T> findAll();

	public int add(T t);

	public T findById(int id);

	public int edit(T t);

	public int delete(int id);
}

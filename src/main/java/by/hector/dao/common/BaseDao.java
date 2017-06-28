package by.hector.dao.common;

import by.hector.entity.BaseEntity;

import java.util.List;

/**
 * @author i.sukach
 */
public interface BaseDao<T extends BaseEntity> {

    T findOne(Long id);

    void save(T entity);

    List<T> findAll();
}

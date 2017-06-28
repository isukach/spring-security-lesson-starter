package by.hector.dao;

import by.hector.dao.common.BaseDao;
import by.hector.entity.User;

/**
 * @author i.sukach
 */
public interface UserDao extends BaseDao<User> {

    User findByName(String name);
}

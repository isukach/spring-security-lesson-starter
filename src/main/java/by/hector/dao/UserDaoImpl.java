package by.hector.dao;

import by.hector.dao.common.BaseDaoImpl;
import by.hector.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author i.sukach
 */
@Repository
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

    @Override
    public User findByName(String name) {
        List<User> userList = getCurrentSession()
                .createQuery("select u from User u where u.name=:name", User.class)
                .setParameter("name", name)
                .getResultList();
        return userList.size() > 0 ? userList.get(0) : null;
    }
}

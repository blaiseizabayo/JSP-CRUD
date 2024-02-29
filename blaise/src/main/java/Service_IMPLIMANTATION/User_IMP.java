package Service_IMPLIMANTATION;

import Controller.UserDao;
import bean.User;
import Service.User_Service;
import org.hibernate.SessionFactory;

import java.util.List;

public class User_IMP implements User_Service {

    public User_IMP(SessionFactory sessionFactory) {
    }

    UserDao dao=new UserDao();

    @Override
    public User Register_User(User userobj) {
        return dao.saveUser(userobj);
    }

    @Override
    public User Update_User(User userobj) {
        return dao.UpdateUser(userobj);
    }

    @Override
    public User Delete_User(User userobj) {
        return dao.DeleteUser(userobj);
    }

    @Override
    public User searching_data(User userobj) {
        return dao.Search_data(userobj);
    }

    @Override
    public List<User> Alldata() {
        return dao.display_data();
    }
}

package Service;

import bean.User;

import java.util.List;

public interface User_Service {

    User Register_User(User userobj);
    User Update_User(User userobj);
    User Delete_User(User userobj);
    User searching_data(User userobj);
     List<User> Alldata();



}

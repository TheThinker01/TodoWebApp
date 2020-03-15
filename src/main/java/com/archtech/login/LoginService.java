package com.archtech.login;

public class LoginService {
    public boolean isUservalid(String user,String password)
    {
        return user.equals("Archisman") && password.equals("archis");
    }
}

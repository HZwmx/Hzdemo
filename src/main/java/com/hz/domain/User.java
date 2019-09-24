package com.hz.domain;

import java.io.Serializable;

/**
 * 用户的实体类
 */
public class User implements Serializable {
    private  Integer id;
    private String username;
    private String userpassword;
    private String userE_mall;
    private String userphone;
    private String usersecret;
    private String userproblem;

    public String getUserproblem() {
        return userproblem;
    }

    public void setUserproblem(String userproblem) {
        this.userproblem = userproblem;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUserE_mall() {
        return userE_mall;
    }

    public void setUserE_mall(String userE_mall) {
        this.userE_mall = userE_mall;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUsersecret() {
        return usersecret;
    }

    public void setUsersecret(String usersecret) {
        this.usersecret = usersecret;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", userE_mall='" + userE_mall + '\'' +
                ", userphone='" + userphone + '\'' +
                ", usersecret='" + usersecret + '\'' +
                ", userproblem='" + userproblem + '\'' +
                '}';
    }
}

package com.smhrd.model;

import java.sql.Date;

public class Users {
    private String id;
    private String pw;
    private String name;
    private String addr;
    private String phone;
    private String u_type;
    private Date joined_at;

    // 생성자 추가
    public Users(String id, String pw, String name, String addr, String phone, String u_type, Date joined_at) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.addr = addr;
        this.phone = phone;
        this.u_type = u_type;
        this.joined_at = joined_at;
    }

    // Getter와 Setter 메서드 추가 (생략 가능)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUType() {
        return u_type;
    }

    public void setUType(String u_type) {
        this.u_type = u_type;
    }

    public Date getJoinedAt() {
        return joined_at;
    }

    public void setJoinedAt(Date joined_at) {
        this.joined_at = joined_at;
    }
}
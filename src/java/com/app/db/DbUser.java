package com.app.db;

import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.app.bean.db.UserInfo;
import com.app.bean.vm.VMBookingHistory;
import com.app.bean.vm.VMLogin;
import com.app.bean.vm.VMRegister;
import org.apache.commons.dbutils.handlers.ScalarHandler;

public class DbUser {

    private DbConfigHelper dbConfig = null;

    public DbUser(DbConfigHelper dbConfig) {
        this.dbConfig = dbConfig;
    }

    public UserInfo doUserLogin(VMLogin obj, boolean forAdmin) throws Exception {
        try {
            String user_type = "USER";
            if (forAdmin) {
                user_type = "ADMIN";
            }
            obj.setTxtLoginId(obj.getTxtLoginId().trim().toLowerCase());

            DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

            QueryRunner run = new QueryRunner(dataSource);

            ResultSetHandler<UserInfo> h = new BeanHandler<UserInfo>(UserInfo.class);

            UserInfo data = run.query(
                    "select User_Id,User_LoginName,User_LoginPassword,User_Email,User_MobileNo,User_FName,User_LName,User_Add,User_City,User_State,User_SQ,User_SA,User_Type,User_IsActive from UserInfo where User_LoginName=? and User_LoginPassword=? and User_IsActive=1 and User_Type=?;",
                    h, obj.getTxtLoginId(), obj.getTxtLoginPass(), user_type);

            return data;
        } catch (Exception ex) {
            throw ex;
        }
    }

    public List<VMBookingHistory> getBookingHistory(int userId, int pageSize, int pageNo) throws Exception {
        try {
            int min = ((pageNo - 1) * pageSize) + 1;
            int max = min + (pageSize - 1);
            String sql = "with y as (SELECT  ShowInfo.Show_Id,ShowInfo.Movie_Name, \n";
            sql += "TicketInfo.Ticket_Id,TicketInfo.Ticket_No,TicketInfo.User_Id,convert(varchar,TicketInfo.Show_Date,103) as'Show_Date', \n";
            sql += "TicketInfo.Show_Time,convert(varchar,TicketInfo.Booking_Date,103) as'Booking_Date','' as URL FROM TicketInfo JOIN ShowInfo ON TicketInfo.Show_Id=ShowInfo.Show_Id \n";
            sql += "where TicketInfo.User_Id=?), \n";
            sql += "x as (select  (select count(*) from y b  where a.Ticket_Id >= b.Ticket_Id) as SNO,* \n";
            sql += "from y a) \n";
            sql += "select *,0 AS RecordCount from x where x.SNo between ? and ? \n";
            sql += "union all \n";
            sql += "select 0,0,'',0,0,0,'','','','',COUNT(0) AS RecordCount from x;";

            DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

            QueryRunner run = new QueryRunner(dataSource, true);

            ResultSetHandler<List<VMBookingHistory>> h = new BeanListHandler<VMBookingHistory>(VMBookingHistory.class);

            List<VMBookingHistory> data = run.query(sql, h, userId, min, max);

            return data;
        } catch (Exception ex) {
            throw ex;
        }
    }

    public boolean isUserExists(String txtUName) throws Exception {
        try {
            String sql = "select 1 as col from UserInfo where User_LoginName=? and User_Type='USER'";
            DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

            QueryRunner run = new QueryRunner(dataSource);

            ResultSetHandler<Object> h = new ScalarHandler<Object>("col");

            Object data = run.query(
                    sql,
                    h, txtUName);
            return data != null;
        } catch (Exception ex) {
            throw ex;
        }
    }

    public boolean registerUser(VMRegister obj) throws Exception {
        try {
            obj.setTxtUName(obj.getTxtUName().trim().toLowerCase());
            String sql
                    = "INSERT INTO UserInfo (User_LoginName,User_LoginPassword,User_Email,User_MobileNo,User_FName,"
                    + "User_LName,User_Add,User_City,User_State,User_SQ,User_SA,User_Type,User_IsActive)"
                    + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";

            DataSource dataSource = new com.app.db.DataSource(this.dbConfig).getBds();

            QueryRunner run = new QueryRunner(dataSource);

            int result = run.update(sql,
                    obj.getTxtUName(),
                    obj.getTxtRePass(),
                    obj.getTxtEmail(),
                    obj.getTxtMobile(),
                    obj.getTxtFName(),
                    obj.getTxtLName(),
                    obj.getTxtAdd1() + " " + obj.getTxtAdd2(),
                    obj.getTxtCity(),
                    obj.getDdlState(),
                    obj.getTxtSQ(),
                    obj.getTxtSA(), "USER", 1
            );

            return result > 0;
        } catch (Exception ex) {
            throw ex;
        }
    }
}

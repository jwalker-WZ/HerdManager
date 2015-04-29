using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Common;

namespace HerdManager.DatabaseStuff
{
    public static class DataBaseHelper
    {
        static string connString = "Server=rei.cs.ndsu.nodak.edu;Database=csci366_hmanager;Uid=csci366_hmanager;Pwd=stuffnotvisible;";
        static MySqlConnection conn;
        static MySqlCommand comm;
        static MySqlDataAdapter da;
        static MySqlDataReader dr;

        public static bool Connect()
        {
            conn = new MySqlConnection(connString);
            try
            {
                conn.Open();
            }
            catch (Exception e) { return false; }
            return true;
        }
        public static bool Disconnect()
        {
            try
            {
                conn.Close();
            }
            catch (Exception e) { return false; }
            return true;
        }
        public static bool RegisterUser(string UserName, string Password, string firstName, string LastName)
        {
            if (conn.State == System.Data.ConnectionState.Open)
            {
                string commandString = "INSERT INTO HolderLogin(UName, Pword) Values (@UserName, @Password);";
                comm = new MySqlCommand(commandString, conn);
                comm.Parameters.Add("@UserName", MySqlDbType.VarChar);
                comm.Parameters.Add("@Password", MySqlDbType.VarChar);
                comm.Parameters["@UserName"].Value = UserName;
                comm.Parameters["@Password"].Value = Password;
                try
                {
                    int numRowsUpdate = comm.ExecuteNonQuery();
                    if (numRowsUpdate == 0)
                    {
                        return false;
                    }
                }
                catch (Exception e) { return false; }
                comm.CommandText = "INSERT INTO AccountHolder(FirstName, LastName, LogInInfo) VALUES (@FirstName, @LastName, (Select ID FROM HolderLogin WHERE Uname=@UserName));";
                comm.Parameters.Add("@FirstName", MySqlDbType.VarChar);
                comm.Parameters.Add("@LastName", MySqlDbType.VarChar);
                comm.Parameters["@FirstName"].Value = firstName;
                comm.Parameters["@LastName"].Value = LastName;
                try
                {
                    int numRowsUpdate = comm.ExecuteNonQuery();
                    if (numRowsUpdate == 0)
                    {
                        //failed to create rows, delete userinfo.
                        comm.CommandText = "DELETE FROM HolderLogin WHERE Uname=@UserName;";
                        try
                        {
                            comm.ExecuteNonQuery();

                        }
                        catch (Exception e) { return false; }
                    }
                }
                catch (Exception e) {
                    //delete userinfo.
                    comm.CommandText = "DELETE FROM HolderLogin WHERE Uname=@UserName;";
                    try
                    {
                        comm.ExecuteNonQuery();

                    }
                    catch (Exception ex) { return false; }
                }
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool LogIn(string UserName, string Password)
        {
            if (conn.State == System.Data.ConnectionState.Open)
            {
                string commandString = "SELECT * FROM HolderLogin WHERE Uname=@UserName and Pword=@Password;";
                comm = new MySqlCommand(commandString, conn);
                comm.Parameters.Add("@UserName", MySqlDbType.VarChar);
                comm.Parameters.Add("@Password", MySqlDbType.VarChar);
                comm.Parameters["@UserName"].Value = UserName;
                comm.Parameters["@Password"].Value = Password;
                try
                {
                    int numrows = comm.ExecuteNonQuery();
                    if (numrows == 0)
                    {
                        return false;
                    }
                    return true;
                }catch(Exception e){return false;}
            }
            else
            {
                return false;
            }
        }
    }
}
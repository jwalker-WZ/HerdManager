using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Common;
using System.Data;

namespace HerdManager.DatabaseStuff
{
    public static class DataBaseHelper
    {
        static string connString = "Server=rei.cs.ndsu.nodak.edu;Database=csci366_hmanager;Uid=csci366_hmanager;Pwd=fWm3gVtMWS;";
        static MySqlConnection conn;
        static MySqlCommand comm;
        static MySqlDataAdapter da;
        static MySqlDataReader dr;

        public static bool Connect()
        {
            if(conn == null)
                conn = new MySqlConnection(connString);
            if (conn.State == ConnectionState.Open)
                return true;
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
                    DataTable dt = new DataTable();
                    da = new MySqlDataAdapter(comm);
                    da.Fill(dt);
                    if (dt.Rows.Count == 1)
                    {
                        return true;
                    }
                    return false;
                }catch(Exception e){return false;}
            }
            else
            {
                return false;
            }
        }

        public static DataTable GetAllAnimals(string username)
        {
            if (conn.State == ConnectionState.Open)
            {
                string commandString = "SELECT * FROM Animal "+
                "INNER JOIN Tag ON Animal.ID=Tag.AnimalID "+
                "INNER JOIN AnimalDescription ON Tag.AnimalID=AnimalDescription.AnimalID " +
                "INNER JOIN Species ON Animal.Species=Species.ID "+
                " WHERE Animal.AccountHolder = (SELECT ID FROM AccountHolder WHERE LogInInfo=(SELECT ID FROM HolderLogin WHERE Uname=@username));";
                comm = new MySqlCommand(commandString, conn);
                comm.Parameters.Add("@username", MySqlDbType.VarChar).Value = username;
                da = new MySqlDataAdapter(comm);
                DataTable dt = new DataTable();
                try
                {
                    da.Fill(dt);
                    dt.Columns.Remove("ID1");
                    dt.Columns.Remove("ID2");
                    dt.Columns.Remove("AnimalID");
                    dt.Columns.Remove("AnimalID1");
                    dt.Columns.Remove("AccountHolder");
                    dt.Columns.Remove("Species");
                    dt.Columns.Remove("ID3");
                    return dt;
                }
                catch (Exception ex) { return null; }
            }
            else
            {
                return null;
            }
        }
        public static bool AddAnimal(string species, string gender, string accoundHolder, DateTime birthDate, DateTime sellodeath,
            string temperment, string notes, string tagNumber, string tagColor, string specialInfo){
            if (conn.State == ConnectionState.Open)
            {
                string commandString = "INSERT INTO Animal(Species, AccountHolder) "+
                    "VALUES((SELECT ID FROM Species WHERE SpeciesName=@Species), "+
                    "(SELECT ID FROM AccountHolder WHERE LogInInfo=(SELECT ID FROM HolderLogin WHERE Uname=@AccountHolder)));";
                comm = new MySqlCommand(commandString, conn);
                comm.Parameters.Add("@Species", MySqlDbType.VarChar);
                comm.Parameters.Add("@AccountHolder", MySqlDbType.VarChar);
                comm.Parameters["@Species"].Value = species;
                comm.Parameters["@AccountHolder"].Value = accoundHolder;
                try
                {
                    int numRows = comm.ExecuteNonQuery();
                    if (numRows == 0)
                    {
                        return false;
                    }
                }
                catch (Exception ex) { return false; }
                int AnimalID;
                comm.CommandText = "SELECT ID From Animal WHERE ID=Last_Insert_ID()";
                AnimalID = (int)comm.ExecuteScalar();
                //create the tag
                comm.CommandText = "INSERT INTO Tag(TagNumber, TagColor, SpecialInformation, AnimalID) VALUES(@TagNumber, @TagColor, @SpecialInfo" +
                ", LAST_INSERT_ID());";
                comm.Parameters.Add("@TagNumber", MySqlDbType.VarChar).Value = tagNumber;
                comm.Parameters.Add("@TagColor", MySqlDbType.VarChar).Value = tagColor;
                comm.Parameters.Add("@SpecialInfo", MySqlDbType.VarChar).Value = specialInfo;
                try
                {
                    int numRows = comm.ExecuteNonQuery();
                    if (numRows == 0)
                    {
                        //failed to work, erase last animal.
                        comm.CommandText = "DELETE FROM Animal WHERE ID=LAST_INSERT_ID();";
                        comm.ExecuteNonQuery();
                        return false;
                    }
                }
                catch (Exception ex) { return false; }
                comm.CommandText = "INSERT INTO AnimalDescription(Gender, BirthDate, SellOrDeathDate, Temperment, Notes, AnimalID) "+
                    "VALUES(@Gender, @BirthDate, @SellOrDeathDate, @Temperment, @Notes, "+ AnimalID.ToString() + ")";
                comm.Parameters.Add("@Gender", MySqlDbType.VarChar).Value = gender;
                comm.Parameters.Add("@BirthDate", MySqlDbType.Date).Value = birthDate.Date;
                comm.Parameters.Add("@SellOrDeathDate", MySqlDbType.Date).Value = sellodeath.Date;
                comm.Parameters.Add("@Temperment", MySqlDbType.VarChar).Value = temperment;
                comm.Parameters.Add("@Notes", MySqlDbType.VarChar).Value = notes;
                try
                {
                    int numRows = comm.ExecuteNonQuery();
                    if (numRows == 0)
                    {
                        comm.CommandText = "DELETE FROM Tag WHERE ID=Last_Insert_ID()";
                        comm.ExecuteNonQuery();
                        comm.CommandText = "DELETE FROM Animal WHERE ID='" + AnimalID.ToString() + "'";
                        comm.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    comm.CommandText = "DELETE FROM Tag WHERE ID=Last_Insert_ID()";
                    comm.ExecuteNonQuery();
                    comm.CommandText = "DELETE FROM Animal WHERE ID='" + AnimalID.ToString() + "'";
                    comm.ExecuteNonQuery();
                    return false;
                }
            }
            else
            {
                return false;
            }
            return true;
        }

        public static bool AddPasture(string location, string description, string fencetype)
        {
            if (conn.State == ConnectionState.Open)
            {
                string commandString = "INSERT INTO Pasture(Location, Description, FenceType) VALUES(@Location, @Description, @FenceType);";
                comm = new MySqlCommand(commandString, conn);
                comm.Parameters.Add("@Location", MySqlDbType.VarChar);
                comm.Parameters.Add("@Description", MySqlDbType.VarChar);
                comm.Parameters.Add("@FenceType", MySqlDbType.VarChar);
                comm.Parameters["@Location"].Value = location;
                comm.Parameters["@Description"].Value = description;
                comm.Parameters["@FenceType"].Value = fencetype;
                try
                {
                    int numRowsUpdate = comm.ExecuteNonQuery();
                    if (numRowsUpdate == 0)
                    {
                        return false;
                    }
                }
                catch (Exception ex) { return false; }
            }
            else
            {
                return false;
            }
            return true;
        }
        public static List<string> SpeciesOptions()
        {
            List<string> species = new List<string>();
            string commandString = "SELECT SpeciesName FROM Species;";
            comm = new MySqlCommand(commandString, conn);
            try
            {
                dr = comm.ExecuteReader();
                while (dr.Read())
                {
                    species.Add(dr.GetString(0));
                }
            }
            catch (Exception ex) { dr.Close();  return null; }
            dr.Close();
            return species;
        }
        public static bool AddVetWork(DateTime WorkDate, string performedBy, string vetWorkDone, int AnimalID)
        {
            if (conn.State == ConnectionState.Open)
            {

            }
            else
            {
                return false;
            }
            return true;
        }
        public static bool RemoveAnimal(int AnimalID)
        {
            if (conn.State == ConnectionState.Open)
            {
                comm = new MySqlCommand("DELETE FROM Animal WHERE ID=@id;", conn);
                comm.Parameters.Add("@id", MySqlDbType.UInt32).Value = AnimalID;
                comm.ExecuteNonQuery();
                
            }
            else
            {
                return false;
            }
            return true;
        }
    }
}
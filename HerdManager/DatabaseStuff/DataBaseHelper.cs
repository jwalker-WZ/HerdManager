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
        static string connString = "Server=rei.cs.ndsu.nodak.edu;Database=csci366_hmanager;Uid=csci366_hmanager;Pwd=*****;";
        MySqlConnection conn;
        MySqlCommand comm;
        MySqlDataAdapter da;
        MySqlDataReader dr;

        static bool Connect()
        {
            return false;
        }

        

    }
}
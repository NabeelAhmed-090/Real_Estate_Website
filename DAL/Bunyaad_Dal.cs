using System;
using System.Data;
using System.Data.SqlClient;

namespace Bunyaad.DAL
{
    public class Bunyaad_Dal
    {
        
        string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Bunyaad_Connection_String"].ConnectionString;

        public int checkAccount(string uname)
        {

            int check = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkAccount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@uname"].Value = uname;

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return check;

        }

        public int checkProperty(string ID)
        {

            int check = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkProperty", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@ID"].Value = Convert.ToInt32(ID);

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return check;

        }

        public int Sign_Up_Check(String email, String User_Name, String city, String password, String name, String type)
        {
            int check = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Sign_Up", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Type", SqlDbType.VarChar, 7);
                cmd.Parameters.Add("@City", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@Client_Name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@Name"].Value = name;
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@Type"].Value = type;
                cmd.Parameters["@City"].Value = city;
                cmd.Parameters["@Password"].Value = password;
                cmd.Parameters["@Client_Name"].Value = User_Name;

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return check;
        }

        public int Sign_In_Check(String User_Name, String password)
        {
            int check = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Sign_In", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@client_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@client_name"].Value = User_Name;
                cmd.Parameters["@password"].Value = password;

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return check;
        }

        public string[] User_Login(String User_Name)
        {
            string[] output = new string[5];
            for (int i = 0; i < 5; i++)
            {
                output[i] = "";
            }
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("User_login", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@input_string", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Full_name", SqlDbType.VarChar, 15).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@User_City", SqlDbType.VarChar, 20).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@Profile_Pic", SqlDbType.VarChar, 500).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@rating", SqlDbType.Float).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@Premium", SqlDbType.Int).Direction = ParameterDirection.Output;
                

                cmd.Parameters["@input_string"].Value = User_Name;

                cmd.ExecuteNonQuery();

                output[0] = Convert.ToString(cmd.Parameters["@Full_name"].Value);
                output[1] = Convert.ToString(cmd.Parameters["@User_City"].Value);
                output[2] = Convert.ToString(cmd.Parameters["@Profile_Pic"].Value);
                output[3] = Convert.ToString(cmd.Parameters["@rating"].Value);
                output[4] = Convert.ToString(cmd.Parameters["@Premium"].Value);



                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return output;
        }

        public int getPU(string uname) {
            int output = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getPU", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@PU", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@uname"].Value = uname;

                cmd.ExecuteNonQuery();
                output = Convert.ToInt32(cmd.Parameters["@PU"].Value);
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return output;
        }

        public int complain(string user_name,string uname)
        {
            int output = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("complain", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@user_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@check", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@temp", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@user_name"].Value = user_name;
                cmd.Parameters["@check"].Value = uname;


                cmd.ExecuteNonQuery();
                output = Convert.ToInt32(cmd.Parameters["@temp"].Value);
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return output;
        }

        public int reset_pass(string email, string password)
        {
            int check = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("reset_password", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@password"].Value = password;

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return check;
        }

        public void update_user_info(string user_name, string city, string name, string password, string Profile_pic,bool PU)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                int premium = 0;
                if(PU == true)
                {
                    premium = 1;
                }
                cmd = new SqlCommand("update_user_info", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@user_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@name", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@password", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@profile_pic", SqlDbType.VarChar, 500);
                cmd.Parameters.Add("@PU", SqlDbType.Int);

                cmd.Parameters["@user_name"].Value = user_name;
                cmd.Parameters["@name"].Value = name;
                cmd.Parameters["@city"].Value = city;
                cmd.Parameters["@password"].Value = password;
                cmd.Parameters["@profile_pic"].Value = Profile_pic;
                cmd.Parameters["@PU"].Value = premium;

                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void notifications(string user_Name, string cl, string city, string region, int price, int sq_feet)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("NotificationUpdate", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@City", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@Region", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Sq_Feet", SqlDbType.Int);
                cmd.Parameters.Add("@Price", SqlDbType.Int);
                cmd.Parameters.Add("@Class", SqlDbType.VarChar, 20);

                cmd.Parameters["@uname"].Value = user_Name;
                cmd.Parameters["@City"].Value = city;
                cmd.Parameters["@Region"].Value = region;
                cmd.Parameters["@Sq_Feet"].Value = sq_feet;
                cmd.Parameters["@Price"].Value = price;
                cmd.Parameters["@Class"].Value = cl;

                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public int Check_Type(string user_Name)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int check = 0;
            try
            {
                cmd = new SqlCommand("Check_Type", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;


                cmd.Parameters["@uname"].Value = user_Name;

                cmd.ExecuteNonQuery();

                check = Convert.ToInt32(cmd.Parameters["@output"].Value);

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return check;
        }

        public int AddProperty(string uname, string city,
            string region, string addr, int SqFeet,
            string Description, string type, string property_pic)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("property_addition", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@city", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@region", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@addr", SqlDbType.VarChar, 100);
                cmd.Parameters.Add("@SqFeet", SqlDbType.Int);
                cmd.Parameters.Add("@Class", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@Description", SqlDbType.VarChar, 500);
                cmd.Parameters.Add("@property_pic", SqlDbType.VarChar, 500);

                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@city"].Value = city;
                cmd.Parameters["@region"].Value = region;
                cmd.Parameters["@addr"].Value = addr;
                cmd.Parameters["@SqFeet"].Value = SqFeet;
                cmd.Parameters["@Class"].Value = type;
                cmd.Parameters["@Description"].Value = Description;
                cmd.Parameters["@property_pic"].Value = property_pic;
                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
                ret = 1;
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public DataSet SelectSubscriptionsUser(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT [Agent Name],[City]" +
                    " FROM Subscribers JOIN Client ON [Agent Name] = Client_Name" +
                    " WHERE [Subscriber Name] = " + "'" + uname + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet SelectPropertyUser(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT Property_Id, City, Region, Property_Address,Square_Feet, Class" +
                    " FROM Property" +
                    " WHERE Property_Id NOT IN" +
                    " (SELECT Property_Id FROM Sales) AND" +
                    " Owner_Name = " + name;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public string[,] Search(string uname,string search_name,string name, int sq, int price, string city, int option,string type)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            string[,] ret = new string[1, 1];
            SqlCommand cmd;
            string cl;
            if(option == 0)
            {
                cl = "'residential'";
            }
            else
            {
                cl = "'commercial'";
            }
            if(city == "")
            {
                city = "''";
            }
            else
            {
                city = "'" + city + "'";
            }
            try
            {
                string condition;
                if (type == "normal")
                {
                    condition = " AND Type != 'normal'";
                }
                else
                {
                    condition = "";
                }
                search_name = "'" + search_name + "'";
                string pass = "";
                string arg1, arg2, arg3;
                arg1 = "'" + uname + "'";
                arg2 = "'" + name + "'";
                arg3 = city;
                if (uname.Length != 0)
                {

                    string user = "'" + uname + "'";
                    pass = "SELECT DISTINCT Client_Name, Full_Name, Client.City FROM Client WHERE Client_Name = " + user +
                        " AND Client_Name != " + search_name + condition;
                }
                else if (name.Length != 0)
                {
                    string cond1, cond2, cond3;
                    cond1 = "'" + name + " %'";
                    cond2 = "'% " + name + " %'";
                    cond3 = "'% " + name + "'";
                    pass = "SELECT DISTINCT Client_Name, Full_Name, Client.City" +
                        " FROM Client JOIN" +
                        "(SELECT Property.Property_Id, City, Square_Feet, Class, Region, Owner_Name" +
                        " FROM Property WHERE" +
                        " Square_Feet<" + sq + " OR" +
                        " City = " + arg3 + " OR" +
                        " Class = " + cl + ") AS T1 ON T1.Owner_Name = Client_Name" +
                        " AND Client_Name != " + search_name + condition +
                        " UNION" +
                        "(SELECT Client_Name, Full_Name, Client.City FROM Client" +
                        " WHERE (Full_Name like " + cond1 + " OR" +
                        " Full_Name like " + cond2 + " OR" +
                        " Full_Name like " + cond3 + " )" +
                        " AND Client_Name != " + search_name + condition + " )";
                }
                else
                {
                    pass = "SELECT DISTINCT Client_Name,Full_Name,Client.City" +
                    " FROM Client JOIN" +
                    " (SELECT Property.Property_Id, City, Square_Feet, Class, Region, Owner_Name" +
                    " FROM Property WHERE Square_Feet < " + sq + " OR City =" + arg3 + " OR Class = " + cl +
                    " ) AS T1 ON T1.Owner_Name = Client_Name AND" +
                    " T1.Owner_Name != " + search_name + condition;
                }
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                int count = ds.Tables[0].Rows.Count;
                ret = new string[count + 1, 3];
                for (int i = 0; i < count; i++)
                {
                    ret[i, 0] = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    ret[i, 1] = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    ret[i, 2] = Convert.ToString(ds.Tables[0].Rows[i][1]);
                }
                ret[count, 0] = null;
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public string[] visitProfile(string uname)
        {
            string[] ret = new string[3];
            ret[0] = null;
            DataSet ds = new DataSet();
            DataSet ds2 = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT Full_Name,City FROM Client WHERE Client_Name = " + name;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                if (ds.Tables[0].Rows.Count != 0)
                {
                    ret[0] = Convert.ToString(ds.Tables[0].Rows[0][0]);
                    ret[1] = Convert.ToString(ds.Tables[0].Rows[0][1]);

                    name = "'" + uname + "'";
                    pass = "SELECT COUNT(*)" +
                        " FROM Property JOIN Sales ON Property.Property_Id = Sales.Property_Id" +
                        " WHERE Owner_Name = " + name;
                    cmd = new SqlCommand(pass, con);
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds2);
                    }
                    ret[2] = Convert.ToString(ds2.Tables[0].Rows[0][0]);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public DataSet VisitProfile_Table(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT Property.Property_Id,Owner_Name,City,Region,Property_Address,Square_Feet" +
                    " FROM Property JOIN Sales ON Property.Property_Id = Sales.Property_Id" +
                    " WHERE Property.Owner_Name = " + "'" + uname + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public int subscriber(string subs_name, string agent_name)
        {
            int output = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            string[,] ret = new string[1, 1];
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Add_Subscriber", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@agent_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@subs_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@agent_name"].Value = agent_name;
                cmd.Parameters["@subs_name"].Value = subs_name;

                cmd.ExecuteNonQuery();
                output = Convert.ToInt32(cmd.Parameters["@output"].Value);
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return output;
        }

        public int checkSubscriber(string agent_name, string subs_name)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkSubscriber", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@agent_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@subs_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@agent_name"].Value = agent_name;
                cmd.Parameters["@subs_name"].Value = subs_name;

                cmd.ExecuteNonQuery();
                ret = Convert.ToInt32(cmd.Parameters["@output"].Value);
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public void rate(string agent_name, string subs_name, int stars)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Rate", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@agent_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@subs_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@star", SqlDbType.Int);

                cmd.Parameters["@agent_name"].Value = agent_name;
                cmd.Parameters["@subs_name"].Value = subs_name;
                cmd.Parameters["@star"].Value = stars;

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public int checkRate(string agent_name, string subs_name)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("checkRate", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@agent_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@subs_name", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@star", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@agent_name"].Value = agent_name;
                cmd.Parameters["@subs_name"].Value = subs_name;

                cmd.ExecuteNonQuery();
                ret = Convert.ToInt32(cmd.Parameters["@star"].Value);
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public string[] PropertyVisit(string uname, string ID)
        {
            string[] ret = new string[7];
            ret[0] = null;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT * FROM Property WHERE Owner_Name = " + "'" + uname + "'" +
                    "AND Property_Id = " + ID;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                if (ds.Tables[0].Rows.Count != 0)
                {
                    for (int i = 0; i < 7; i++)
                    {
                        ret[i] = Convert.ToString(ds.Tables[0].Rows[0][i + 2]);
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public DataSet SelectShortlisted(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT Property.Property_Id,Owner_Name,Class FROM Property JOIN Shortlist";
                pass += " ON Property.Property_Id = Shortlist.Property_Id WHERE Client_Name = " + "'" + uname + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet SelectNotifications(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT * FROM Notifications" +
                    " WHERE Client_Name = " + "'" + uname + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public void putOnSale(int ID, int Price)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("putOnSale", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@ID", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Price", SqlDbType.VarChar, 20);

                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@Price"].Value = Price;

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public DataSet SelectOffersUser(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT * FROM [Placing Offer]" +
                    " WHERE Property_Id IN" +
                    " ( SELECT Property.Property_Id" +
                    " FROM Property JOIN Sales ON Property.Property_Id = Sales.Property_Id" +
                    " WHERE Owner_Name = " + name + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }
        
        public void changeOwner(int ID,string OwnerName)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("ChangeOwner", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters.Add("@OwnerName", SqlDbType.VarChar, 20);

                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@OwnerName"].Value = OwnerName;

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void DeleteSubscriptionsPE(string uname,string agent)
        {
            DataSet ds=new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name1 = "'" + uname + "'";
                string name2 = "'" + agent + "'";
                string pass = "DELETE FROM Subscribers WHERE [Subscriber Name] = " + name1 +
                    " AND [Agent Name] = " + name2;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void DeletePropertyPE(string uname,int ID)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("RemoveProperty", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@ID", SqlDbType.Int);


                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@ID"].Value = ID;

                cmd.ExecuteNonQuery();

                con.Close();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public int placeOffer(string uname,int ID,int Price,string Password)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("PlaceOffer", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar,20);
                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters.Add("@Price", SqlDbType.Int);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@ID"].Value = ID;
                cmd.Parameters["@Price"].Value = Price;
                cmd.Parameters["@Password"].Value = Password;

                cmd.ExecuteNonQuery();
                ret = Convert.ToInt32(cmd.Parameters["@output"].Value);
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public void AddShortlist(string uname,int ID)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "INSERT INTO Shortlist" +
                    " VALUES(" + name + ", " + ID + ")";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void RemoveShortlist(string uname, int ID)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "DELETE FROM Shortlist WHERE Client_Name = " + name + "AND" +
                    " Property_Id = " + ID;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public int checkShortlist(string uname, int ID)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("CheckShortlist", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters.Add("@output", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@ID"].Value = ID;

                cmd.ExecuteNonQuery();
                ret = Convert.ToInt32(cmd.Parameters["@output"].Value);
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public string checkType(string uname)
        {
            DataSet ds = new DataSet();
            string ret = "";
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string temp = "'" + uname + "'";
                string pass = "SELECT Type FROM Client WHERE Client_Name = " + temp;
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                ret = Convert.ToString(ds.Tables[0].Rows[0][0]);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public void DeleteUserAccount(string uname)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Delete_User", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@client_name", SqlDbType.VarChar, 20);

                cmd.Parameters["@client_name"].Value = uname;

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public string[] Feed()
        {
            string[] ret = new string[6]; 
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("getFeed", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@mostExpensive", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@leastExpensive", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@agentname", SqlDbType.VarChar,20).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@subscribers", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@bestproperty", SqlDbType.Int).Direction = ParameterDirection.Output;
                cmd.Parameters.Add("@bestoffer", SqlDbType.Int).Direction = ParameterDirection.Output;

                cmd.ExecuteNonQuery();

                ret[0] = Convert.ToString(cmd.Parameters["@mostExpensive"].Value);
                ret[1] = Convert.ToString(cmd.Parameters["@leastExpensive"].Value);
                ret[2] = Convert.ToString(cmd.Parameters["@agentname"].Value);
                ret[3] = Convert.ToString(cmd.Parameters["@subscribers"].Value);
                ret[4] = Convert.ToString(cmd.Parameters["@bestproperty"].Value);
                ret[5] = Convert.ToString(cmd.Parameters["@bestoffer"].Value);

                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public string[] FeedProp()
        {
            DataSet ds = new DataSet();
            string[] ret = new string[5];
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {

                string pass = "SELECT TOP 5 Property_Address,Region,City FROM Property ORDER BY Date_Added DESC";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                for(int i = 0; i < 5; i++)
                {
                   
                    string curr = "House # " + ds.Tables[0].Rows[i][0].ToString();
                    curr += ", "+ ds.Tables[0].Rows[i][1].ToString();
                    curr += ", " + ds.Tables[0].Rows[i][2].ToString();
                    ret[i] = curr;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ret;
        }

        public DataSet SelectResidential_Agent(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT Property_Id, City, Region, Property_Address,Square_Feet, Class" +
                    " FROM Property" +
                    " WHERE Property_Id NOT IN" +
                    " (SELECT Property_Id FROM Sales) AND" +
                    " Owner_Name = " + name +
                    " AND Class = 'residential'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public DataSet SelectCommercial_Agent(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT Property_Id, City, Region, Property_Address,Square_Feet, Class" +
                    " FROM Property" +
                    " WHERE Property_Id NOT IN" +
                    " (SELECT Property_Id FROM Sales) AND" +
                    " Owner_Name = " + name +
                    " AND Class = 'commercial'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public string[] PropertyCardDetails(int ID)
        {
            string []prop_card = new string[2];
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT Owner_Name, Price" +
                    " FROM Property JOIN sales ON Property.Property_Id = sales.Property_Id" +
                    " WHERE sales.Property_Id = " + ID; 
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
                prop_card[0] = Convert.ToString(ds.Tables[0].Rows[0][0]);
                prop_card[1] = Convert.ToString(ds.Tables[0].Rows[0][1]);
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return prop_card;
        }

        public void deleteOffer(string uname,int ID)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("DeleteOffer", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@uname", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@ID", SqlDbType.Int);

                cmd.Parameters["@uname"].Value = uname;
                cmd.Parameters["@ID"].Value = ID;

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public void DeleteNotification(string ID)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                int ID1 = Convert.ToInt32(ID); 
                cmd = new SqlCommand("DeleteNotification", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@ID", SqlDbType.Int);

                cmd.Parameters["@ID"].Value = ID1;

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public DataSet OnSale(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string pass = "SELECT Sales.Property_Id,Property_Address,Region,City" +
                    " FROM Sales JOIN Property ON Sales.Property_Id  = Property.Property_Id" +
                    " WHERE Owner_Name = " + "'" + uname + "'";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public void RemoveFromSale(int ID)
        {
            int ret = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                int ID1 = Convert.ToInt32(ID);
                cmd = new SqlCommand("RemoveFromSale", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@ID", SqlDbType.Int);

                cmd.Parameters["@ID"].Value = ID1;

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
        }

        public DataSet SelectSubscribers(string uname)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                string name = "'" + uname + "'";
                string pass = "SELECT Client_Name,City" +
                    " FROM Client" +
                    " WHERE Client_Name IN" +
                    " ( SELECT [Subscriber Name] FROM Subscribers WHERE [Agent Name] = " + name + " )";
                cmd = new SqlCommand(pass, con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }
    }
}






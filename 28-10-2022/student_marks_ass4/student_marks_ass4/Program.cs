using System.Data.SqlClient;

namespace student_marks_ass4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string ConnectionString = "Data Source=INLPF1WRZPF;Initial Catalog=sanjana;trusted_connection=true";
                SqlConnection sqlCon = new SqlConnection(ConnectionString);
                sqlCon.Open();

                Console.WriteLine("Enter the Name:");
                string name = Console.ReadLine();


                SqlCommand cmd = new SqlCommand("p2", sqlCon);
                // SqlCommand cmd1 = new SqlCommand("p1", conn);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //cmd1.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.Add("@d_s_name", System.Data.SqlDbType.VarChar).Value = name;

                // cmd1.Parameters.Add("@s_name", System.Data.SqlDbType.VarChar).Value = name;

                SqlDataReader reader = cmd.ExecuteReader();

                Console.WriteLine();
                while (reader.Read())
                {

                    Console.Write("\n" + reader[0] + "  ");
                    Console.Write(reader[1] + "  ");
                    Console.WriteLine();

                }
                reader.Close();
                // SqlDataReader reader_p1 = cmd1.ExecuteReader();
                // Console.WriteLine();
                // while (reader_p1.Read())
                // {
                //     Console.Write("\n"+reader_p1[0] + "  ");
                //     Console.WriteLine(reader_p1[1] + "  ");
                // }

                Console.WriteLine("Code is working successfully");

                // reader_p1.Close();
                sqlCon.Close();
            }
            catch (SqlException exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("SQL Based Error!!");
            }
            catch (Exception ep)
            {
                Console.WriteLine(ep.Message);
                Console.WriteLine("C-Sharp Based Error!!");
            }
        }
    }
}
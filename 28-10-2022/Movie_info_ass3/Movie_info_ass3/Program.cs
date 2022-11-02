using System.Data.SqlClient;

namespace Movie_info_ass3
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

                Console.WriteLine("Enter The Choice");
                string choice = Console.ReadLine();

                string query = @"select Horror_movies,Kids_movies from Movies ";
                SqlCommand cmd = new SqlCommand(query, sqlCon);

                SqlDataReader reader = cmd.ExecuteReader();
                int i = 0;
                while(reader.Read())
                {
                    if (i == 5) break;

                    switch (choice)
                    {
                        case "horror":
                            {

                                Console.Write(reader[0]);

                            }
                            break;
                        case "kids":
                            {

                                Console.WriteLine(reader[1]);
                            }
                            break;
                    }
                    i++;
                    Console.WriteLine();
                }
                reader.Close();
                sqlCon.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("Sql problem");
                Console.WriteLine(ex.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("C# problem");
                Console.WriteLine(ex.Message);
            }
        }
    }
}
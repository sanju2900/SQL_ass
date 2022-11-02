
using System.Data.SqlClient;
namespace passport_info_ass1
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
                int i = 0;
                while (i <= 1)
                {
                    SqlCommand cmd = new SqlCommand("pass", sqlCon);
                    //to insert data in procedure of sql
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    Console.WriteLine("Enter the Passport Number:");
                    long Passport_no = Convert.ToInt64(Console.ReadLine());

                    Console.WriteLine("Enter the Candidate Name:");
                    string Candidate_name = Console.ReadLine();

                    Console.WriteLine("Enter The Passport Expiry Date:");
                    string exp_date = Console.ReadLine();

                    Console.WriteLine("Enter the Years of validity:");
                    int val_years = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Enter the Applied Through Channel:");
                    string channel_app = Console.ReadLine();

                    cmd.Parameters.Add("@pass_number", System.Data.SqlDbType.BigInt).Value = Passport_no;
                    cmd.Parameters.Add("@cand_name", System.Data.SqlDbType.VarChar).Value = Candidate_name;
                    cmd.Parameters.Add("@pass_ED", System.Data.SqlDbType.Date).Value = exp_date;
                    cmd.Parameters.Add("@yov", System.Data.SqlDbType.Int).Value = val_years;
                    cmd.Parameters.Add("@channel", System.Data.SqlDbType.VarChar).Value = channel_app;

                    cmd.ExecuteNonQuery();
                    i++;
                    Console.WriteLine("data inserting successfully");
                }
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
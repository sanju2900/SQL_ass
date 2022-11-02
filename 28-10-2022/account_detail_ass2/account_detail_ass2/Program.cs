using System.Data.SqlClient;

namespace account_detail_ass2
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

                Console.WriteLine("Enter The Account Balance");

                long bal = Convert.ToInt64(Console.ReadLine());

                string query = @"select Acc_no,cus_name,balance,Account_Details.cus_Aadhar_no
                            ,Acc_opened_date,Last_transaction_date from Account_Details 
                            INNER JOIN cus_Info  ON Account_Details.cus_Aadhar_no 
                            = cus_Info.cus_Aadhar_no  WHERE Account_Details.balance>@bal";

                SqlCommand cmd = new SqlCommand(query, sqlCon);

                cmd.Parameters.Add("@bal", System.Data.SqlDbType.BigInt).Value = bal;

                SqlDataReader reader = cmd.ExecuteReader();



                while (reader.Read())
                {
                    Console.Write(reader[0] + "  ");
                    Console.Write(reader[1] + "  ");
                    Console.Write(reader[2] + "  ");
                    Console.Write(reader[3] + "  ");
                    Console.Write(reader[4] + "  ");
                    Console.Write(reader[5] + "  ");

                    Console.WriteLine();
                }
                Console.WriteLine("Execution successfully completed!!");
                reader.Close();
                sqlCon.Close();
                Console.ReadKey();

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
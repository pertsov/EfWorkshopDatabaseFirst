namespace EfWorkshopDatabaseFirst
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // create the HR database by running the 01_create_and_populate_the_whole_hr_database.sql script

            // install the following Nuget-packages:
            //  Microsoft.EntityFrameworkCore - 8.0.3
            //  Microsoft.EntityFrameworkCore.SqlServer - 8.0.3
            //  Microsoft.EntityFrameworkCore.Tools - 8.0.3

            // use EF CLI tools to scaffold conceptual models by reverse engineering the existing database tables
            //  go to the Package Manager Console (use Visual Studio search at the top if needed)
            //  select EfWorkshopDatabaseFirst in the Default project dropdown
            //  go into EfWorkshopDatabaseFirst directory: cd EfWorkshopDatabaseFirst
            //  install the dotnet EF CLI toolset: dotnet tool install --global dotnet-ef --version 8.0.3
            //  scaffold conceptual models:
            //      dotnet ef dbcontext scaffold "Server=localhost;Database=HR;Trusted_Connection=True;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -o "Models"

            // the dbcontext scaffold command explained
            //  dotnet ef dbcontext scaffold: a command that generates code for DbContext and entity types for a database
            //  "Server=localhost;Database=HR;Trusted_Connection=True;TrustServerCertificate=True;": an argument that represents the database connection string
            //  Microsoft.EntityFrameworkCore.SqlServer: an argument that represents the EF database adapter that is used to connect to the database (MS SQL Server in our case)
            //  -o "Models": an argument that represents an output directory for the generator C# class files (the directory is created automatically if does not already exist)

            // learn more about Entity Framework Core CLI tools: https://learn.microsoft.com/en-us/ef/core/cli/dotnet
        }
    }
}
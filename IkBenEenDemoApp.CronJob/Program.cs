using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

class Program
{
    static async Task Main(string[] args)
    {
        // Build configuration from appsettings.json and environment variables.
        var config = new ConfigurationBuilder()
            .AddJsonFile("appsettings.json", optional: true)
            .AddEnvironmentVariables()
            .Build();

        var taskName = config["TaskName"] ?? "DefaultTask";
        Console.WriteLine($"CronJob starting task: {taskName} at {DateTime.UtcNow}");

        try
        {
            await Task.Delay(2000);
            Console.WriteLine("Task completed successfully.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Error occurred while executing the task: {ex.Message}");
        }
    }
}
using System;
using System.IO;
using System;
using System.Data;

Console.WriteLine("Hello world from .Net 7.0!");

Console.WriteLine("Simple Calculator\n");

while (true)
{
    Console.Write("Enter an expression (e.g., 2 + 3): ");
    string expression = Console.ReadLine();

    try
    {
        object result = new DataTable().Compute(expression, null);
        Console.WriteLine($"Result: {expression} = {result}\n");
    }
    catch (Exception)
    {
        Console.WriteLine("Invalid expression or operation.");
    }

    Console.Write("Do you want to perform another calculation? (y/n): ");
    string choice = Console.ReadLine();
    if (choice.ToLower() != "y")
        break;
    Console.WriteLine();
}
Console.WriteLine("Calculator exited.");

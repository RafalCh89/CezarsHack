using System;

using System.Linq;

namespace Program1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter Text:");
            String sign = Console.ReadLine();
            Console.WriteLine("Enter Shift:");
            int shift = Console.Read();
            Console.WriteLine("Hacked:");
            for (int i = 0; i < sign.Length; i++)
            {
                int number = sign.ElementAt(i);
                int x = 0;
                if (number > 96)
                    x = 97 + (number + shift - 93) % 26;
                else if (number == 32)
                    x = 32;
                else
                    x = 65 + (number + shift - 61) % 26;
                char signhacked = (char)x;
                Console.Write("" + signhacked);
            }
            Console.ReadKey();
        }
    }
}


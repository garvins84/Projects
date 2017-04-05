using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication12
{
    class Program
    {
        static void Main(string[] args)
        {
            int counter = 0;
            //do
            //{
                //initialize a game
                Game newgame = new Game();
                newgame.GameStart();
                Console.WriteLine("Keep do?");
                ++counter;
            //} while (counter < 10000000);
        }
    }
}

/*File that contains all operations for a human player*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication12
{
    class Player
    {
        private int playerNum;
        private char playerSymbol;
        private bool human;
        private bool win;

        public bool Win
        {
            get
            {
                return this.win;
            }
            set
            {
                this.win = value;
            }
        }

        public bool Human
        {
            get
            {
                return this.human;
            }
            set
            {
                this.human = value;
            }
        }

        public int PlayerNum
        {
            get
            {
                return this.playerNum;
            }
            set
            {
                this.playerNum = value;
            }
        }
        public char PlayerSym
        {
            get
            {
                return this.playerSymbol;
            }
            set
            {
                this.playerSymbol = value;
            }
        }
        public void Move (ref int xMove, ref int yMove)
        {
            Random rnd = new Random();

            if (human)
            {
                Console.WriteLine("Input x coordinate?");
                xMove = (Console.Read() - 48);
                Console.ReadLine();

                Console.WriteLine("Input y coordinate?");
                yMove = (Console.Read() - 48);
                Console.ReadLine();
            }
            else
            {
                xMove = rnd.Next(0,5);
                yMove = rnd.Next(0,5);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication12
{
    class GameBoard
    {
        const int MAX_Y = 5, MAX_X = 5, BORDER1 = 1, BORDER2 = 3;
        private char[,] world = new char [MAX_Y,MAX_X];
        private int gameState;
        private int playerTurn;

        //player turn constructor
        public int PlayerTurn
        {
            get
            {
                return this.playerTurn;
            }
            set
            {
                this.playerTurn = value;
            }
        }

        //game state constructor
        public int GameState
        {
            get
            {
                return this.gameState;
            }
            set
            {
                this.gameState = value;
            }
        }

        public char[,] World
        {
            get
            {
                return world;
            }
            set
            {
                world = value;
            }
        }

        //empty game board
        public void InitializeBoard()
        {
            for (int i = 0; i < MAX_X; ++i)
            {
                for (int j = 0; j < MAX_Y; ++j)
                {
                    if (j == 1 || j == 3)
                        world[i, j] = '|';
                    if (i == 1 || i == 3)
                        world[i, j] = '-';
                }
            }
        }

        //validate winning state
        public bool CheckWin(ref Player player1, ref Player player2, ref bool tie)
        {
            int counterx = 0;
            int countery = 0;

            if (world[0, 0] == 'x' && world[2, 2] == 'x' && world[4, 4] == 'x' || world[0, 4] == 'x' && world[2, 2] == 'x' && world[4, 0] == 'x')
            {
                player1.Win = true;
                return true;
            }

            else if (world[0, 0] == 'o' && world[2, 2] == 'o' && world[4, 4] == 'o' || world[0, 4] == 'o' && world[2, 2] == 'o' && world[4, 0] == 'o')
            {
                player2.Win = true;
                return true;
            }
            else
            {
                for (int i = 0; i < MAX_X; ++i)
                {
                    counterx = 0;
                    countery = 0;
                    for (int j = 0; j < MAX_Y; ++j)
                    {
                        if (world[i, j] == 'x')
                            ++counterx;
                        else if (world[i, j] == 'o')
                            ++countery;
                        if (counterx == 3)
                        {
                            player1.Win = true;
                            return true;
                        }
                        else if(countery == 3)
                        {
                            player2.Win = true;
                            return true;
                        }

                    }
                }
                for (int j = 0; j < MAX_X; ++j)
                {
                    counterx = 0;
                    countery = 0;

                    for (int i = 0; i < MAX_Y; ++i)
                    {
                        if (world[i, j] == 'x')
                            ++counterx;
                        else if (world[i, j] == 'o')
                            ++countery;
                        if (counterx == 3)
                        {
                            player1.Win = true;
                            return true;
                        }
                        else if (countery == 3)
                        {
                            player2.Win = true;
                            return true;
                        }
                    }
                }
            }
            counterx = 0;
            countery = 0;
            for (int j = 0; j < MAX_X; ++j)
            {
                for (int i = 0; i < MAX_Y; ++i)
                {
                    if (world[i, j] == 'x')
                        ++counterx;
                    else if (world[i, j] == 'o')
                        ++countery;
                    if ((counterx == 5 && countery == 4) || (counterx == 4 && countery == 5))
                    {
                        player1.Win = false;
                        player2.Win = false;
                        tie = true;
                        return true;
                    }
                }
            }
            return false;
        }
        public void PrintBoard()
        {

            for (int i = 0; i < MAX_X; ++i)
            {
                for (int j = 0; j < MAX_Y; ++j)
                {
                    Console.Write(world[i, j]);
                }
                Console.WriteLine();
            }
            Console.WriteLine();
        }
        public bool ValidateMove(int xVal, int yVal)
        {
            if (xVal >= MAX_X || xVal == BORDER1 || xVal == BORDER2 || xVal < 0 || yVal >= MAX_Y || yVal == BORDER1 || yVal == BORDER2 || yVal < 0)
                return false;
            if (world[xVal, yVal] == 'x' || world[xVal, yVal] == 'o')
                return false;
            return true;
        }
        public void CommitMove(int xVal, int yVal, Player player)
        {
            world[xVal, yVal] = player.PlayerSym;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication12
{
    class Game
    {
        
        Agent testAgent = new Agent();
        GameBoard mainBoard = new GameBoard();
        Player player1 = new Player();
        Player player2 = new Player();
        int userXCoordinate;
        int userYCoordinate;
        


        public void GameStart()
        {
            int turnNumber = 1;
            bool valid = false;
            string path1 = "C:\\Users\\Owner\\Desktop\\SearchSpace1.txt";
            bool tie = false;
            mainBoard.GameState = 0;
            mainBoard.InitializeBoard();
            player1.PlayerNum = 1;
            player1.PlayerSym = 'o';
            player1.Human = false;
            player1.Win = false;
            player2.PlayerNum = 2;
            player2.PlayerSym = 'x';
            player2.Human = false;
            player2.Win = false;
            mainBoard.PlayerTurn = 1;

            //keep track of turns, and see if a winning state is encountered
            while (mainBoard.GameState == 0)
            {
                if (mainBoard.PlayerTurn == 1)
                {
                    Console.WriteLine("Player 1's turn");
                    do
                    {
                        player1.Move(ref userXCoordinate, ref userYCoordinate);
                        valid = mainBoard.ValidateMove(userYCoordinate, userXCoordinate);
                        if (valid)
                        {
                            mainBoard.CommitMove(userYCoordinate, userXCoordinate, player1);
                            mainBoard.PlayerTurn = 2;
                        }
                    } while (!valid);
                    
                }
                else
                {
                    Console.WriteLine("Player 2's turn");
                    do
                    {
                        player2.Move(ref userXCoordinate, ref userYCoordinate);

                        valid = mainBoard.ValidateMove(userYCoordinate, userXCoordinate);
                        if (valid)
                        {
                            mainBoard.CommitMove(userYCoordinate, userXCoordinate, player2);
                            mainBoard.PlayerTurn = 1;
                        }
                    } while (!valid);
                }
                //mainBoard.PrintBoard();
                testAgent.PopulateGameTree(mainBoard, ref turnNumber, tie, ref path1);
                if (mainBoard.CheckWin(ref player1,ref player2, ref tie))
                {
                    mainBoard.GameState = 1;
                    if (tie == false)
                    {
                        if (player1.Win == true)
                            Console.WriteLine("Player " + player1.PlayerNum + " wins!");
                        else if (player2.Win == true)
                            Console.WriteLine("Player " + player2.PlayerNum + " wins!");
                    }
                    else
                        Console.WriteLine("tie!");
                    //testAgent.saveConfiguration(mainBoard, ref turnNumber,tie, ref path1);
                }
            }
            
        }
    }
}

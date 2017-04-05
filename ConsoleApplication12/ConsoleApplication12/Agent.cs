/*File contains operations for an agent, this includes saving game configurations*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;

namespace ConsoleApplication12
{
    class Agent
    {
        
        public void saveConfiguration(GameBoard board, ref int turnNumber, bool tie, ref string path1)
        {
            bool match = false;
            int k = 1;
            string line;
           
            string hash = "";
            char[] splitChar = { 'E' };
            string[] gameState1 = { };
            
            //Put the turn number at the start of each move hash
            hash += turnNumber + "S";

            //Generate the hash to contain character values for 
            //each symbol in the current move. 
            //Z is an arbitrary symbol to separate the integer values of characters, 
            //for ease of parsing.
            for (int i = 0; i < 5; ++i)
            {
                for (int j = 0; j < 5; ++j)
                {
                    hash += (int)board.World[i, j];
                    hash += 'Z';
                }
            }
            //If the game is not won, E simply represents the end of the string for parsing.
            if (board.GameState != 1)
                hash += "E";
            //if the game is won, W is a placeholder to get the value -1
            //representing the value for the agent if player wins
            if (board.GameState == 1 && board.PlayerTurn == 1)
                hash += "W-1E";
            //if the game is won by the agent, 1 is beneficial
            else if (board.GameState == 1 && board.PlayerTurn == 2)
                hash += "W1E";
            else if (tie == true)
                hash += "W0E";
            
            //check if there is a file for writing
            if (!File.Exists(path1))
            {
                using (StreamWriter sw = File.CreateText(path1));
            }
            //open a file for reading
            System.IO.StreamReader filein = new System.IO.StreamReader(path1);
            
            //put contents of file into an arbitrary string, called line.
            line = filein.ReadLine();
            filein.Close();

            //place contents of line into a new string, parsing on the character E
            if (line != null)
            {
                gameState1 = Regex.Split(line, @"(?<=[E])");
                
                while ((gameState1[0].Contains("1S") && hash.Contains("1S")) && (gameState1[0] != hash))
                {
                    path1 = "C:\\Users\\Owner\\Desktop\\SearchSpace" + k + ".txt";

                    if (!File.Exists(path1))
                    {
                        using (StreamWriter sw = File.CreateText(path1)) ;
                    }

                    if (line != null)
                    {
                        filein = new System.IO.StreamReader(path1);

                        //put contents of file into an arbitrary string, called line.
                        line = filein.ReadLine();
                        filein.Close();
                        if (line != null)
                            gameState1 = Regex.Split(line, @"(?<=[E])");
                    }
                    if (line == null)
                    {
                        for (int i = 0; i < gameState1.Length; ++i)
                            gameState1[i] = line;
                        break;
                    }
                    ++k;
                }
            }
            if (line != null)
            {
                gameState1 = Regex.Split(line, @"(?<=[E])");
            }
             
            //see if the specified hash already exists in the array
                foreach (var state in gameState1)
            {
                if (state == hash)
                    match = true;
            }

            //only write new hash into file if there isn't a duplicate
            if (match == false)
            {
                using (System.IO.StreamWriter file =
                new System.IO.StreamWriter(path1))
                {

                    file.Write(line);
                    file.Write(hash);
                    file.Close();
                }
            }
            //Console.WriteLine(path1);
            ++turnNumber;
        }
        //store items to search for the correct move to take
        public void PopulateGameTree(GameBoard board, ref int turnNumber, bool tie, ref string path1)
        {
            int childCounter = 0;
            char tempChar = ' ';
            string line;
            string[] gameState1 = { };
            char[] tempArray;
            System.IO.StreamReader filein = new System.IO.StreamReader(path1);
            line = filein.ReadLine();
            filein.Close();
            gameState1 = Regex.Split(line, @"(?<=[E])");
            TreeNode<string> miniMaxTree = new TreeNode<string>(gameState1[0]);
            TreeNode<string> tempTree = new TreeNode<string>("");
            tempTree = miniMaxTree;

            //detokenize items in a file to recreate the game board for a particular move
            for (int i = 1; i < gameState1.Count(); ++i)
            {
                int tempCounter = 0;
                tempArray = gameState1[i].ToCharArray();
                tempChar -= ' ';
                for (int l = 2; l < tempArray.Count(); ++l)
                {


                    if (tempArray[l] == 'Z' || tempArray[l] == 'E' || tempArray[l] == 'E')
                    {
                        Console.WriteLine(tempChar);

                        tempChar = ' ';
                        tempChar -= ' ';
                        continue;
                    }
                    if (tempArray[l] == '0')
                        tempChar = ' ';
                    else if (tempArray[l] == '1' && tempArray[l + 1] == '2' && tempArray[l + 2] == '4')
                        tempChar = '|';
                    else if (tempArray[l] == '4' && tempArray[l + 1] == '5')
                        tempChar = '-';
                    else if (tempArray[l] == '1' && tempArray[l + 1] == '1' && tempArray[l + 2] == '1')
                        tempChar = 'o';
                    else if (tempArray[l] == '1' && tempArray[l + 1] == '2' && tempArray[l + 2] == '0')
                        tempChar = 'x';



                }
                string tempString = "";
                int tempInt = System.Convert.ToInt32(gameState1[i].First() - 48);
                Console.WriteLine(tempInt);
                //attempt to search a game tree for a proper move
                if (i > (tempInt - 1))
                {
                    if (gameState1[i].Contains("2S"))
                    {
                        tempTree = miniMaxTree;
                        while (!tempTree.data.Contains("1s"))
                        {                            
                            //tempTree = tempTree.GetChild();
                        }
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("3S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("4S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("5S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("6S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("7S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("8S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("9S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("10S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("11S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    tempInt = 0;
                }
                else
                {
                    if (gameState1[i].Contains("2S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("3S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("4S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("5S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("6S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("7S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("8S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("9S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("10S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                    if (gameState1[i].Contains("11S"))
                    {
                        tempTree.AddChild(gameState1[i]);
                        tempTree = tempTree.GetChild(1);
                    }
                }
                ++tempCounter;
            }
        }
    }
}

%% The TicTacToe Game %%
% This plays tic tac toe
% Written by: Sydney Brewster

% This game plays TicTacToe. It will ask you (the user) if you want to
% play. Then it will ask you what space you want to move ("X") and then the
% computer will choose a space to move ("O"). Good luck!

% Tested using Matlab 2023a
% Tested on ASUS
% Last updated: 9/26/23

% Welcome message
disp('Welcome to my TicTacToe game!')
userAnswer = input("Shall we play a game? Please type y or n (case sensitive): ","s");

% User input for y/n
while userAnswer ~= ('y')
    if userAnswer == 'n'
        disp('Rude. Whatever, we didnt want to play with you anyways');
        return;
    else 
        userAnswer = input("Invalid response. Enter y or n: ","s");
    end
end

userWin = false;
compWin = false;

% while loop allows gameplay if user input is 'y' and for game restarts

while (userAnswer == "y" && userWin == false && compWin == false)
        board = ["1" "2" "3"; "4" "5" "6"; "7" "8" "9"];
        disp(board)

% for loop created for all available moves
for moves = 1:9
        userMoveNum = 0;
        compMoveNum = 0;
       
        % while loop for user move in proper order
        while (userMoveNum == compMoveNum && userWin == false && compWin == false)
        disp('Enter a number between 1 and 9 for that has not been used to play.');
        userMove = input("What is your selected space?: ","s");
            if (userMove == "1" && board (1,1) == '1')
                board(1,1) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "2" && board (1,2) == '2')
                board(1,2) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "3" && board (1,3) == '3')
                board(1,3) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "4" && board (2,1) == '4')
                board(2,1) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "5" && board (2,2) == '5')
                board(2,2) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "6" && board (2,3) == '6')
                board(2,3) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "7" && board (3,1) == '7')
                board(3,1) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "8" && board (3,2) == '8')
                board(3,2) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            elseif (userMove == "9" && board (3,3) == '9')
                board(3,3) = 'X';
                userMoveNum = userMoveNum + 1;
                disp(board)
            end
        end
        
        % check for win after user move and breaks if win found
        if (board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X')
            disp('Winner winner, chicken dinner!')
            userWin = true;
            break;
        elseif (board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X')
            disp('Winner winner, chicken dinner!')
            userWin = true;
            break;
        elseif (board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X')
            disp('Gold star for you! You win!')
            userWin = true;
            break;
        elseif (board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X')
            disp('Well played, human, well played. You win.')
            userWin = true;
            break;
        elseif (board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X')
            disp('You win this time human...')
            userWin = true;
            break;
        elseif (board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X')
            disp('Congrats, you win!')
            userWin = true;
            break;
        elseif (board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X')
            disp('Well played, human, well played. You win.')
            userWin = true;
            break;
        elseif (board(1,3) == 'X' && board(2,2) == 'X' && board(3,1) == 'X')
            disp('All you do is win win win no matter what')
            userWin = true;
            break;
        elseif (board(1,1) ~= '1' && board (1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= '4' && board (2,2) ~= '5' && board(2,3) ~= '6' && board(3,1) ~= '7' && board (3,2) ~= '8' && board(3,3) ~= '9')
            disp('Looks like we both suck at this game, its a tie!')
            userWin = true;
            break;
        end
    
        % while loop for computer move
        while (compMoveNum == userMoveNum - 1 && userWin == false && compWin == false)
            disp("Computer is thinking...");
            compMove = randi([11 19]);
            if (compMove == 11 && board (1,1) == '1')
                board(1,1) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 12 && board (1,2) == '2')
                board(1,2) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 13 && board (1,3) == '3')
                board(1,3) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 14 && board (2,1) == '4')
                board(2,1) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 15 && board (2,2) == '5')
                board(2,2) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 16 && board (2,3) == '6')
                board(2,3) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 17 && board (3,1) == '7')
                board(3,1) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 18 && board (3,2) == '8')
                board(3,2) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            elseif (compMove == 19 && board (3,3) == '9')
                board(3,3) = 'O';
                compMoveNum = compMoveNum + 1;
                disp(board)
            end
        end
        
        % checking for computer win
        if (board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O')
            disp('You lost :( ')
            compWin = true;
            break;
        elseif (board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O')
            disp('Suck it. The computer is smarter than you')
            compWin = true;
            break;
        elseif (board(3,1) =='O' && board(3,2) == 'O' && board(3,3) == 'O')
            disp('Go update your resume special skills to being horrible at TicTacToe')
            compWin = true;
            break;
        elseif (board(1,1) == 'O' && board(2,1) =='O' && board(3,1) == 'O')
            disp('Better luck next time, loser.')
            compWin = true;
            break;
        elseif (board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O')
            disp('Suck it. The computer is smarter than you.')
            compWin = true;
            break;
        elseif (board(1,3) =='O' && board(2,3) == 'O' && board(3,3) == 'O')
            disp('How did you possibly lose???')
            compWin = true;
            break;
        elseif (board(1,1) == 'O' && board(2,2) =='O' && board(3,3) == 'O')
            disp('Evidently, you suck at this game.')
            compWin = true;
            break;
        elseif (board(1,3) == 'O' && board(2,2) =='O' && board(3,1) == 'O')
            disp('Hah. You lose.')
            compWin = true;
            break;
        elseif (board(1,1) ~= '1' && board (1,2) ~= '2' && board(1,3) ~= '3' && board(2,1) ~= '4' && board (2,2) ~= '5' && board(2,3) ~= '6' && board(3,1) ~= '7' && board (3,2) ~= '8' && board(3,3) ~= '9')
            disp('Looks like we both suck at this game, its a tie!')
            compWin = true;
            break;
        end
        
end

    % play again loop, asking for user input
    for userAnswer = input("Shall we play again? Please type y or n: ","s")
        if userAnswer == 'y'
            userWin = false;
            compWin = false;
        elseif userAnswer == 'n'
            disp('Sad to see you go, have a nice day :) ');
            return;
        end
    end

end
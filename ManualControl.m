global key
InitKeyboard();

brick.SetColorMode(2,2);

while 1
        pause(0.1);
        switch key
            case 'uparrow'
                brick.MoveMotor('AB', 50);
                pause(1);
                brick.StopMotor('AB');
            case 'downarrow'
                brick.MoveMotor('AB', -50);
                pause(1);
                brick.StopMotor('AB');
            case 'leftarrow'
                brick.MoveMotor('A', 50);
                pause(1);
                brick.StopMotor('A');
            case 'rightarrow'
                brick.MoveMotor('B', 50);
                pause(1);
                brick.StopMotor('B');
            case 'w'
                brick.MoveMotor('C',50);
                pause(1)
                brick.MoveMotor('C',-50);
                pause(1)
                brick.StopMotor('C');
            case 'b'
                disp(brick.ColorCode(2));
            case 0
                brick.StopMotor('AB', 'Cruise');
            case 'q'
                brick.StopMotor('A');
                brick.StopMotor('B');
                break;
        end
end
CloseKeyboard();
%{
brick.MoveMotor('c',50);
pause(5);
brick.MoveMotor('c',-50);
pause(5);
brick.StopMotor('c');
%}
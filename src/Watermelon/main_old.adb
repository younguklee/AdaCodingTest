with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Math_Tools; use Math_Tools;

procedure Main is
    C:Character;
    CountTry:Integer:=10;
    Result:Boolean := False;
    WaterMelonWeight:Integer := 0;
    DivideNumber:Integer := 0;
begin
        Get(WaterMelonWeight);
        if WaterMelonWeight < 2 then
            Put_Line("The watermelon is too samll.");
            Put_Line("size: "&Integer'Image(WaterMelonWeight));
            Return;
        end if;
    while CountTry > 0 loop
        CountTry := CountTry -1;

        Get(DivideNumber);
        if DivideNumber < 2 then 
            Put_Line("The divideNumber is too samll.");
            Put_Line("Divide Number: " &Integer'Image(DivideNumber));
            Return;
        end if;

        Result := Math_Tools.IsEvenWhenDivide(WaterMelonWeight, DivideNumber);

        if Result = True then
            Put_Line("Yes");
        else
            Put_Line("No");
            exit;
        end if;
    end loop;

    Ada.Text_IO.Get_Immediate(C);
end Main;
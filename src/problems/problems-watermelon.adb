with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Utils.Math_Tools; use Utils.Math_Tools;

package body Problems.Watermelon is
   function Can_Divide(W : Integer; DivideNum : Integer) return Boolean is
   begin
      if w <= 2 then
         return False;
      end if;

      if DivideNum <= 1 then
         return False;
      end if;

      return Utils.Math_Tools.IsEvenWhenDivide(w, DivideNum);
   end Can_Divide;

   function Run return Boolean is
   WatermelonWeight, Divider : Integer;
   C:Character;
   begin
      Get(WatermelonWeight);
      Get(Divider);
      if Can_Divide(WatermelonWeight, Divider) then
         Put_Line("Yes");
      else
         Put_Line("No");
      end if;

      Put_Line("Press any key to exit...");
      Ada.Text_IO.Get_Immediate (C);

      return True;
   end Run;
end Problems.Watermelon;
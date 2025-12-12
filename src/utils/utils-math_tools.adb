with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Utils.Math_Tools is
   function IsEvenNumber(InputValue:Integer) return Boolean is
   begin
      return InputValue mod 2 = 0;
   end IsEvenNumber;

   function IsEvenWhenDivide(Weight, InputValue:Integer) return Boolean is
      FirPiece:Integer := 0;
      SecPiece:Integer := 0;
   begin
      
      if InputValue > Weight then
         return False;
      end if;

      FirPiece := Weight - InputValue;
      SecPiece := Weight - FirPiece;

      if IsEvenNumber(FirPiece) And IsEvenNumber(SecPiece) then
         return True;
      else 
         return False;
      end if;
   end IsEvenWhenDivide;
end Utils.Math_Tools;




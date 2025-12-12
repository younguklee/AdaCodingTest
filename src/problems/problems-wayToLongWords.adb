with Ada.Text_IO; use Ada.Text_IO;
package body Problems.WayToLongWords is
   type String_Array is array(Positive range<>) of Unbounded_String;   
   function GetWord(numberLetter:Integer) return String_Array is
   Inputs : String_Array(1..numberLetter);
   begin
      Inputs := GetWords(numberLetter);
      return Inputs;
   end GetWord;

   function Run return Boolean is
   C:Character;
   N: Positive;
   Inputs : array(1..N) of Unbounded_String;
   begin
      Put_Line("Run function is working.");
         Get(Positive);
      Inputs := GetWords(N);
      Ada.Text_IO.Get_Immediate(C);
      return False;
   end Run;
end Problems.WayToLongWords; 
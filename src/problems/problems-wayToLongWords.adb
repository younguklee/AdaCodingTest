with Ada.Text_IO; use Ada.Text_IO;
package body Problems.WayToLongWords is
   function Run return Boolean is
   C:Character;
   begin
      Put_Line("Press any key to exit...");

      Put_Line("Run Function is working.");
      Ada.Text_IO.Get_Immediate(C);
      return False;
   end Run;
end Problems.WayToLongWords; 
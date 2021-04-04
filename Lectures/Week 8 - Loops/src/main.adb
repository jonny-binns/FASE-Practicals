with Loops; use Loops;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
 x : Eights := 8;
begin
   Put_Line("Test case 8");
   CeaseAgain(x);
   Put_Line(Integer'Image(Integer(x)));
end Main;

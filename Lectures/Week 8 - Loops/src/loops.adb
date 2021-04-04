package body loops with SPARK_Mode is

   procedure Increase (s : in out Slots)
   is
      Pos : Indx := s'First;
   begin
      while Pos < s'Last loop
         s(Pos) := Nums'Last;
         Pos := Pos + 1;
         pragma Loop_Invariant
           (for all J in 1..(Pos-1) => s(J) = Nums'Last);
      end loop;
      s(s'Last) := Nums'Last;
   end Increase;

   function Chg (x : Eights) return Eights
   is
   begin
      case x is
         when 1 => return 8;
         when 2 => return 1;
         when 3 => return 3;
         when 4 => return 2;
         when 5 => return 6;
         when 6 => return 3;
         when 7 => return 6;
         when 8 => return 4;
      end case;
   end Chg;

   procedure Cease (x : in out Eights)
   is
   begin
      while (x/= Chg(x)) loop
         x := Chg(x);
      end loop;
   end Cease;


   procedure CeaseAgain (x : in out Eights)
   is
   begin
      for I in 1..5 Loop
         x := Chg(x);
      end loop;
   end CeaseAgain;


end loops;

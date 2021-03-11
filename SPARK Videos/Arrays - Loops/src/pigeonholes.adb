package body PigeonHoles with SPARK_mode
is

   procedure PigeonBeGone (d : in out PigeonHole) is
    --  a : PH_Index := d'First;
    --  b : PH_Index := d'Last;
    --  c : Integer := d'Length;
    -- d'Range

    Pos : PH_Index := d'First;
   begin
      while Pos < d'Last loop
         d(pos) := Dove;
         Pos := Pos + 1;
      end loop;
      d(d'last) := Dove;

   end PigeonBeGone;

   procedure DoveBeGone (d : in out PigeonHole) is
      a : PH_Index := d'First;
      b : PH_Index := d'Last;
   begin
      for I in a..b loop
         d(I) := Pigeon;
      end loop;
   end DoveBeGone;


end PigeonHoles;

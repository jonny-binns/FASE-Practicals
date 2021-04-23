package body PigeonHoles with SPARK_Mode
is

   procedure PigeonBeGone (d : in out PigeonHole)
   is
      Pos : PH_Index := d'First;
   begin
      while Pos < d'Last loop
         d(Pos) := dove;
         Pos := Pos + 1;
         pragma Loop_Invariant (for all J in d'First..(Pos-1) => d(J) /= Pigeon);
         pragma Loop_Variant (Increases => Pos);
      end loop;
      d(d'Last) := Dove;
   end PigeonBeGone;

   function CountBirds (d: PigeonHole; b: Box) return Integer
   is bs : Integer := 0;
      n : PH_Index := d'First;
      m : PH_Index := d'Last;
   begin
      for I in n..m loop
         if d(I) = b then bs := bs+1; else bs := bs; end if;
      end loop;
      return bs;
   end CountBirds;

   procedure SubsituteBird (d : in out PigeonHole; n : PH_Index; b : Box)
   is
   begin
      d(n) := b;
   end SubsituteBird;

   function birdIndex (d : PigeonHole; b : Box) return PH_Index
   is
      pos : PH_Index := d'first;
   begin
      while(pos < d'Last) loop
         if d(pos) = b then
            return pos;
         end if;
         pragma Loop_Invariant
           (for all I in d'First..pos => d(I) /= b);
         pos := pos + 1;
      end loop;
      return pos;
      end birdIndex;



end PigeonHoles;

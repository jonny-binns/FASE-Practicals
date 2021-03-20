package body slides with SPARK_Mode
is

   procedure OpenDoor is
   begin
      Door := Open;
   end OpenDoor;

   procedure SendChild ( c : in out Capacity)
   is
   begin
      if (Door = Open) then
         --Enterance := Full;
         Door := Closed;
         Enterance := Empty;
         Slide := Full;
         c := c+1;
      else null;
      end if;
   end SendChild;



end slides;

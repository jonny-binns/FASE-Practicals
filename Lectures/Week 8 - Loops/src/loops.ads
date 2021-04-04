package loops with SPARK_Mode is

   type Nums is range 1..50;

   type Indx is range 1..10;

   type Slots is array (Indx) of Nums;

   type Eights is range 1..8;

   procedure Increase (s : in out Slots) with
     Post => (for all J in s'Range => s(J) = Nums'Last);

   function Chg (x : Eights) return Eights;

   procedure Cease (x : in out Eights);

   procedure CeaseAgain (x : in out Eights);

end loops;

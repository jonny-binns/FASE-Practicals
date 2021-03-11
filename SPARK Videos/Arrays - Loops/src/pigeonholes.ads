package PigeonHoles with SPARK_mode
is

   type Box is (Pigeon, Dove);
   type PH_Index is range 1..20;

   type PigeonHole is array(PH_Index) of Box;

   procedure PigeonBeGone (d : in out PigeonHole) with
   Post => (for all J in d'Range => d(j) /= Pigeon);

   procedure DoveBeGone (d : in out PigeonHole) with
   Post => (for all J in d'Range => d(J) /= Dove);

end PigeonHoles;

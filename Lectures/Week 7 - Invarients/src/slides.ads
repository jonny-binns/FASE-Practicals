package slides with SPARK_Mode
is
   type Position is (Open, Closed);
   type Area is (Full, Empty);
   type Capacity is range 1..50;

   Enterance : Area;
   Utgang : Area;
   Slide : Area;
   Door : Position;

   function Invarient return Boolean is
    ((Slide = Empty and Utgang = Empty) or (Door = Closed));

   procedure OpenDoor with
     Global => (Proof_In => (Slide,Utgang), In_Out => Door),
     Pre => Invarient and (Slide = Empty and Utgang = Empty),
     Post => Invarient and (Door = Open);

   procedure SendChild (c : in out Capacity) with
     Global => (Input => Utgang, In_Out => (Enterance, Slide,Door)),
       Pre => Invarient and c < Capacity'Last and
       (if (Door = Open) then (c/=9) and
        (if (Door = Closed) then (Slide = Full and c/=10 and Invarient))),
     Post => Invarient and c/= 10 and Slide = Full;

end slides;

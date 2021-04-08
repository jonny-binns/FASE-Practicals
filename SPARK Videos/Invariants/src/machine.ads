package Machine with SPARK_Mode
is
   type Tickets is range 0..1000;
   serving : Tickets := 0;
   next : Tickets := 1;

   function Inveriant return Boolean is
      (serving <= next);

   procedure takeTicket with
     Global => (In_Out => next, Input => serving),
     Pre => next < Tickets'Last and then Inveriant,
     Post => Inveriant;

   procedure serveCustomer with
     Global => (In_Out => serving, Input => next),
     Pre => serving < next and then Inveriant,
     Post => Inveriant and serving = serving'Old + 1;

   procedure returnTicket (K : Tickets) with
     Global => (In_Out => next, Input => serving),
     Pre => serving < next and then Inveriant,
     Post => Inveriant;

end Machine;

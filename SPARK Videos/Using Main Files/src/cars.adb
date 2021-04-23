Package body Cars with SPARK_Mode is

   procedure StartCar is
   begin
      --if (BatMobile.CarKey = Present) then
        -- BatMobile.Ignition := On;
        --end if;

      BatMobile.Ignition := On;

   end StartCar;



end Cars;

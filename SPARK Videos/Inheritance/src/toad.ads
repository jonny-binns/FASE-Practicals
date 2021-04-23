with Sausages; use Sausages;
with Batter; use Batter;

package Toad with SPARK_Mode is

   type ToadInTheHole is record
      Banger: Sausage;
      Yorkshire : Mixture;
   end record;

   procedure SellToKababShop (t : in out ToadInTheHole) with
     Pre => t.Banger.Filling = Veg,
     Post => t.Banger.Filling = Meat and t.Banger.Rating = Spicy;

   procedure MakeFitForNursingHome (t : in out ToadInTheHole) with
     Pre => t.Yorkshire.Flour = Normal,
       Post => t.Banger.Rating = Mild and t.Yorkshire.Flour = GlutenFree;

end Toad;

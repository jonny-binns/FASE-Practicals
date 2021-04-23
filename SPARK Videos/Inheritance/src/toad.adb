with Sausages; use Sausages;
with Batter; use Batter;

package body Toad with SPARK_Mode is

   procedure SellToKababShop (t : in out ToadInTheHole) is
   begin
      Contaminate(t.Banger);
      Varmere(t.Banger);
   end SellToKababShop;

   procedure MakeFitForNursingHome (t : in out ToadInTheHole) is
   begin
      Kaldere(t.Banger);
      MakeSafe(t.Yorkshire);
   end MakeFitForNursingHome;

end Toad;

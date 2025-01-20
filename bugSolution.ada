```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 1;
   if X > 10 then
      Put_Line("X is greater than 10");
   else
      X := X + 11; --The solution is to check before assigning
      if X > 10 then
          X := 10; -- If outside range, set to maximum or handle appropriately
          Put_Line("X is greater than 10, setting X to 10");
      end if;
      Put_Line("X = " & Integer'Image(X));
   end if;
end Example;
```
```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 1;
   if X > 10 then
      Put_Line("X is greater than 10");
   end if;
   X := X + 11; -- This line causes a CONSTRAINT_ERROR
   Put_Line("X = " & Integer'Image(X));
end Example;
```
var {:layer 0,2} x:int;

procedure {:yields}{:layer 1}{:refines "A_Callback"} Service ()
{
  async call {:sync} Callback();
}

procedure {:both}{:layer 1,2} A_Callback ()
modifies x;
{ x := x + 1; }
procedure {:yields}{:layer 0}{:refines "A_Callback"} Callback ();

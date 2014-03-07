program divisible;
uses crt, graph;

var x, y: integer;
    dx, dy: integer;
    m: integer;
    gd, gm: integer;

begin

initgraph(gd, gm, '');
detectgraph(gd, gm);

readln(m);

setcolor(red);
line(0,450,1200,450);
line(600,0,600,900);

for x := 0 to (1200 div m) do begin

    for y := 0 to (900 div m) do begin

        dx := x - (600 div m);
        dy := y - (450 div m);

        if ((dx <> 0) and (dy mod dx = 0)) then begin
            putpixel(x*m, y*m, green);
        end;

    end;

end;

readkey;
closegraph;

end.

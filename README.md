Conway's Game of Life - Tech Test
=================================

Rules
-----
* The game evolves in turns, or 'ticks'
* All changes occur at the same time.
* Any live cell with 2 or 3 live neighbours survives until next tick.
* Any live cell with less than 2 live neighbours dies (underpopulation).
* Any live cell with more than 3 live neighbours dies (overpopulation).
* Any dead cell with exactly 3 neighbours becomes a live cell (reproduction).

```
2 or 3   =>  alive       if 2 do nothing
< 2      =>  dies            set to 0
> 3      =>  dies            set to 0
== 3     =>  comes to life   set to 1
```

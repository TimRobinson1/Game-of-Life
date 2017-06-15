Conway's Game of Life - Tech Test
=================================
The Game of life is a zero player game developed in the 70s by John Horton Conway.
The evolving state of the game is determined by the initial configuration, according
to a defined set of behaviour rules (see **Rules** below).
Some configurations become infinitely evolving constellations,
others eventually evolve into a stable patterns, whilst others die off completely.

Quickstart guide
---------------
* Clone the repo to your local device, using ```git clone https://github.com/TimRobinson1/Game-of-Life.git```
* Naviate into the repo using ```cd game-of-life```
* Install the gem dependencies by running ```bundle install```
* Run ```rspec``` and ```rubocop``` to ensure the program is running successfully.
* Finally, if you wish to set off and start a new game, run ```rackup```
* Navigate in your browser of choice to ```http://localhost:9292/``` - and enjoy!

Rules
-----
* The game evolves in turns, or 'ticks'
* All changes occur at the same time.
* Any live cell with 2 or 3 live neighbours survives until next tick.
* Any live cell with less than 2 live neighbours dies (underpopulation).
* Any live cell with more than 3 live neighbours dies (overpopulation).
* Any dead cell with exactly 3 neighbours becomes a live cell (reproduction).

A grid following these rules, and given the right starting configuration,
has the ability to produce something that looks like this:

![Gosper's Glider Gun](example.gif?raw=true "An infinite pattern: Gosper's Glider Gun")


Technologies used
------------
* Ruby
* RSpec
* SimpleCov
* Rubocop
* Sinatra (for web-display purposes)

Development Process
-------------
My first instinct when approaching this test was to create a Game class, a Board class
and a class for each Cell.  As a starting point, I began working with an array of arrays
as the layout for my grid, which contained either a 0 or a 1 at each index.
1 was represented a live cell, and 0 represented a dead cell.

Once I had established a bare working version, I decided to start again with Cell
classes in place of the 1s and 0s, now that I was comfortable with how the logic
would work.

After spending some time rebuilding the program, it felt as though my
program was now doing more work for the same results that it was arriving at previously.
Having a grid of 1s and 0s also made for much more readable tests, as the expected
output could clearly be demonstrated.

It was at this point I returned to using 1s and 0s, and extracted the cell scanning
logic to a separate CellScanner class.  Finally, as a last step after crafting the
program successfully, I implemented a very basic sinatra app to display the game, in
case anyone was interested to run it themselves.

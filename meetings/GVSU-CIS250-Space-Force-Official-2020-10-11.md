# Meeting 3

Team name: Space Force Official


Members present: All


Date: 10/11/2020


Time: 4:00 PM - 6:00 PM


## Discussion Points:

###  Basic Elements of the Game

* Open on main scene, which contains a map of systems.
* Click on systems to travel to them.
* Final tasks are located in the "Earth System".
* Goal of Player: gather resources from other systems to complete tasks on Earth.

### Ideas for Resources

* Gather resources and exchange for money 
   * Money is the final resource
* __Gather resources and exchange for money to buy ship items that increase player's stats (weapons, shields, etc.)__
   * Items are the final resource
* Gather resources and use them to create ship modifications 
   * Items are the final resource

### Ideas for Player (Ship) Stats

All stats (unless stated otherwise) are non-negative integers, determined by different ship modifications.

* Attack Stat
   * Determined by weapons
* Hit Points
   * Determined by ship plating/shields
* Speed Stat
* Fuel
   * Non-negative % value, not an integer
   * Determines how many times a player can move
   * Renewed as an item
   * Has an upper limit (100%)
   * Running out of fuel only means GAME OVER if you have no other resources
      * Player can exchange resources for more fuel after reaching 0%
* Defense Stat 
   * __This will only be implemented if time is allowed__

### Elements of the Main Scene

![Main Scene](https://cdn.discordapp.com/attachments/751457365529985044/764961842622758923/Screen_Shot_2020-10-11_at_5.25.10_PM.png)

* List of player's stats
* List of remaining resources
* Nav

   ![Nav](https://cdn.discordapp.com/attachments/751457365529985044/764961882548469810/Screen_Shot_2020-10-11_at_5.25.21_PM.png)

   * Map of systems that renders a "child scene" based on the selected system
   * This "child" scene is a map of the selected system

      ![Solar System Map](https://cdn.discordapp.com/attachments/751457365529985044/764961946613055558/Screen_Shot_2020-10-11_at_5.25.36_PM.png)

      * Contains planets and contains trading posts

### The Earth System Scene

![Earth System Scene](https://cdn.discordapp.com/attachments/751457365529985044/764961990098944010/Screen_Shot_2020-10-11_at_5.25.46_PM.png)

* Enemies
   * Space Force Ships
   * Free movement
* Safe Zones
   * Player is safe from enemies
   * Enemies cannot enter Safe Zones
* Player
   * Moves with WASD

### Basic UML Diagram

![UML Diagram](https://cdn.discordapp.com/attachments/751457365529985044/764967289778733056/Screen_Shot_2020-10-11_at_5.46.50_PM.png)

## Goals for Next Week:

* Have the main scene completed and ready for more complex attributes of the game.
* Assign tasks for group members based on the first set of nodes that extend directly from the main scene.
* Discuss logistics of saving data, after more research is done.

# Overview

This document contains the functional and nonfunctional requirements for our game, Space Pirates.

# Functional Requirements

1. User Interface
    1. The game shall display an interface menu when pressing the designated menu key. The menu will display player inventory and current objective.
    2. The game shall display the users current statline.
2. Gameplay
    1. The game shall randomly generate a series of planets for the player to explore. The game shall save the generated planet system map for the duration of playthrough.
    2. The game shall allow the user to participate in combat.
    3. The user shall be able to move their ship using keys on a keyboard.
    4. The game shall end once the earth health reaches 0.
    5. The game shall have enemy CPU's defending earth.
3. Game economy
    1. The game shall have crewmates to hire by spending collected resources.
    2. Crewmates the player can buy shall scale in power to how much they cost in resources.
    3. In game crewmates shall actively change the stats of the player's ship.
    4. Players shall collect resources from planet interactions.
4. Player stats
    1. The game shall contain an attack stat: a non-negative value that can be decreased and increased.
    2. The game shall contain a fuel stat: a non-negative value that can be decreased and increased up to a maximum value.
    3. The game shall contain a hit point system: a non-negative value that can be decreased or increased up to a maximum value.

# Non-Functional Requirements

1. User Interaction
    1. The game shall allow the player to shoot the earth.
    2. The game shall allow the player to go to planets as they choose and collect resources.
    3. The user shall be able to interact with trading posts to expend resources.
    4. The user shall be able to transfer the game to another OS with no conflicts. 
    5. The user shall be able to choose between different crewmates for different effects on their ship.
2. Recoverability
    1. Objects shall load data directly from json.
    2. Save game shall store game objects in a backend with an API call.
3. Restrictions
    1. The user shall not be allowed to go past certain points on the map.  
    2. The user shall not have access to the source code. 
4. Difficulty
    1. Enemy speed in the “Earth” system shall be high enough to offer the player a relative challenge, but not too high as to cause frustration or excessive difficulty.
    2. The amount of resources available to a player shall be high enough so that the player can purchase items on a consistent basis but not so high that the user is always able to purchase every item they encounter.
    3. The game shall have some sort of restrictions that prevent the user from facing the games final challenge and succeeding before experiencing any of the other systems.
    4. In game travel shall cost fuel in order to move forcing players to be strategic about movement choices.

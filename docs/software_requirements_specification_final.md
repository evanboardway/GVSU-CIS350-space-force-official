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
    5. Players will have multiple types of resources to collect from different planets.
4. Player stats
    1. The game shall contain an attack stat: a non-negative value that can be decreased and increased.
    2. The game shall contain a fuel stat: a non-negative value that can be decreased and increased up to a maximum value.
    3. The game shall contain a hit point system: a non-negative value that can be decreased or increased up to a maximum value.
    4. The game shall contain a speed stat: a non-negative value that can be decreased or increased up to a maximum value.
    5. The game shall contain an Earth health stat: a non-negative value that can be decreased or increased to a maximum value.

# Non-Functional Requirements

1. User Interaction
    1. The game shall allow the player to shoot the earth.
    2. The game shall allow the player to go to planets as they choose and collect resources.
    3. The user shall be able to interact with trading posts to expend resources.
    4. The user shall be able to transfer the game to another OS with no conflicts. 
    5. The user shall be able to choose between different crewmates for different effects on their ship.
2. Usability
    1. The game shall tell the user the controls. 
    2. The trade stations within the game shall have a simple menu to allow the user to easily access what they need. 
    3. The game shall inform the user of the story of the game.
    4. The game shall have a simple interface for traveling between systems.
    5. The Earth scene within the game shall have a sound indicator letting the user know when they are approaching Earth.
3. Difficulty
    1. Enemy speed in the “Earth” system shall be high enough to offer the player a relative challenge, but not too high as to cause frustration or excessive difficulty.
    2. The amount of resources available to a player shall be high enough so that the player can purchase crewmates on a consistent basis but not so high that the user is always able to purchase every crewmate they encounter.
    3. The game shall have automated intelligence enemies in all systems to give the player a relative challenge in beating the game, but not too high as to cause frustration or excessive difficulty.
    4. In game travel shall cost fuel in order to move forcing players to be strategic about movement choices.
    5. The enemies in the Earth system shall be different from the enemies in normal systems in that they force the player to explore and upgrade their ship before attempting to beat the game. 

# Overview

This document contains the functional and nonfunctional requirements for our game, Space Pirates.

# Functional Requirements

1. User Interface
    1. The game shall display an interface menu when pressing the designated menu key. The menu will display player inventory and current objective.
    2. The game shall display the users current statline.
    3. The user shall be able to move their ship using keys on a keyboard.
2. Gameplay
    1. The game shall randomly generate a series of planets for the player to explore. The game shall save the generated planet system map for the duration of playthrough.
    2. The game shall randomly select a text-based encounter for the player when the player interacts with a planet.
    3. The game shall allow the user to participate combat. 

# Non-Functional Requirements

1. User Interaction
    1. The game shall warn the player when they are approaching the Earth. The game shall alert the player if they do not have high enough stats to attempt their objective.
    2. The game shall allow the player to choose from a series of options when having encounters on the planets. The player shall receive either resources or currency based on their choices.
    3. The user shall be able to transfer the game to another OS with no conflicts. 
    4. The user shall not have access to the source code. 
2. Recoverability
    1. The game shall have a save function which will allow players to save their progress and resume their playthrough at a later time.
    2. The user shall not be able to edit save files outside of the game. 
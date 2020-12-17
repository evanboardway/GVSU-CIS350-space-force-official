# Overview

This document contains information about our game, Space Pirates. We've included a list of functional and non-functional requirements, 
detailing the specifics of the requirement and linking test cases to them. We've also included a list of test cases, detailing the 
specifics of each case and what they test. After our test cases is a list of our software artifacts.

# Software Requirements

Our software requirements are listed in multiple sections. These include an ID section detailing their number and whether they are functional
or non-functional, a requirements section showing the specifics of the requirement, and a test case section telling what test case the 
requirement is linked to, or stating "TBD" if no test case has been linked.

## Functional Requirements

### User Interface

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR1 | The game shall display an interface menu when pressing the designated menu key. The menu will display player inventory and current objective. | TBD |
| FR2 | The game shall display the users current health, speed, fuel, and other base stats on the screen in the font we have provided. | TBD |
| FR3 | The game shall display some information notifying the player of the details of an illegal action. | TC1 |
    
### Gameplay

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR4 | The game shall randomly generate a series of planets for the player to explore. The game shall save the generated planet system map for the duration of playthrough.| TC19 |
| FR5 | The game shall allow the user to shoot at and damage enemy ships, and the enemy ships shall be able to shoot back and damage the player. | TC11 |
| FR6 | The game shall end once the Earth health reaches 0. | TC2 |
| FR7 | The game shall have enemy CPU's defending earth. | TBD |
| FR8 | The user shall be able to move their ship using keys on a keyboard. | TC3 |

### Game economy

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR9 | The game shall have crewmates to hire by spending collected resources.| TC18 |
| FR10 | Crewmates the player can buy shall scale in power to how much they cost in resources. | TBD |
| FR11 | In game crewmates shall actively change the stats of the player's ship. | TC12 |
| FR12 | Players shall collect resources from planet interactions. | TBD |
| FR13 | Players will have multiple types of resources to collect from different planets. | TC8 |

### Player Stats

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR14 | The game shall contain an attack stat: a non-negative value that can be decreased and increased.| TC6 |
| FR15 | The game shall contain a fuel stat: a non-negative value that can be decreased and increased up to a maximum value. | TC4 |
| FR16 |  The game shall contain a hit point system: a non-negative value that can be decreased or increased up to a maximum value. | TBD |
| FR17 | The game shall contain a speed stat: a non-negative value that can be decreased or increased up to a maximum value. | TC7 |
| FR18 | The game shall contain an Earth health stat: a non-negative value that can be decreased or increased to a maximum value. | TC5 |



# Non-Functional Requirements

### User Interaction

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR1 | The game shall allow the player to attack the earth. | TC14 |
| NFR2 | The game shall allow the player to go to planets as they choose and collect resources. | TC17 |
| NFR3 | The user shall be able to interact with trading posts to expend resources.| TC13 |
| NFR4 | The game shall be playable in an internet browser.  | TBD |
| NFR5 | The user shall be able to choose between different crewmates for different effects on their ship. | TBD |


### Usability

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR6 | The game shall tell the user the controls. | TC9 |
| NFR7 | The trade stations within the game shall have a simple menu to allow the user to easily access what they need. | TC20 |
| NFR8 | The game shall inform the user of the story of the game.| TC10 |
| NFR9 | The game shall have a simple interface for traveling between systems.  | TBD |
| NFR10 | The Earth scene within the game shall have a sound indicator letting the user know when they are approaching Earth. | TBD |

### Difficulty

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR11 | Enemy speed in the “Earth” system shall be high enough to offer the player a relative challenge, but not too high as to cause frustration or excessive difficulty. | TBD |
| NFR12 | The amount of resources available to a player shall be high enough so that the player can purchase crewmates on a consistent basis but not so high that the user is always able to purchase every crewmate they encounter. | TBD |
| NFR13 | The game shall have automated intelligent enemies in all systems to give the player a relative challenge in beating the game, but not too high as to cause frustration or excessive difficulty.| TC16 |
| NFR14 | In game travel shall cost fuel in order to move forcing players to be strategic about movement choices.  | TC15 |
| NFR15 | The enemies in the Earth system shall be different from the enemies in normal systems in that they force the player to explore and upgrade their ship before attempting to beat the game. | TBD |
    
# Test Specification

This section details the test cases including descriptions, steps to execute, input values, actual and expected outputs, whether they passed or failed and what requirement they're linked to. 
    
## Unit tests

| ID | Description | Steps | Input Values | Expected Output | Actual Output| Pass/Fail | Requirement Link |
| :-------------: | :----------: | :----------: | :----------: | :----------:| :----------: | :----------: | :----------: |
| TC1 | Error Message variable is set upon calling _set_error_message() | Enter a planet, leave a planet, then try to enter the planet again. | _set_error_message("you cannot enter this planet for #{minutes} minutes") | "you cannot enter this planet for 3 minutes" | "you cannot enter this planet for 3 minutes" | Pass | FR3 |
| TC2 | Game ends once earth health reaches zero | Set the earth's initial health to zero | earthHealth = 0 | function call to end game screen | function call to end game screen | Pass | FR6 
| TC3 | Pressing a key matches an if statement in the Player class | Press the w key upon loading the game | W key press | Player moves forward | Player moves forward | Pass | FR8
| TC4 | Fuel is initialized to 10,000 | Start the game | N/A | fuel variable is set to 10,000 | Fuel was set to 10,000 | Pass | FR15 
| TC5 | Earth Health is initialized to 10,000 | Start the game | N/A | Earth Health variable is set to 10,000 | Earth Health was set to 10,000 | Pass | FR18 
| TC6 | Attack is initialized to 10 | Start the game | N/A | Attack variable is set to 10 | Attack was set to 10 | Pass | FR14 
| TC7 | Speed is initialized to 300 | Start the game | N/A | Speed variable is set to 300 | Speed was set to 300 | Pass | FR17
| TC8 | Planet creates a random number of resources (Iron, Silver, Gold) upon initialization | Run the game | N/A | Planet resource variables are set | Planet resources are set | Pass | FR13 
| TC9 | Information screen is displayed to user | Enter the game through the title screen and skip the introduction screen | WAD and Enter keys | Information screen is displayed | Information screen is displayed | Pass | NFR6
| TC10 | Introduction Screen is displayed to user | Enter the game through the title screen | WAD keys | Introduction screen is displayed | Introduction screen is displayed | Pass | NFR8 
    
## Integration tests

| ID | Description | Steps | Input Values | Expected Output | Actual Output| Pass/Fail | Requirement Link |
| :-------------: | :----------: | :----------: | :----------: | :----------:| :----------: | :----------: | :----------: |
| TC11 | A player laser reduces the health of an enemy ship | Right click an enemy | Right click the mouse | Enemy health decreases | Enemy health decreased | Pass | FR5 |
| TC12 | Crewmates change the stats of the player's ship | Purchase crewmate | Left mouse button | A stat is multiplied by some amount | A stat is multiplied by some amount | Pass | FR11
| TC13 | Player can interact with trade stations | Fly to trade station, enter the trade station | WAD keys, Left mouse button | Trade station menu is opened | Trade station menu is opened | Pass | NFR3 
| TC14 | Player can damage the Earth | Right click the earth | Right mouse button | Earth health is lowered | Earth health is lowered | Pass | NFR1 
| TC15 | Movement costs the player fuel | Move the ship | WAD keys | Fuel decreases | Fuel decreases | Pass | NFR14 
    
## System tests

| ID | Description | Steps | Input Values | Expected Output | Actual Output| Pass/Fail | Requirement Link |
| :-------------: | :----------: | :----------: | :----------: | :----------:| :----------: | :----------: | :----------: |
| TC16 | Systems have enemy NPCs that can damage the player | Enter multiple systems and observe enemy behavior | Use left mouse button to navigate the system menu | Enemies spawn, chase the player, and deal damage | Enemies spawn, chase the player, and deal damage | Pass | NFR13 |
| TC17 | Player can enter planets and collect resources | Enter a system, enter multiple planets, and collect resources | WASD keys and left mouse button | Player enters planet, collects resource, and observes resource increase | Player enters planet, collects resource, and observes resource increase | Pass | NFR2
| TC18 | Crewmates can be purchase ffrom trade stations | Enter trade station, select crewmates, and purchase crewmate | Left mouse button (to enter trade station, see crewmates, and purchase crewmates) | Crewmate is purchased | Crewmate is purchased | Pass | FR9 
| TC19 | System's generate random collections of planets | Enter a system, enter another system, return to the previous system, reboot game, enter the first system | WAD keys, left mouse button (to navigate system menu) | System map of first system is the same after returning from second system, system map of first system is changed after rebooting the game | System map of first system is the same after returning from second system, system map of first system is changed after rebooting the game | Pass | FR4
| TC20 | Trade station menu system works and allows user to trade resources | Enter trade station, navigate menu, trade for resources, fuel, repairs, upgrades, and crewmates | Left mouse button | Menu system allows user to trade for different items, resources and stats are decreased and increased according to trades | Menu system allows user to trade for different items, resources and stats are decreased and increased according to trades | Pass | NFR7 
    
    
# Software Artifacts
A link to each software artifact developed throughout the term.
    
* [Extended Use Case Diagram](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/ExtendedUseCaseDiagram.md)
    
* [Use Case Diagram 1](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use%20Case%20Diagram.pdf)
    
* [Use Case Diagram 2](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use_Case_Diagram_2%20(2).pdf)
    
* [Use Case Diagram 3](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use_Case_Diagram_3.pdf)

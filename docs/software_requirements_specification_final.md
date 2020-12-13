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
| FR2 | The game shall display the users current statline. | TBD |
    
### Gameplay

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR3 | The game shall randomly generate a series of planets for the player to explore. The game shall save the generated planet system map for the duration of playthrough.| TBD |
| FR4 | The game shall allow the user to participate in combat. | TBD |
| FR5 | The game shall end once the Earth health reaches 0. | TBD |
| FR6 | The game shall have enemy CPU's defending earth. | TBD |
| FR7 | The user shall be able to move their ship using keys on a keyboard. | TBD |

### Game economy

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR8 | The game shall have crewmates to hire by spending collected resources.| TBD |
| FR9 | Crewmates the player can buy shall scale in power to how much they cost in resources. | TBD |
| FR10 | In game crewmates shall actively change the stats of the player's ship. | TBD |
| FR11 | Players shall collect resources from planet interactions. | TBD |
| FR12 | Players will have multiple types of resources to collect from different planets. | TBD |

### Player Stats

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| FR13 | The game shall contain an attack stat: a non-negative value that can be decreased and increased.| TBD |
| FR14 | The game shall contain a fuel stat: a non-negative value that can be decreased and increased up to a maximum value. | TBD |
| FR15 |  The game shall contain a hit point system: a non-negative value that can be decreased or increased up to a maximum value. | TBD |
| FR16 | The game shall contain a speed stat: a non-negative value that can be decreased or increased up to a maximum value. | TBD |
| FR17 | The game shall contain an Earth health stat: a non-negative value that can be decreased or increased to a maximum value. | TBD |



# Non-Functional Requirements

### User Interaction

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR1 | The game shall allow the player to shoot the earth. | TBD |
| NFR2 | The game shall allow the player to go to planets as they choose and collect resources. | TBD |
| NFR3 | The user shall be able to interact with trading posts to expend resources.| TBD |
| NFR4 | The user shall be able to transfer the game to another OS with no conflicts.  | TBD |
| NFR5 | The user shall be able to choose between different crewmates for different effects on their ship. | TBD |


### Usability

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR6 | The game shall tell the user the controls.. | TBD |
| NFR7 | The trade stations within the game shall have a simple menu to allow the user to easily access what they need. | TBD |
| NFR8 | The game shall inform the user of the story of the game.| TBD |
| NFR9 | The game shall have a simple interface for traveling between systems.  | TBD |
| NFR10 | The Earth scene within the game shall have a sound indicator letting the user know when they are approaching Earth. | TBD |

### Difficulty

| ID | Requirement | Test Cases |
| :-------------: | :----------: | :----------: |
| NFR11 | Enemy speed in the “Earth” system shall be high enough to offer the player a relative challenge, but not too high as to cause frustration or excessive difficulty. | TBD |
| NFR12 | The amount of resources available to a player shall be high enough so that the player can purchase crewmates on a consistent basis but not so high that the user is always able to purchase every crewmate they encounter. | TBD |
| NFR13 | The game shall have automated intelligence enemies in all systems to give the player a relative challenge in beating the game, but not too high as to cause frustration or excessive difficulty.| TBD |
| NFR14 | In game travel shall cost fuel in order to move forcing players to be strategic about movement choices.  | TBD |
| NFR15 | The enemies in the Earth system shall be different from the enemies in normal systems in that they force the player to explore and upgrade their ship before attempting to beat the game. | TBD |
    
# Test Specification

<Description of what this section is>
    
## Unit tests
(copy/paste the below table a minimum of 10 times)

| ID | Description | Steps | Input Values | Expected Output | Actual Output| Pass/Fail | Requirement Link |
| :-------------: | :----------: | :----------: | :----------: | :----------:| :----------: | :----------: | :----------: |
| TC1 | <TC1 description> | <steps to execute TC1> | <input values to this test case> | <expected output as a result of test case> | <actual output of test case> | <did it pass or fail?> | <requirement IDs this test case is linked to> |
## Integration tests
(copy/paste the above table a minimum of 5 times)
## System tests
(copy/paste the above table a minimum of 5 times)
# Software Artifacts
A link to each software artifact developed throughout the term.
    
* [Extended Use Case Diagram](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/ExtendedUseCaseDiagram.md)
    
* [Use Case Diagram 1](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use%20Case%20Diagram.pdf)
    
* [Use Case Diagram 2](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use_Case_Diagram_2%20(2).pdf)
    
* [Use Case Diagram 3](https://github.com/evanboardway/GVSU-CIS350-space-force-official/blob/master/artifacts/use_case_diagrams/Use_Case_Diagram_3.pdf)

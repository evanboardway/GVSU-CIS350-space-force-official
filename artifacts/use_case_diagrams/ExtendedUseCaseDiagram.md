# Extended Use Case Diagram

This document is an extended use case diagram referencing use case diagram 2.

# Use Cases 

1. Use Case: Interact with Planets
	1. Actors: Player
	2. Description:
		1. Player moves ship near planet
		2. Text box is generated, giving player different options
	3. Cross Ref: Functional Requirements 2(i), "The game shall randomly generate a series of planets for the player to explore."
	4. Use-Cases: Have Start Game use-case complete.

2. Use Case: Collect resources
	1. Actors: Player
	2. Description:
		1. Once a planet is interacted with, give the player opportunity to collect resources. 
	3. Cross Ref: Functional Requirements 3(iv), "Players shall collect resources from planet interactions.." 
	4. Use-Cases: Player must have completed the Interact with Planets use-case. 

3. Use Case: Encounter
	1. Actors: Player
	2. Description:
		1. Chance for a random encounter when the player interacts with a planet
	3. Cross Ref: Functional Requirements 2(ii), "The game shall randomly select a text-based encounter for the player when the player interacts with a planet."
	4. Use-Cases: Player must have completed the Interact with Planets use-case.

4. Use Case: Negative Encoutner
	1. Actors: Player
	2. Description:
		1. Chance for the player to choose a losing resources or combat intitation
	3. Cross Ref: Functional Requirements 2(i), "The game shall allow the user to participate in combat."
	4. Use-Cases: Player must have completed the Interact with Planets and Encounter use-cases.

5. Use Case: Positive Encounter
	1. Actors: Player
	2. Description:
		1. Chance for the player to choose a positive encounter
	3. Cross Ref: Non-Functional Requirements 1(v), "The user shall be able to choose between different treasure for different effects on their ship."
	4. Use-Cases: Player must have completed the Interact with Planets and Encounter use-cases. 

6. Use Case: Complete Objectives on Earth 
	1. Actors: Player
	2. Description:
		1. When the player reaches Earth, they'll have the choice to complete certian objectives.
	3. Cross Ref: Non-Functional Requirements 1(i), "The game shall warn the player when they are approaching the Earth. The game shall alert the player if they do not have high enough stats to attempt their objective."
	4. Use-Cases: Player must have completed the Interact with Planets use-case. 

7. Use Case: Decrease Resources
	1. Actors: Player
	2. Description:
		1. The player will need to use resources to complete the objectives on Earth to weaken it. 
	3. Cross Ref: Non-Functional Requirements 4(i), "Enemy speed in the “Earth” system shall be high enough to offer the player a relative challenge, but not too high as to cause frustration or excessive difficulty."
	4. Use-Cases: Player must have completed Interact with Planets and Complete Objectives on Earth use-cases. 

8. Use Case: Beat Game
	1. Actors: Player
	2. Description:
		1. The game ends when the player defeats the Earth. 
	3. Cross Ref: Functional Requirements2(iv), "The game shall end once all objectives on earth have been completed."
	4. Use-Cases: Player must have completed Interact with Planets and Complete Objectives on Earth use-cases. 

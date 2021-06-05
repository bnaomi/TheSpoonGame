//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//
//  The music in the background is Underwater Exploration - Godmode
//  The sound effects are from Kenney Game Assets 3 version 25

import PlaygroundSupport
import SpriteKit
import UIKit
import BookCore

let sceneView = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 1366))
if let scene = GameScene(fileNamed: "GameScene") {
    sceneView.presentScene(scene)
    scene.scaleMode = .aspectFit
}

PlaygroundPage.current.liveView = sceneView
PlaygroundPage.current.needsIndefiniteExecution = true



//#-end-hidden-code

/*:
 # The Spoon Game
 ![The Spoon Game](miniatura2.png)
 
 **This playgrounds project is my interpretation of a theory that I knew not too long ago but that has been living with me every day since.**
 
 
 
 
 
 This project was inspired by the spoon theory, created by Christine Miserandino and the book "Invisible Differences" by Julie Dachez.
 
 - Note: If you don't know the references I think it's better to start playing before reading the rest and maybe playing more than once. I hope you enjoy :)
 
 **   **
 
 **   **
 
 
 ## Motivation and explanation
 
 
 Spoons are a visual metaphor for the amount of physical and mental energy a person has. Each person has a different amount of energy and uses/recharges in different ways. Sometimes being productive is harder than others, especially when we are feeling sad, anxious, or in a bad environment.
 
 This situation can be easier with self-knowledge and care. The spoon theory is a way to get to know yourself, analyze and manage your energy so that it never runs out (as far as possible). And if the spoons run out, don't blame yourself, don't compare yourself with other people, pay attention and find out why it has happened.
 
 This metaphor has been very useful for me in the last year. I have been applying this theory to the project because I believe that sharing this may be helpful to the ones that are watching.
 
 
  **Take care of yourself.**

 
 **   **
 
 **   **
 

 ## The Spoon Theory
 
 
 The term spoons were coined by Christine Miserandino in 2003 in her essay "The Spoon Theory." While out to eat with a friend, Miserandino’s friend began watching her as she took her medication and suddenly asked what it was like to have lupus. Miserandino grabbed spoons from around the diner where they sat and gave her friend the handful of spoons she had gathered. The spoons helped Miserandino to show the way that people with chronic illness often start their days off with limited degrees of energy. The number of spoons her friend had was how much energy she had to spend throughout the day.
 
Spoons are a visual representation used as a unit of measure to quantify the amount of mental and physical energy a person has available for activities of living and productive tasks throughout a given amount of time. Each activity requires several spoons, which will only be replaced as the person "recharges" through rest. A person who runs out of spoons has no choice but to rest until their spoons are replenished.
 
 The original theory focuses on people with chronic illnesses, but over time it expands to people with disabilities, invisible illnesses, and mental exhaustion.

 
 **  **
 
 ***
  
  ## Credits:
  
 The sound effects are from Kenney Game Assets 3 version 25 (https://kenney.nl/).
  
 The music in the background is Underwater Exploration - Godmode
  
 
 */

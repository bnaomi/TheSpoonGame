//
//  GameSceneSix.swift
//  BookCore
//
//  Created by Bruna Naomi Yamanaka Silva on 16/04/21.
//

import Foundation
import SpriteKit

public class GameSceneSix: SKScene {
    
    //Tela 7 e botoes
    let tela7 = SKSpriteNode(imageNamed: "Tela7")
    let button7A = SKSpriteNode(imageNamed: "Tela7botaoA")
    let button7B = SKSpriteNode(imageNamed: "Tela7botaoB")
    let button7C = SKSpriteNode(imageNamed: "Tela7botaoC")
    
    //telas 8 assets
    //comida
    let tela8A = SKSpriteNode(imageNamed: "Tela8A")
    let tela8B = SKSpriteNode(imageNamed: "Tela8B")
    let tela8C = SKSpriteNode(imageNamed: "Tela8C")
    let nextButton5 = SKSpriteNode(imageNamed: "botaonext-4")
    


    override public func didMove(to view: SKView) {
        
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    func touchDown(atPoint pos : CGPoint) {
    
          
    }

    func touchMoved(toPoint pos : CGPoint) {
        
    }

    func touchUp(atPoint pos : CGPoint) {

    }

    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchDown(atPoint: t.location(in: self)) }
    }

    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchMoved(toPoint: t.location(in: self)) }
    }

    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }

    override public func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }

    override public func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}



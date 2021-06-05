//
//  GameSceneTwo.swift
//  BookCore
//
//  Created by Bruna Naomi Yamanaka Silva on 16/04/21.
//

import Foundation
import SpriteKit

public class GameSceneTwo: SKScene {
    //Gamescene 2 trata da escolhe de trabalho!
    //vale ressaltar que essa tela já tem o contador incluso
    //assets da tela 1
    let tela1 = SKSpriteNode(imageNamed: "Tela1")
    let optA = SKSpriteNode(imageNamed: "Tela1botaoA")
    let optB = SKSpriteNode(imageNamed: "Tela1botaoB")
    let optC = SKSpriteNode(imageNamed: "Tela1botaoC")
   
    
    //assets da primeira escolha
    //Tela2
    let tela2A = SKSpriteNode(imageNamed: "Tela2A")
    let tela2B = SKSpriteNode(imageNamed: "Tela2B")
    let tela2C = SKSpriteNode(imageNamed: "Tela2C")
    

    
    //botao next usado varias vezes
    let nextButton2 = SKSpriteNode(imageNamed: "botaonext-1")


    override public func didMove(to view: SKView) {
        
        tela1.position = CGPoint(x: 0, y: 0)
        tela1.alpha = 1
        addChild(tela1)
        tela1.run(SKAction.fadeIn (withDuration: 0.3))
        
        optA.position = CGPoint(x: 0, y: 170)
        optA.alpha = 0
        addChild(optA)
        optA.run(SKAction.fadeIn (withDuration: 1))
        
        optB.position = CGPoint(x: 0, y: 70)
        optB.alpha = 0
        addChild(optB)
        optB.run(SKAction.fadeIn (withDuration: 1.2))
        
        optC.position = CGPoint(x: 0, y: -30)
        optC.alpha = 0
        addChild(optC)
        optC.run(SKAction.fadeIn (withDuration: 1.4))
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    func touchDown(atPoint pos : CGPoint) {
    
        if optA.contains(pos) && optA.alpha == 1{
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //variavel contador
            contadorGlobal=10
            print(contadorGlobal)
            print("gamescenetwo")
            
            //fadeout dos itens
            
            optA.run(SKAction.fadeOut(withDuration: 0.3))
            optB.run(SKAction.fadeOut(withDuration: 0.3))
            optC.run(SKAction.fadeOut(withDuration: 0.3))
            tela1.run(SKAction.fadeOut(withDuration: 0.3))
            
            
            tela2A.position = CGPoint(x: 0, y: 0)
            tela2A.alpha = 0
            addChild(tela2A)
            tela2A.run(SKAction.fadeIn (withDuration: 0.3))
            
            
            nextButton2.position = CGPoint(x: 405, y: -270)
            nextButton2.alpha = 0
            addChild(nextButton2)
            nextButton2.run(SKAction.fadeIn (withDuration: 0.8))
            
            
            
            //alpha zero nos botoes
            optA.alpha = 0
            optB.alpha = 0
            optC.alpha = 0
            
        }else if optB.contains(pos) && optB.alpha == 1{
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //variavel contador
            contadorGlobal=(contadorGlobal-4)
            
            tela2B.position = CGPoint(x: 0, y: 0)
            tela2B.alpha = 0
            addChild(tela2B)
            tela2B.run(SKAction.fadeIn (withDuration: 0.3))
            
            //fadeout dos itens
            optA.run(SKAction.fadeOut(withDuration: 0.3))
            optB.run(SKAction.fadeOut(withDuration: 0.3))
            optC.run(SKAction.fadeOut(withDuration: 0.3))
            tela1.run(SKAction.fadeOut(withDuration: 0.3))
            
            nextButton2.position = CGPoint(x: 405, y: -270)
            nextButton2.alpha = 0
            addChild(nextButton2)
            nextButton2.run(SKAction.fadeIn (withDuration: 0.8))
            
            //alpha zero nos botoes
            optA.alpha = 0
            optB.alpha = 0
            optC.alpha = 0
        }else if optC.contains(pos) && optC.alpha == 1
        {
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //variavel contador
            contadorGlobal=(contadorGlobal+2)
            
            
            
            tela2C.position = CGPoint(x: 0, y: 0)
            tela2C.alpha = 0
            addChild(tela2C)
            tela2C.run(SKAction.fadeIn (withDuration: 0.3))
            
            //fadeout dos itens
            optA.run(SKAction.fadeOut(withDuration: 0.3))
            optB.run(SKAction.fadeOut(withDuration: 0.3))
            optC.run(SKAction.fadeOut(withDuration: 0.3))
            tela1.run(SKAction.fadeOut(withDuration: 0.3))
            
            nextButton2.position = CGPoint(x: 405, y: -270)
            nextButton2.alpha = 0
            addChild(nextButton2)
            nextButton2.run(SKAction.fadeIn (withDuration: 0.8))
            
            //alpha zero nos botoes
            optA.alpha = 0
            optB.alpha = 0
            optC.alpha = 0
        }
        if nextButton2.contains(pos){
            nextButton2.run(SKAction.fadeOut(withDuration: 0.3))
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            // MANDA PRA OUTRA SCENE!!
            let gameSceneThree = GameSceneThree (fileNamed: "GameSceneThree")
            gameSceneThree?.scaleMode = .aspectFit
            self.view?.presentScene(gameSceneThree)
        }
        
        
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


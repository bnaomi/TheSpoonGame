//
//  GameSceneFour.swift
//  BookCore
//
//  Created by Bruna Naomi Yamanaka Silva on 16/04/21.
//

import Foundation
import SpriteKit

public class GameSceneFour: SKScene {
    let contador4 = SKSpriteNode(imageNamed: "\(contadorGlobal)")
    //Referente a escolha do tempo livre!
    //Tela 5
    var flag = 0
    let tela5 = SKSpriteNode(imageNamed: "Tela5")
    let button5A = SKSpriteNode(imageNamed: "Tela5botaoA")
    let button5B = SKSpriteNode(imageNamed: "Tela5botaoB")
    
    //tela 6 assets
    //comida
    let tela6A = SKSpriteNode(imageNamed: "Tela6A")
    let tela6B = SKSpriteNode(imageNamed: "Tela6B")
    let nextButton4 = SKSpriteNode(imageNamed: "botaonext-3")
    
    
    


    override public func didMove(to view: SKView) {
        
        contador4.position = CGPoint(x:405, y:410)
        contador4.alpha = 0
        contador4.zPosition = 400
        addChild(contador4)
        contador4.run(SKAction.fadeIn (withDuration: 0.3))
        
        tela5.position = CGPoint(x: 0, y: 0)
        tela5.alpha = 0
        addChild(tela5)
        tela5.run(SKAction.fadeIn (withDuration: 0.3))
        
        button5B.position = CGPoint(x:-220, y:-100)
        button5B.alpha = 0
        addChild(button5B)
        button5B.run(SKAction.fadeIn(withDuration: 0.6))
        
        
        button5A.position = CGPoint(x:220 , y:-300)
        button5A.alpha = 0
        addChild(button5A)
        button5A.run(SKAction.fadeIn(withDuration: 0.6))
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    func touchDown(atPoint pos : CGPoint) {
    
            
        if button5B.contains(pos) && button5B.alpha == 1{
            if flag == 0{
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                //variavel contador
                contadorGlobal=(contadorGlobal-2)
                contador4.texture = SKTexture(imageNamed: "\(contadorGlobal)")
                contador4.size = contador4.texture!.size()
                
                tela6B.position = CGPoint(x: 0, y: 0)
                tela6B.alpha = 0
                tela6B.removeFromParent()
                addChild(tela6B)
                tela6B.run(SKAction.fadeIn (withDuration: 0.3))
                
                nextButton4.position = CGPoint(x: 405, y: -270)
                nextButton4.alpha = 0
                nextButton4.removeFromParent()
                addChild(nextButton4)
                nextButton4.run(SKAction.fadeIn (withDuration: 0.8))
                //alpha zero nos botoes
                button5A.alpha = 0
                button5B.alpha = 0
                flag = 1
            }
            
        }
        if button5A.contains(pos){
            if flag == 0 && button5A.alpha == 1{
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                //variavel contador
                contadorGlobal=(contadorGlobal+1)
                contador4.texture = SKTexture(imageNamed: "\(contadorGlobal)")
                contador4.size = contador4.texture!.size()
                
                tela6A.position = CGPoint(x:0, y:0)
                tela6A.alpha = 0
                tela6A.removeFromParent()
                addChild(tela6A)
                tela6A.run(SKAction.fadeIn(withDuration: 0.3))
                
                nextButton4.position = CGPoint(x: 405, y: -270)
                nextButton4.alpha = 0
                nextButton4.removeFromParent()
                addChild(nextButton4)
                nextButton4.run(SKAction.fadeIn (withDuration: 0.8))
                //alpha zero nos botoes
                button5A.alpha = 0
                button5B.alpha = 0
                flag = 1
            }
            
        }
        if nextButton4.contains(pos){
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //manda pra proxima cena
            nextButton4.run(SKAction.fadeOut(withDuration: 0.3))
            let gameSceneFive = GameSceneFive (fileNamed: "GameSceneFive")
            gameSceneFive?.scaleMode = .aspectFit
            self.view?.presentScene(gameSceneFive)
            
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


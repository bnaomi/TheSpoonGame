//
//  GameSceneThree.swift
//  BookCore
//
//  Created by Bruna Naomi Yamanaka Silva on 16/04/21.
//

import Foundation
import SpriteKit

public class GameSceneThree: SKScene {

    //Referete a telas 3 e 4 sobre a decisao da comida
    //aqui o contador ja vai ter que ser inserido!
    var flag = 0
    //Tela 3
    let tela3 = SKSpriteNode(imageNamed: "Tela3")
    let button3A = SKSpriteNode(imageNamed: "Tela3botaoA")
    let button3B = SKSpriteNode(imageNamed: "Tela3botaoB")
    // Nome da imagem a partir do índice
    let contador3 = SKSpriteNode(imageNamed: "\(contadorGlobal)")
    
    //tela 4 assets
    //comida
    
    let tela4B = SKSpriteNode(imageNamed: "Tela4B")
    let tela4A = SKSpriteNode(imageNamed: "Tela4A")
    let nextButton3 = SKSpriteNode(imageNamed: "botaonext-2")
    
    


    override public func didMove(to view: SKView) {
        contador3.position = CGPoint(x:405, y:410)
        contador3.alpha = 0
        contador3.zPosition = 400
        addChild(contador3)
        contador3.run(SKAction.fadeIn (withDuration: 0.3))
        
        
        
        tela3.position = CGPoint(x: 0, y: 0)
        tela3.alpha = 0
        addChild(tela3)
        tela3.run(SKAction.fadeIn (withDuration: 0.3))
        
        button3B.position = CGPoint(x:-220, y:-100)
        button3B.alpha = 0
        addChild(button3B)
        button3B.run(SKAction.fadeIn(withDuration: 0.6))
        
        
        button3A.position = CGPoint(x:220 , y:-300)
        button3A.alpha = 0
        addChild(button3A)
        button3A.run(SKAction.fadeIn(withDuration: 0.6))
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    func touchDown(atPoint pos : CGPoint) {
    
            
        if button3B.contains(pos) && button3B.alpha == 1{
            if flag == 0 {
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                //variavel contador
                contadorGlobal=(contadorGlobal-1)
                contador3.texture = SKTexture(imageNamed: "\(contadorGlobal)")
                contador3.size = contador3.texture!.size()
                
                tela4B.position = CGPoint(x: 0, y: 0)
                tela4B.alpha = 0
                tela4B.removeFromParent()
                addChild(tela4B)
                tela4B.run(SKAction.fadeIn (withDuration: 0.3))
                
                nextButton3.position = CGPoint(x: 405, y: -270)
                nextButton3.alpha = 0
                
                nextButton3.removeFromParent()
                addChild(nextButton3)
                nextButton3.run(SKAction.fadeIn (withDuration: 0.8))
                
                //fadeout dos itens
                tela3.run(SKAction.fadeOut(withDuration: 0.3))
                button3B.run(SKAction.fadeOut(withDuration: 0.3))
                button3A.run(SKAction.fadeOut(withDuration: 0.3))
                
                //alpha zero nos botoes
                button3A.alpha = 0
                button3B.alpha = 0
                
                flag = 1
            }
            
            
        }
        else if button3A.contains(pos) && button3A.alpha == 1{
            if flag == 0 {
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                //variavel contador
                contadorGlobal=(contadorGlobal+1)
                contador3.texture = SKTexture(imageNamed: "\(contadorGlobal)")
                contador3.size = contador3.texture!.size()
                
                
                tela4A.position = CGPoint(x:0, y:0)
                tela4A.alpha = 0
                
                tela4A.removeFromParent()
                addChild(tela4A)
                tela4A.run(SKAction.fadeIn(withDuration: 0.3))
                
                nextButton3.position = CGPoint(x: 405, y: -270)
                nextButton3.alpha = 0
                
                nextButton3.removeFromParent()
                addChild(nextButton3)
                nextButton3.run(SKAction.fadeIn (withDuration: 0.8))
                
                //fadeout dos itens
                tela3.run(SKAction.fadeOut(withDuration: 0.3))
                button3B.run(SKAction.fadeOut(withDuration: 0.3))
                button3A.run(SKAction.fadeOut(withDuration: 0.3))
                
                //alpha zero nos botoes
                button3A.alpha = 0
                button3B.alpha = 0
                flag = 1
            }
            
        }
        if nextButton3.contains(pos){
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //manda pra proxima cena
            let gameSceneFour = GameSceneFour (fileNamed: "GameSceneFour")
            gameSceneFour?.scaleMode = .aspectFit
            self.view?.presentScene(gameSceneFour)
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


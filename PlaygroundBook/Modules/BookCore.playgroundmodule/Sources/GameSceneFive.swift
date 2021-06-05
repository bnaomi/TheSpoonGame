//
//  GameSceneFive.swift
//  BookCore
//
//  Created by Bruna Naomi Yamanaka Silva on 16/04/21.
//

import Foundation
import SpriteKit

public class GameSceneFive: SKScene {
    
    
    let contador5 = SKSpriteNode(imageNamed: "\(contadorGlobal)")
    //Referente a escolha do tempo livre!
    //Tela 7 e botoes
    var flag = 0
    let tela7 = SKSpriteNode(imageNamed: "Tela7")
    let button7A = SKSpriteNode(imageNamed: "Tela7botaoA")
    let button7B = SKSpriteNode(imageNamed: "Tela7botaoB")
    let button7C = SKSpriteNode(imageNamed: "Tela7botaoC")
    //botoes bloqueados
    let button7AA = SKSpriteNode(imageNamed: "Tela7botaoAA")
    let button7BB = SKSpriteNode(imageNamed: "Tela7botaoBB")
    
    
    //telas 8 assets
    //comida
    let tela8A = SKSpriteNode(imageNamed: "Tela8A")
    let tela8B = SKSpriteNode(imageNamed: "Tela8B")
    let tela8C = SKSpriteNode(imageNamed: "Tela8C")
    let nextButton5 = SKSpriteNode(imageNamed: "botaonext-4")
    
    //Tela final 9
    let tela9 = SKSpriteNode(imageNamed: "Tela9")
    let tryagain = SKSpriteNode(imageNamed: "tryagain")
    
    
    
    //botoes fantasma!
    //let botaotoscoA = SKSpriteNode(imageNamed: "tosco")
    let botaotoscoB = SKSpriteNode(imageNamed: "tosco")
    
    //esses aqui só fazem o som!!!
    let botaotoscoAA = SKSpriteNode(imageNamed: "tosco")
    let botaotoscoBB = SKSpriteNode(imageNamed: "tosco")
    
    



    override public func didMove(to view: SKView) {
        contador5.position = CGPoint(x:405, y:410)
        contador5.alpha = 0
        contador5.zPosition = 400
        addChild(contador5)
        contador5.run(SKAction.fadeIn (withDuration: 0.3))
        
        tela7.position = CGPoint(x: 0, y: 0)
        tela7.alpha = 0
        addChild(tela7)
        tela7.run(SKAction.fadeIn (withDuration: 0.3))
        
        button7C.position = CGPoint(x:-270 , y:-420)
        button7C.alpha = 0
        addChild(button7C)
        button7C.run(SKAction.fadeIn(withDuration: 0.6))
        
        
        //colocar os alpha em zero dos botoes
        button7A.alpha = 0
        button7B.alpha = 0
        button7BB.alpha = 0
        button7AA.alpha = 0
        nextButton5.alpha = 0
        tryagain.alpha = 0
        
        if contadorGlobal<=9{
            button7BB.position = CGPoint(x:-100, y:-100)
            button7BB.alpha = 0
            addChild(button7BB)
            button7BB.run(SKAction.fadeIn(withDuration: 0.6))
            
            
            button7AA.position = CGPoint(x:230 , y:50)
            button7AA.alpha = 0
            addChild(button7AA)
            button7AA.run(SKAction.fadeIn(withDuration: 0.6))
            
            //botoes toscos demais
            botaotoscoAA.position = CGPoint(x:230 , y:50)
            botaotoscoAA.alpha = 0
            botaotoscoAA.zPosition = 500
            addChild(botaotoscoAA)
            botaotoscoAA.alpha = 0
            botaotoscoBB.position = CGPoint(x:-100, y:-100)
            botaotoscoBB.alpha = 0
            botaotoscoBB.zPosition=500
            addChild(botaotoscoBB)
            botaotoscoBB.alpha = 0
            
        }else if 10..<14 ~= contadorGlobal{
            //entre 10 e 14 aberto
            button7B.position = CGPoint(x:-100, y:-100)
            button7B.alpha = 0
            button7B.zPosition = 1000
            addChild(button7B)
            button7B.alpha = 1
            button7B.run(SKAction.fadeIn(withDuration: 0.6))
            
//            botaotoscoB.position = CGPoint(x:-100, y:-100)
//            botaotoscoB.alpha = 0
//            botaotoscoB.zPosition=0
//            addChild(botaotoscoB)
//            botaotoscoB.alpha = 0
            
            button7AA.position = CGPoint(x:230 , y:50)
            button7AA.alpha = 0
            addChild(button7AA)
            button7AA.run(SKAction.fadeIn(withDuration: 0.6))
            
            //botoes toscos demais
            botaotoscoAA.position = CGPoint(x:230 , y:50)
            botaotoscoAA.alpha = 0
            botaotoscoAA.zPosition = 500
            addChild(botaotoscoAA)
            
            
        }else if contadorGlobal>=14{
            button7B.position = CGPoint(x:-100, y:-100)
            button7B.alpha = 0
            button7B.zPosition = 10
            addChild(button7B)
            button7B.run(SKAction.fadeIn(withDuration: 0.6))
            
            
            
            button7A.position = CGPoint(x:230 , y:50)
            button7A.alpha = 0
            addChild(button7A)
            button7A.run(SKAction.fadeIn(withDuration: 0.6))
            
        }
        
        
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    func touchDown(atPoint pos : CGPoint) {
    
        
        if button7C.contains(pos){
            
            if flag == 0 && button7C.alpha == 1{
                botaotoscoBB.zPosition = 0
                botaotoscoAA.zPosition = 0
                botaotoscoB.zPosition = 0
                
                
                contador5.alpha = 0
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                tela8C.position = CGPoint(x: 0, y: 0)
                tela8C.alpha = 0
                tela8C.removeFromParent()
                addChild(tela8C)
                tela8C.run(SKAction.fadeIn (withDuration: 0.3))
                
                nextButton5.position = CGPoint(x: 405, y: 500)
                nextButton5.alpha = 0
                nextButton5.removeFromParent()
                addChild(nextButton5)
                nextButton5.run(SKAction.fadeIn (withDuration: 0.8))
                
                
                //fadeout dos itens
                button7B.run(SKAction.fadeOut(withDuration: 0.3))
                button7A.run(SKAction.fadeOut(withDuration: 0.3))
                tela7.run(SKAction.fadeOut(withDuration: 0.3))
            }
            flag = 2
            
        }else if button7A.contains(pos){
            if flag == 0 && button7A.alpha == 1{
                botaotoscoBB.zPosition = 0
                botaotoscoAA.zPosition = 0
                botaotoscoB.zPosition = 0
                
                    contador5.alpha = 0
                    GSAudio.sharedInstance.playSound (soundFileName: "click")
                    tela8A.position = CGPoint(x:0, y:0)
                    tela8A.alpha = 0
                    tela8A.removeFromParent()
                    addChild(tela8A)
                    tela8A.run(SKAction.fadeIn(withDuration: 0.3))
                    
                    nextButton5.position = CGPoint(x: 405, y: 500)
                    nextButton5.alpha = 0
                    nextButton5.removeFromParent()
                    addChild(nextButton5)
                    nextButton5.run(SKAction.fadeIn (withDuration: 0.8))
                    
                    
                    //fadeout dos itens
                    button7B.run(SKAction.fadeOut(withDuration: 0.3))
                    button7A.run(SKAction.fadeOut(withDuration: 0.3))
                    tela7.run(SKAction.fadeOut(withDuration: 0.3))
                    flag = 2
                
            }
            
        }
        if button7B.contains(pos){
            if flag == 0 && button7B.alpha == 1{
                
                botaotoscoBB.zPosition = 0
                botaotoscoAA.zPosition = 0
                botaotoscoB.zPosition = 0
                
                
                contador5.alpha = 0
                GSAudio.sharedInstance.playSound (soundFileName: "click")
                tela8B.position = CGPoint(x:0, y:0)
                tela8B.alpha = 0

                addChild(tela8B)
                tela8B.run(SKAction.fadeIn(withDuration: 0.3))
                nextButton5.position = CGPoint(x: 405, y: 500)
                nextButton5.alpha = 0
                nextButton5.removeFromParent()
                addChild(nextButton5)
                nextButton5.run(SKAction.fadeIn (withDuration: 0.8))
                
                
                //fadeout dos itens
                button7B.run(SKAction.fadeOut(withDuration: 0.3))
                button7A.run(SKAction.fadeOut(withDuration: 0.3))
                tela7.run(SKAction.fadeOut(withDuration: 0.3))
                flag = 2
            }
//            if botaotoscoB.contains(pos) && botaotoscoB.zPosition == 500{
//                if flag == 0 {
//                    botaotoscoBB.zPosition = 0
//                    botaotoscoAA.zPosition = 0
//                    botaotoscoB.zPosition = 0
//
//                    contador5.alpha = 0
//                    GSAudio.sharedInstance.playSound (soundFileName: "click")
//                    tela8B.position = CGPoint(x:0, y:0)
//                    tela8B.alpha = 0
//
//                    addChild(tela8B)
//                    tela8B.run(SKAction.fadeIn(withDuration: 0.3))
//                    nextButton5.position = CGPoint(x: 405, y: 500)
//                    nextButton5.alpha = 0
//                    nextButton5.removeFromParent()
//                    addChild(nextButton5)
//                    nextButton5.run(SKAction.fadeIn (withDuration: 0.8))
//
//
//                    //fadeout dos itens
//                    button7B.run(SKAction.fadeOut(withDuration: 0.3))
//                    button7A.run(SKAction.fadeOut(withDuration: 0.3))
//                    tela7.run(SKAction.fadeOut(withDuration: 0.3))
//                    flag = 2
//                }
//            }
            
            
        }else if nextButton5.contains(pos){
            
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            //manda pra proxima cena
            nextButton5.run(SKAction.fadeOut(withDuration: 0.3))
            tela9.position = CGPoint(x: 0, y: 0)
            tela9.alpha = 0
            addChild(tela9)
            tela9.run(SKAction.fadeIn (withDuration: 0.3))
            tryagain.position = CGPoint (x:405, y:-550)
            tryagain.alpha = 0
            tryagain.removeFromParent()
            addChild(tryagain)
            tryagain.run(SKAction.fadeIn(withDuration: 0.3))
            
            //colocar os alpha em zero dos botoes
            button7A.alpha = 0
            button7B.alpha = 0
            button7BB.alpha = 0
            button7AA.alpha = 0
            nextButton5.alpha = 0
        
            
        }else if tryagain.contains(pos) && tryagain.alpha == 1 {
            GSAudio.sharedInstance.stopAll()
            contadorGlobal=10
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            let gameScene = GameScene(fileNamed: "GameScene")
            gameScene?.scaleMode = .aspectFit
            self.view?.presentScene(gameScene)
            
        }
//            else if button7AA.contains(pos) && button7AA.alpha == 1 {
//            GSAudio.sharedInstance.playSound (soundFileName: "erro")
//
//        }else if button7BB.contains(pos) && button7BB.alpha == 1 {
//            GSAudio.sharedInstance.playSound (soundFileName: "erro")
//        }
        if botaotoscoBB.contains(pos) && botaotoscoBB.zPosition == 500 {
            GSAudio.sharedInstance.playSound (soundFileName: "erro")
        }
        if botaotoscoAA.contains(pos) && botaotoscoAA.zPosition == 500{
            GSAudio.sharedInstance.playSound (soundFileName: "erro")
        }
        //botao tosco b
        
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



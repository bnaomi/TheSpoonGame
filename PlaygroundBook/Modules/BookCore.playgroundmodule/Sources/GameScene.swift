import SpriteKit
import Foundation
import AVFoundation

public var contadorGlobal = 10
//User default caso nao funcione :3

public class GameScene: SKScene {
    //Essa primeira cena mostra a tela inicial e a tela que introduz a mecanica com um botao de next
    //assets da tela inicial
    let telaInicial = SKSpriteNode(imageNamed: "inicio")
    let startButton = SKSpriteNode(imageNamed: "botaoinicio")
    //variavel contador que vamos usar
    
    
    
    //botao next usado varias vezes
    let nextButton = SKSpriteNode(imageNamed: "botaonext")
    let background = SKSpriteNode(imageNamed: "Introducao")


    override public func didMove(to view: SKView) {
        GSAudio.sharedInstance.playSound (soundFileName: "music")
        telaInicial.position.x = 0
        telaInicial.position.y = 0
        startButton.position.x = 107
        startButton.position.y = -410
        

        addChild(telaInicial)
        addChild(startButton)
    }

    @objc static override public var supportsSecureCoding: Bool {
        // SKNode conforms to NSSecureCoding, so any subclass going
        // through the decoding process must support secure coding
        get {
            return true
        }
    }

    public func touchDown(atPoint pos : CGPoint) {
        if startButton.contains(pos) && startButton.alpha == 1 {
            //
            GSAudio.sharedInstance.playSound(soundFileName: "click")
            //
            let background = SKSpriteNode(imageNamed: "Introducao")
            background.position = CGPoint(x: 0, y: 0)
            // Agora vamos colocar o background na cena
            background.alpha = 0
            addChild(background)
            background.run(SKAction.fadeIn(withDuration: 0.3))
            telaInicial.run(SKAction.fadeOut(withDuration: 0.3))
            nextButton.position = CGPoint(x: 405, y: -270)
            nextButton.alpha = 0
            nextButton.removeFromParent()
            addChild(nextButton)
            nextButton.run(SKAction.fadeIn (withDuration: 0.8))
            
            startButton.alpha = 0
            
        }
        if nextButton.contains(pos) {
            GSAudio.sharedInstance.playSound (soundFileName: "click")
            
            nextButton.run(SKAction.fadeOut(withDuration: 0.3))
            background.run(SKAction.fadeOut(withDuration: 0.3))
            //chamando a GameSceneTwo.swift
            
            let gameSceneTwo = GameSceneTwo (fileNamed: "GameSceneTwo")
            gameSceneTwo?.scaleMode = .aspectFit
            self.view?.presentScene(gameSceneTwo)
            
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


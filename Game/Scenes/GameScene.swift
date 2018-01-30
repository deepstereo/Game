//
//  GameScene.swift
//  Game
//
//  Created by Sergey Kozak on 29/01/2018.
//  Copyright © 2018 Centennial. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

var screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    
    var planeSprite: Plane?
   
    
    override func didMove(to view: SKView) {
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        
        // add plane
        
        self.planeSprite = Plane()
        self.planeSprite?.position = CGPoint(x: screenWidth! * 0.5, y: 50)
        self.addChild(planeSprite!)
        
    
    }
    
    func touchDown(atPoint pos : CGPoint) {
        self.planeSprite?.touchMove(newPos: CGPoint(x: pos.x, y: 50))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        self.planeSprite?.touchMove(newPos: CGPoint(x: pos.x, y: 50))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        self.planeSprite?.touchMove(newPos: CGPoint(x: pos.x, y: 50))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        self.planeSprite?.update()
    }
}

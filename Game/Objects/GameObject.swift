//
//  GameObject.swift
//  Game
//
//  Created by Sergey Kozak on 29/01/2018.
//  Copyright © 2018 Centennial. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode {

    var dx: CGFloat?
    var dy: CGFloat?
    var width: CGFloat?
    var halfWidth: CGFloat?
    var halfHeight: CGFloat?
    var height: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    
    init(imageString: String, initialScale: CGFloat) {
        // Initialize object with image
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture, color: color, size: texture.size())
        
        self.scale = initialScale
        self.width = texture.size().width * self.scale!
        self.height = texture.size().height * self.scale!
        self.halfWidth = self.width! * 0.5
        self.halfHeight = self.height! * 0.5
        self.isColliding = false
        self.name = imageString
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func reset() {
    }
    
    public func checkBounds() {
    }
    
    public func update() {
    }
    
    public func start() {
        
    }
    
    
}

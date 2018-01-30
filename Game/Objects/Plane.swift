//
//  Plane.swift
//  Game
//
//  Created by Sergey Kozak on 29/01/2018.
//  Copyright © 2018 Centennial. All rights reserved.
//

import SpriteKit

class Plane: GameObject {
    
    //constructor
    
    init() {
        super.init(imageString: "plane", initialScale: 1.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func reset() {
        
    }
    
    override func update() {
        self.checkBounds()
        
    }
    
    override func checkBounds() {
        if (self.position.x > screenSize.width - self.halfWidth!) {
            self.position.x = screenSize.width - self.halfWidth!
        }
        
        if (self.position.x < self.halfWidth!) {
            self.position.x = self.halfWidth!
        }
        
    }
    
    override func start() {
        
    }
    
    func touchMove(newPos: CGPoint) {
        self.position = newPos
    }
    
}

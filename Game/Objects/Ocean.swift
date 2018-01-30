//
//  Ocean.swift
//  Game
//
//  Created by Sergey Kozak on 29/01/2018.
//  Copyright © 2018 Centennial. All rights reserved.
//

import SpriteKit

class Ocean: GameObject {
    // constructor
    
    init(){
        // initialize an object with an image
        super.init(imageString: "ocean", initialScale: 1.0)
        start()

    }

    override func start() {
        self.anchorPoint = CGPoint.zero
        self.dy = 5.0
    }
    
    override func reset() {
        self.position = CGPoint.zero
    }
    
    override func checkBounds() {
        if (self.position.y < -667) {
            self.reset()
        }
    }
    
    override func update() {
        self.position.y -= self.dy!
        self.checkBounds()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

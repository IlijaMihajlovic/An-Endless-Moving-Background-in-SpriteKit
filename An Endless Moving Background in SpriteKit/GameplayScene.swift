//
//  GameplayScene.swift
//  An Endless Moving Background in SpriteKit
//
//  Created by Ilija Mihajlovic on 9/17/18.
//  Copyright © 2018 Ilija Mihajlovic. All rights reserved.
//

import SpriteKit

class GameplayScene: SKScene {

 
    override func didMove(to view: SKView) {
       
        print("Inside Gameplay Scene")
        createBackground()
        

}
    func createBackground() {
        let backgroundTexture = SKTexture(imageNamed: "background2")
        
        for i in 0 ... 3 {
            let background = SKSpriteNode(texture: backgroundTexture)
            background.zPosition = 1
            
            //makes the background texture position itself from the left edge
            background.anchorPoint = CGPoint.zero
            
            //calculate the X position of each background.The first time the loop goes around X will be 0, and the second time the loop goes around X will be the width of the texture minus 1 and so on
            background.position = CGPoint(x: (backgroundTexture.size().width * CGFloat(i)) - CGFloat(1 * i), y: 0)
            addChild(background)
            
            //Each background will move to the left a distance equal to its width, then jump back another distance equal to its width. This repeats in a sequence forever,
            let moveLeft = SKAction.moveBy(x: -backgroundTexture.size().width, y: 0, duration: 15)
            let moveReset = SKAction.moveBy(x: backgroundTexture.size().width, y: 0, duration: 0)
            let moveLoop = SKAction.sequence([moveLeft, moveReset])
            let moveForever = SKAction.repeatForever(moveLoop)
            
            background.run(moveForever)
        }
    }
}

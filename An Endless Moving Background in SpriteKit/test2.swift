////
////  test2.swift
////  An Endless Moving Background in SpriteKit
////
////  Created by Ilija Mihajlovic on 9/17/18.
////  Copyright © 2018 Ilija Mihajlovic. All rights reserved.
////
//
//import Foundation
//import SpriteKit
//
//class GameplayScene: SKScene {
//    
//    //   var bg = SKSpriteNode()
//
//        
//    override func didMove(to view: SKView) {
//        print("Inside Gameplay Scene")
//        scene?.backgroundColor = SKColor.orange
//        
//        let bgTexture = SKTexture(imageNamed: "background2.png")
//        
//        let moveBGAnimation = SKAction.move(by: CGVector(dx: -bgTexture.size().width, dy: 0), duration: 5)
//        let shiftBGAnimation = SKAction.move(by: CGVector(dx: bgTexture.size().width, dy: 0), duration: 0)
//        let moveBGForever = SKAction.repeatForever(SKAction.sequence([moveBGAnimation, shiftBGAnimation]))
//        
//        var i: CGFloat = 0
//        
//        while i < 3 {
//            
//            bg = SKSpriteNode(texture: bgTexture)
//            bg.zPosition = 1
//            bg.position = CGPoint(x: bgTexture.size().width * i , y: self.frame.midY)
//            
//            bg.size.height = self.frame.height
//            bg.run(moveBGForever)
//            
//            self.addChild(bg)
//            i += 1
//            
//        }
//    }
//    
//}

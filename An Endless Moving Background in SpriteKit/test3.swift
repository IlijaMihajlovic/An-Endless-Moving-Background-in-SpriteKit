//
//  test3.swift
//  An Endless Moving Background in SpriteKit
//
//  Created by Ilija Mihajlovic on 9/17/18.
//  Copyright © 2018 Ilija Mihajlovic. All rights reserved.
//

//import Foundation
//
//import SpriteKit
//
//class GameplayScene: SKScene {
//    
//    var backgroundSpeed: CGFloat = 80.0 // speed may vary as you like
//    var deltaTime: TimeInterval = 0
//    var lastUpdateTimeInterval: TimeInterval = 0
//    
//    
//    override func didMove(to view: SKView) {
//        setUpBackgrounds()
//    }
//    
//    
//    func setUpBackgrounds() {
//        //add background
//        
//        for i in 0..<3 {
//            // add backgrounds, my images were namely, bg-0.png, bg-1.png, bg-2.png
//            
//            let background = SKSpriteNode(imageNamed: "bg\(i).png")
//            background.anchorPoint = CGPoint.zero
//            background.position = CGPoint(x: CGFloat(i) * size.width, y: 0.0)
//            background.size = self.size
//            background.zPosition = 5
//            background.name = "Background"
//            self.addChild(background)
//            
//        }
//        
//        
//    }
//    
//    
//    override func update(_ currentTime: TimeInterval) {
//        if lastUpdateTimeInterval == 0 {
//            lastUpdateTimeInterval = currentTime
//        }
//        
//        deltaTime = currentTime - lastUpdateTimeInterval
//        lastUpdateTimeInterval = currentTime
//        updateBackground()
//        
//    }
//    
//    func updateBackground() {
//        self.enumerateChildNodes(withName: "Background") { (node, stop) in
//            
//            if let back = node as? SKSpriteNode {
//                let move = CGPoint(x: -self.backgroundSpeed * CGFloat(self.deltaTime), y: 0)
//                back.position += move
//                
//                if back.position.x < -back.size.width {
//                    back.position += CGPoint(x: back.size.width * CGFloat(3), y: 0)
//                }
//            }
//            
//        }
//    }
//    
//}
//
//

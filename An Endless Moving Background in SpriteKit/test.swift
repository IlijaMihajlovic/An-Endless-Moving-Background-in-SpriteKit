////
////  test.swift
////  An Endless Moving Background in SpriteKit
////
////  Created by Ilija Mihajlovic on 9/17/18.
////  Copyright © 2018 Ilija Mihajlovic. All rights reserved.
////
//
//import Foundation
//import SpriteKit
//
//
//class GameplayScene: SKScene {
//    
//    var background = SKSpriteNode()
//    
//    override func didMove(to view: SKView) {
//        print("Inside Gameplay Scene")
//        //cene?.backgroundColor = SKColor.orange
//
//        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//        createGameBackround()
//    }
//
//    override func update(_ currentTime: TimeInterval) {
//        moveBackgrounds()
//    }
//    
//    func createGameBackround() {
//
//        for i in 0...3 {
//
//            background = SKSpriteNode(imageNamed: "background2")
//            background.name = "Background"
//            background.size = CGSize(width: (self.scene?.size.width)!, height: 250)
//            background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//            background.position = CGPoint(x: CGFloat(i) * background.size.width, y: -(self.frame.size.height / 2))
//            background.zPosition = 4
//            
//            //Adds the backround sprite node as a child to scene
//            self.addChild(background)
//            
//        }
//    }
//
//    func moveBackgrounds() {
//
//        self.enumerateChildNodes(withName:"Background", using: ({ (node, error) in
//
//            //Subtracts the x postion of this node by 2
//            node.position.x -= 2
//            
//            //Check if the x postion of the node is way of left of the screen
//            if node.position.x < -((self.scene?.size.width)!) {
//
//                //Then we move the postion of the node by how many times we created the backgrounds(it this situation three times)
//                node.position.x += (self.scene?.size.width)! * 3
//            }
//        }))
//
//    }
//}

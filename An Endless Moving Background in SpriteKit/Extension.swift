//
//  Extension.swift
//  An Endless Moving Background in SpriteKit
//
//  Created by Ilija Mihajlovic on 9/17/18.
//  Copyright © 2018 Ilija Mihajlovic. All rights reserved.
//

import CoreGraphics
import SpriteKit

public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
}

//
//  ContentView.swift
//  Swift-UI
//
//  Created by Sk Jasimuddin on 15/09/24.
//

import SwiftUI
import SpriteKit

class GameScene : SKScene {
    
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let location = touch.location(in: self)
        
        let box = SKSpriteNode(color: .red, size: CGSize(width: 50, height: 50))
        
        box.position = location
        
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
    }
}

struct ContentView: View {
    
    var scene : SKScene {
        let scene  = GameScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .fill
         return scene
    }
    var body: some View {
        VStack {
             
          SpriteView(scene: scene)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

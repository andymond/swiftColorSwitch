//
//  GameViewController.swift
//  ColorSwitch
//
//  Created by Andy Dymond on 10/3/19.
//  Copyright © 2019 Andy Dymond. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
          let scene = MenuScene(size: view.bounds.size)
          // Set the scale mode to scale to fit the window
          scene.scaleMode = .aspectFill
                
          // Present the scene
          view.presentScene(scene)

          view.ignoresSiblingOrder = true

          view.showsFPS = true
          view.showsNodeCount = true
        }
    }
}

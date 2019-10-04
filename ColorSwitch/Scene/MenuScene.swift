//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by Andy Dymond on 10/3/19.
//  Copyright © 2019 Andy Dymond. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
  override func didMove(to view: SKView) {
    backgroundColor = .white
    addLogo()
    addLabels()
  }

  func addLogo() {
    let logo = SKSpriteNode(imageNamed: "logo")
    logo.size = CGSize(width: frame.width/4, height: frame.width/4)
    logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
    addChild(logo)
  }

  func addLabels() {
    let playLabel = SKLabelNode(text: "Tap to Play!")
    playLabel.fontName = "AveniNext-Bold"
    playLabel.fontSize = 50.0
    playLabel.fontColor = .darkGray
    playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
    addChild(playLabel)
    animate(label: playLabel)

    let highscoreLabel = SKLabelNode(text: "High Score:" + "\(UserDefaults.standard.integer(forKey: "Highscore"))")
    highscoreLabel.fontName = "AveniNext-Bold"
    highscoreLabel.fontSize = 40.0
    highscoreLabel.fontColor = .darkGray
    highscoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highscoreLabel.frame.height*4)
    addChild(highscoreLabel)

    let recentScoreLabel = SKLabelNode(text: "Recent Score:" + "\(UserDefaults.standard.integer(forKey: "RecentScore"))")
    recentScoreLabel.fontName = "AveniNext-Bold"
    recentScoreLabel.fontSize = 40.0
    recentScoreLabel.fontColor = .darkGray
    recentScoreLabel.position = CGPoint(x: frame.midX, y: highscoreLabel.position.y - recentScoreLabel.frame.size.height*2)
    addChild(recentScoreLabel)
  }

  func animate(label: SKLabelNode) {
    let scaleUp = SKAction.scale(to: 1.1, duration: 1.5)
    let scaleDown = SKAction.scale(to: 0.9, duration: 1.5)
    let sequence = SKAction.sequence([scaleUp, scaleDown])
    label.run(SKAction.repeatForever(sequence))
  }

  override func touchesBegan(_ touches: Set<UITouch>, with even: UIEvent?) {
    let gameScene = GameScene(size: view!.bounds.size)
    view!.presentScene(gameScene)
  }
}

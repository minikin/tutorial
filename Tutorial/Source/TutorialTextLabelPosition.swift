//
//  TutorialTextLabelPosition.swift
//  Tutorial
//
//  Created by Sasha Prokhorenko on 8/28/17.
//  Copyright © 2017 Minikin.me. All rights reserved.
//

import UIKit

struct  TutorialTextLabelPosition {
  // MARK: - Properties
  private let deviceIdiom = UIScreen.main.traitCollection.userInterfaceIdiom
  var position: TutorialTextPosition
  var xPostion: CGFloat = 0.0
  var yPostion: CGFloat = 0.0
  // MARK: - Initialization
  init(position: TutorialTextPosition, view: UIView) {
    self.position = position
    switch position {
    case .bottomRight:
      xPostion = view.frame.width/1.9
      yPostion = view.frame.width/1.6
    case .bottomLeft:
      if deviceIdiom == .phone {
        xPostion = view.frame.width/6
        yPostion = view.frame.width/1.2
      } else {
        xPostion = view.frame.width/8
        yPostion = view.frame.width/1.9
      }
    case .topRight:
      xPostion = view.frame.width/1.9
      yPostion = view.frame.width/4
    case .topLeft:
      xPostion = view.frame.width/3
      yPostion = view.frame.width/4
    case .centerRight:
      xPostion = view.frame.width/1.6
      yPostion = view.frame.width/2.5
    case .centerLeft:
      xPostion = view.frame.width/6
      yPostion = view.frame.width/2.23
    case .cenertTop:
      xPostion = view.frame.width/2.23
      yPostion = view.frame.width/1.6
    case .centerBottom:
      if deviceIdiom == .phone {
        xPostion = view.frame.width/2.23
        yPostion = view.frame.width/1.6
      } else {
        xPostion = view.frame.width/3
        yPostion = view.frame.width/2
      }
    }
  }
}

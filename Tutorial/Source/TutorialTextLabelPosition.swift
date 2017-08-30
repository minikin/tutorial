//
//  TutorialTextLabelPosition.swift
//  Tutorial
//
//  Created by Sasha Prokhorenko on 8/28/17.
//  Copyright © 2017 Sasha Prokhorenko All rights reserved.
//
//  Permission to use, copy, modify, and/or distribute this software for any purpose with or without
//  fee is hereby granted, provided that the above copyright notice and this permission notice
//  appear in all copies.
//
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
//  SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
//  AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
//  NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
//  OF THIS SOFTWARE.
//

import UIKit

public struct  TutorialTextLabelPosition {
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

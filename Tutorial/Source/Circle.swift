//
//  Circle.swift
//  Tutorial
//
//  Created by Sasha Prokhorenko on 8/30/17.
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

public struct Circle: Circleable {}

protocol Circleable {
  func shrinkedBlurWhiteCirclePath(_ targetView: UIView, view: UIView) -> UIBezierPath
  func expandedBlurWhiteCirclePath(_ targetView: UIView, view: UIView) -> UIBezierPath
  func coloredCircleLayerPath(_ targetView: UIView, view: UIView) -> UIBezierPath
}
extension Circleable {
  func shrinkedBlurWhiteCirclePath (_ targetView: UIView, view: UIView) -> UIBezierPath {
    let radius = targetView.frame.size.width + 10
    let superViewWidth = targetView.frame.size.width + 11
    let centerOfView = view.bounds.size.width / 2 - radius / 2
    let path = UIBezierPath(roundedRect: CGRect(x: view.bounds.size.width / 2  - superViewWidth / 2,
                                                y: view.bounds.size.width/2 - superViewWidth / 2,
                                                width: superViewWidth,
                                                height: superViewWidth),
                            cornerRadius: superViewWidth)
    let circlePath = UIBezierPath(roundedRect: CGRect(x:centerOfView,
                                                      y: centerOfView,
                                                      width: radius,
                                                      height: radius),
                                  cornerRadius: radius)
    path.append(circlePath)
    path.usesEvenOddFillRule = true
    return path
  }
  func expandedBlurWhiteCirclePath(_ targetView: UIView, view: UIView) -> UIBezierPath {
    let radius = targetView.frame.size.width + 150
    let superViewWidth = view.bounds.size.width / 4
    let centerOfView = view.bounds.size.width / 2 - radius / 2
    let path = UIBezierPath(roundedRect: CGRect(x: view.bounds.size.width / 2 - superViewWidth / 2,
                                                y: view.bounds.size.width / 2 - superViewWidth / 2,
                                                width: superViewWidth,
                                                height: superViewWidth),
                            cornerRadius: superViewWidth)
    let circlePath = UIBezierPath(roundedRect: CGRect(x:centerOfView,
                                                      y: centerOfView,
                                                      width: radius,
                                                      height: radius),
                                  cornerRadius: radius)
    
    path.append(circlePath)
    path.usesEvenOddFillRule = true
    return path
  }
  func coloredCircleLayerPath(_ targetView: UIView, view: UIView) -> UIBezierPath {
    let radius = targetView.frame.size.width + 10
    let centerOfView = view.bounds.size.width / 2 - radius
    let path = UIBezierPath(roundedRect: CGRect(x: 0,
                                                y: 0,
                                                width: view.bounds.size.width,
                                                height: view.bounds.size.width),
                            cornerRadius: view.bounds.size.width)
    let circlePath = UIBezierPath(roundedRect: CGRect(x:centerOfView,
                                                      y: centerOfView,
                                                      width: 2 * radius,
                                                      height: 2 * radius),
                                  cornerRadius: radius)
    path.append(circlePath)
    path.usesEvenOddFillRule = true
    return path
  }
}

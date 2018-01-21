//
//  XibViewLoad.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 19/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class XibViewLoad : UIView, LoadViewProtocol {
  
  var contentView: UIView?
  @IBInspectable var nibName: String?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    xibSetup()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    xibSetup()
  }
  
  func xibSetup() {
    guard let nibName = nibName else { return }
    guard let view = loadView(nibName) else { return }
    view.frame = bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(view)
    contentView = view
  }
}

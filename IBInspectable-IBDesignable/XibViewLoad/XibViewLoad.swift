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
class XibViewLoad : UIView {
  
  var contentView: UIView?
  @IBInspectable var nibName: String?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    xibSetup()
  }
  
  func xibSetup() {
    guard let view = loadViewFromNib() else { return }
    view.frame = bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(view)
    contentView = view
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    xibSetup()
    contentView?.prepareForInterfaceBuilder()
  }
  
  func loadViewFromNib() -> UIView? {
    guard let nibName = nibName else { return nil }
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: nibName, bundle: bundle)
    return nib.instantiate(withOwner: self, options: nil).first as? UIView
  }
}

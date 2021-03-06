//
//  CustomView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 16/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomView: UIView {
  
 @IBInspectable
  var cornerRadius: CGFloat = 0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    xibSetup()
  }

  func xibSetup(){
    self.layer.shadowColor = Utils.hexStringToUIColor(hex: "#CACACA").cgColor
    self.layer.borderWidth = 1.0
    self.layer.borderColor = Utils.hexStringToUIColor(hex: "#E6E9EC").cgColor
    self.layer.shadowOffset = CGSize(width: CGFloat(1.0), height: CGFloat(1.0))
    self.layer.masksToBounds = false
    self.layer.shadowOpacity = Float(0.8)    
  }
}

@IBDesignable class CustomButton: UIButton {
  
  @IBInspectable public var newColor: UIColor = UIColor.green {
    didSet {
      self.setTitleColor(newColor, for: .normal)
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    xibSetup()
  }
  
  func xibSetup() {
    self.backgroundColor = UIColor.blue
    self.layer.cornerRadius = 10
  }
}

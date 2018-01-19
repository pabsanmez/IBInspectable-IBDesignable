//
//  CustomView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 16/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomView: UIView {
  
  
 @IBInspectable
  var cornerRadius: CGFloat = 0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
  override init(frame: CGRect) {
    //What we see in the IB
    super.init(frame: frame)
    self.layer.backgroundColor = UIColor.green.cgColor
    self.layer.cornerRadius = 20
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    backgroundColor = UIColor.gray
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.layer.cornerRadius = 100
    backgroundColor = UIColor.yellow
  }
  
  
}

@IBDesignable class CustomButton: UIButton {
  
  @IBInspectable public var newColor: UIColor = UIColor.green {
    didSet {
      self.setTitleColor(newColor, for: .normal)
    }
  }
  override func draw(_ rect: CGRect) {
    newColor = UIColor.red
  }

}

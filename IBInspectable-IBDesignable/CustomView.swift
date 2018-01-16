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
  
  
// var cornerRadiusa: CGFloat = 0 {
//    didSet {
//      self.layer.cornerRadius = cornerRadiusa
//    }
//  }
  
  override var backgroundColor: UIColor? {
      didSet {
        //self.layer.backgroundColor = backgroundColor?.cgColor
      }
  }
  
  override init(frame: CGRect) {
    // 1. setup any properties here
    // 2. call super.init(frame:)

    //Aqui lo que se ve
    super.init(frame: frame)
    self.layer.backgroundColor = UIColor.green.cgColor
    backgroundColor = UIColor.red
    self.layer.cornerRadius = 200
    

    // 3. Setup view from .xib file
    //xibSetup()
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    backgroundColor = UIColor.gray
    
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    backgroundColor = UIColor.yellow

    self.layer.cornerRadius = 100

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

//
//  ReusableButtonStackView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sánchez Gómez on 20/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import UIKit

@IBDesignable
class ReusableButtonStackView: UIView,LoadViewProtocol {
  
  @IBOutlet weak var btn1: UIButton!
  @IBOutlet weak var btn2: UIButton!
  @IBOutlet weak var btn3: UIButton!
  
  @IBAction func btnClicked(_ sender: UIButton) {
    switch sender.tag {
    case 0:
      print("Clicked: Button 1")
    case 1:
      print("Clicked: Button 2")
    case 2:
      print("Clicked: Button 3")
    default:
      print ("Unkown")
    }
  }

  
  @IBInspectable
  var cornerRadiusButtons: CGFloat = 0 {
    didSet {
      if btn1 != nil, btn2 != nil, btn3 != nil {
        btn1.layer.cornerRadius = cornerRadiusButtons
        btn2.layer.cornerRadius = cornerRadiusButtons
        btn3.layer.cornerRadius = cornerRadiusButtons
      }
    }
  }
  
  @IBInspectable
  var backgroundColorButton: UIColor? {
    didSet {
      if btn1 != nil, btn2 != nil, btn3 != nil {
        btn1.layer.backgroundColor = backgroundColorButton?.cgColor
        btn2.layer.backgroundColor = backgroundColorButton?.cgColor
        btn3.layer.backgroundColor = backgroundColorButton?.cgColor
      }
    }
  }

  //To see how you modify the outlets in the interface builder (in the ReusableButtonStackView.xib) you need to load the view on it.
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    guard let view = loadView("ReusableButtonStackView") else { return }
    view.frame = bounds
    view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    addSubview(view)
  }
  
    // Storyboard does not load xibs. You have to load the xib explicitly inside your view. The storyboard creates the views using init(coder:):. So if we don't load the view programmatically or using XibViewLoad it won't print the view. Also the IBOutlet won't be initialized and if we have force casts we will get a SIGABRT.
  override func awakeFromNib() {
    super.awakeFromNib()
    ({ self.backgroundColorButton = backgroundColorButton })()
    ({ self.cornerRadiusButtons = cornerRadiusButtons })()

  }
}

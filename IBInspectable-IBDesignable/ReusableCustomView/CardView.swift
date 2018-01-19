//
//  CardView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 18/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView: UIView, returnView {
  
  // Our custom view from the XIB file
  var view: UIView!
  
  // Outlets
  
  @IBOutlet weak var label: UILabel!
  //@IBOutlet weak var label: UILabel!
  /*@IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var button: UIButton!
  
  @IBAction func buttonPressed(_ sender: Any) {
    print("Pressed button!")
  }
  
  @IBInspectable var image: UIImage? {
    didSet {
      imageView.image = image
    }
  }*/
  @IBInspectable var text: String? {
    didSet {
      label.text = text
    }
  }
  
  override init(frame: CGRect) {
    // 1. setup any properties here
    
    // 2. call super.init(frame:)
    super.init(frame: frame)
    
    // 3. Setup view from .xib file
    xibSetup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    // 1. setup any properties here
    
    // 2. call super.init(coder:)
    super.init(coder: aDecoder)
    
    // 3. Setup view from .xib file
    xibSetup()
    //        self.view = loadViewFromNib() as! CustomView
  }
  
  func xibSetup() {
    view = loadViewFromNib()
    view.frame = bounds
    view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
    addSubview(view)
  }
  
  func loadViewFromNib() -> UIView {
    let bundle = Bundle(for: type(of:self))
    let nib = UINib(nibName: "CardView", bundle: bundle)
    // Assumes UIView is top level and only object in CustomView.xib file
    let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    return view
  }
  
  func getView() -> UIView {
    return view
  }
  
}

protocol returnView {
  func getView() -> UIView
}



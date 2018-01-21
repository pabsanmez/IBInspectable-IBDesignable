//
//  CardView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 18/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CardView: UIView {
  
  // Our custom view from the XIB file
  var view: UIView!
  
  // Outlets
  @IBOutlet weak var imgProfile: UIImageView!
  @IBOutlet weak var lblname: UILabel!
  @IBOutlet weak var lblJob: UILabel!
  @IBOutlet weak var lblLocation: UILabel!
  
  // Inspectables.
  @IBInspectable var profilePicture: UIImage? {
    didSet {
      imgProfile.image = profilePicture
    }
  }
  
  @IBInspectable var name: String? {
    didSet {
      lblname.text = name
    }
  }
  
  @IBInspectable var job: String? {
    didSet {
      lblJob.text = job
    }
  }
  
  @IBInspectable var location: String? {
    didSet {
      lblLocation.text = location
    }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
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
}



//
//  ReusableCardView.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sanchez Gomez on 18/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class ReusableCardView: UIView, LoadViewProtocol {
  
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
  
  @IBInspectable var imgCornerRadius: CGFloat = 0 {
    didSet {
      imgProfile.layer.cornerRadius = imgCornerRadius
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
  
  // Initializers.
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
  
  func xibSetup() {
    //self.imgCornerRadius = 100
    if let view = loadView("ReusableCardView") {
      view.frame = bounds
      view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
      addSubview(view)
    }
  }
}



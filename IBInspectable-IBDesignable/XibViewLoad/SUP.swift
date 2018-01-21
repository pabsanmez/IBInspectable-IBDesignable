//
//  SUP.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sánchez Gómez on 20/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import UIKit

@IBDesignable
class SUP: UIView {
    
  @IBOutlet weak var apo: UIButton!
  
  @IBAction func SUUUUUU(_ sender: Any) {
    print("suuu")
  }
  
  @IBInspectable
  var cornerRadius: CGFloat = 0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
      if apo != nil {
        apo.setTitle("mememe", for: .normal)

      }
    }
  }
  
  override func awakeFromNib() {
    apo.setTitle("LOLACO", for: .normal)
    let meh = cornerRadius
    cornerRadius = meh
  }
}

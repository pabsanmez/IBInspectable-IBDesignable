//
//  SUP.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sánchez Gómez on 20/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import UIKit


class SUP: UIView {
    
  @IBOutlet weak var apo: UIButton!
  
  @IBAction func SUUUUUU(_ sender: Any) {
    print("suuu")
  }
  
  override func awakeFromNib() {
    apo.setTitle("LOLACO", for: .normal)
  }
  
  /*override init(frame: CGRect) {
    //What we see in the IB
    super.init(frame: frame)
  }
  
  public required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
  }*/


}

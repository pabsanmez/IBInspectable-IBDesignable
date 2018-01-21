//
//  LoadViewProtocol.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sánchez Gómez on 21/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import Foundation
import UIKit

protocol LoadViewProtocol {
  func loadView(_ nibName: String) -> UIView?
}

extension LoadViewProtocol {
  func loadView(_ nibName: String) -> UIView? {
    if nibName.isEmpty {
      return nil
    }
    let bundle = Bundle(for: type(of: self) as! AnyClass)
    let nib = UINib(nibName: nibName, bundle: bundle)
    if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
      return view
    }
    return nil
  }
}

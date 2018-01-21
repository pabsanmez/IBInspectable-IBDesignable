//
//  MainViewController.swift
//  IBInspectable-IBDesignable
//
//  Created by Pablo Sánchez Gómez on 20/1/18.
//  Copyright © 2018 Pablo Sanchez Gomez. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

  @IBOutlet weak var SUP: XibViewLoad!
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
    if let meh = SUP.contentView as? SUP {
     // meh.apo.setTitle("CACA", for: .normal)

    }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

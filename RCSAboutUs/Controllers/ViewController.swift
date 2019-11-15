//
//  ViewController.swift
//  RCSAboutUs
//
//  Created by Artjoms Vorona on 14/11/2019.
//  Copyright © 2019 Artjoms Vorona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var artjomsPicture: UIImageView!
    
    @IBOutlet weak var katePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      artjomsPicture.layer.cornerRadius = artjomsPicture.frame.size.width/2
       artjomsPicture.clipsToBounds = true
        
        katePicture.layer.cornerRadius = katePicture.frame.size.width/2
        katePicture.clipsToBounds = true
        
        
        
    }
    

}



//
//  ViewController.swift
//  ViewFinder
//
//  Created by Olukanyinsola(Esther) on 8/13/19.
//  Copyright © 2019 Olukanyinsola(Esther). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
       
    }
}




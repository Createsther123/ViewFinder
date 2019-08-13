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

    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
    
    }
    
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    private func imagePickerControllerDidCancel(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
}


    





//
//  AddPhotoViewController.swift
//  Caboodle
//
//  Created by Andrea Watkins on 2/23/22.
//

import UIKit


    var Favorites: [Clothes] = []
    var myClothes: [Clothes] = []
    var tops     : [Int] = []
    var bottoms  : [Int] = []
    var shoes    : [Int] = []



let types = [
    "Top","Bottoms","Shoes"]


class AddPhotoViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var vc: UIButton!
    @IBOutlet weak var imageView: UIImageView!
  
 
    @IBOutlet weak var ClothingType: UIPickerView!
    @IBOutlet weak var ClothingName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.74, green: 0.41, blue: 0.80, alpha: 0.65).cgColor,UIColor(red: 1.00, green: 0.68, blue: 0.00, alpha: 0.27).cgColor]
                gradientLayer.shouldRasterize = true
        view.layer.insertSublayer(gradientLayer, at: 0)        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
    }
    
    @IBAction func takePhotoButton(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
    
    @IBAction func openPhotoLibraryButton(sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        imageView.image = info[.originalImage] as? UIImage;
        
       
        }
    
    

    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    
    @IBAction func SaveButton(_ sender: UIButton) {
        guard let img = imageView.image else {
            let title = "Missing Photo"
            let message = "Please upload a photo to proceed."
            let alertController =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
            return
        }
        if(ClothingName.text == ""){
            let title = "Missing Nickname"
            let message = "Please include a nickname to proceed."
            let alertController =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
        else{
            let clothing = img
            let item = Clothes(
                name: ClothingName.text ?? "",
                type: (types[ClothingType.selectedRow(inComponent: 0)]),
                image: clothing)
            
            myClothes.append(item)
            
            let index =  myClothes.firstIndex(where: {$0.name == item.name}) ?? 0;
            
            if(item.type == "Bottoms") { bottoms.append(index)}
            if(item.type == "Top") { tops.append(index)}
            if(item.type == "Shoes") { shoes.append(index)}
            
            ClothingName.text = "";
            imageView.image = nil;
            let title = "Photo saved!"
            let message = "To review your photos, visit your closet!"
            let alertController =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return types.count
       }
       
       // MARK: UIPickerViewDelegate
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return types[row]
       }

}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



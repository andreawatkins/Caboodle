//
//  AddPhotoViewController.swift
//  Caboodle
//
//  Created by Andrea Watkins on 2/23/22.
//

import UIKit


    var Favorites: [Clothes] = []
    var myClothes: [Clothes] = []



let types = [
    "Shirt","Pants","Shoes"]


class AddPhotoViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var vc: UIButton!
    @IBOutlet weak var imageView: UIImageView!
  
 
    @IBOutlet weak var ClothingType: UIPickerView!
    @IBOutlet weak var ClothingName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func takePhotoButton(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        imageView.image = info[.originalImage] as? UIImage;
        
       
        }

    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func SaveButton(_ sender: UIButton) {
        guard let img = imageView.image else { return }
        let clothing = img
        let item = Clothes(
            name: ClothingName.text ?? "",
            type: (types[ClothingType.selectedRow(inComponent: 0)]),
            image: clothing)
        myClothes.append(item)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 3
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



//
//  LoginViewController.swift
//  Caboodle
//
//  Created by Vee Nguyen on 3/2/22.
//

import UIKit
var name = "";

class LoginViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var backgroundGradient: UIView!
    
    func addLeftImageTo(txtField: UITextField, andImage img: UIImage) {
              let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
              leftImageView.image = img
              txtField.leftView = leftImageView
              txtField.leftViewMode = .always
          }
    
    @IBAction func login(_ sender: UIButton) {
        if (Username.text == ""){
                let title = "Missing Name"
                let message = "Please enter your first name."
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
            self.performSegue(withIdentifier: "loginSegue", sender:sender)
            name = Username.text ?? ""
        }
            
        }
        
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTouched(_ sender: UIControl){
           Username.resignFirstResponder();
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let usernameImage = UIImage(named:"Username")
                        addLeftImageTo(txtField: Username, andImage: usernameImage!)
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.74, green: 0.41, blue: 0.80, alpha: 0.65).cgColor,UIColor(red: 1.00, green: 0.68, blue: 0.00, alpha: 0.27).cgColor]
                gradientLayer.shouldRasterize = true
        backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

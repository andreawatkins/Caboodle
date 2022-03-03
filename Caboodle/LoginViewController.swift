//
//  LoginViewController.swift
//  Caboodle
//
//  Created by Vee Nguyen on 3/2/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var backgroundGradient: UIView!
    
    func addLeftImageTo(txtField: UITextField, andImage img: UIImage) {
              let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
              leftImageView.image = img
              txtField.leftView = leftImageView
              txtField.leftViewMode = .always
          }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let usernameImage = UIImage(named:"Username")
                        addLeftImageTo(txtField: Username, andImage: usernameImage!)
        let passwordImage = UIImage(named:"Password")
                        addLeftImageTo(txtField: Password, andImage: passwordImage!)
        
        let gradientLayer = CAGradientLayer()
                // Set the size of the layer to be equal to size of the display.
                gradientLayer.frame = view.bounds
                // Set an array of Core Graphics colors (.cgColor) to create the gradient.
                // This example uses a Color Literal and a UIColor from RGB values.
                gradientLayer.colors = [#colorLiteral(red: 0.7525072098, green: 0.541234076, blue: 0.913451314, alpha: 1).cgColor, UIColor(red: 1.00, green: 0.56, blue: 0.00, alpha: 1.00)]
                // Rasterize this static layer to improve app performance.
                gradientLayer.shouldRasterize = true
                // Apply the gradient to the backgroundGradientView.
                backgroundGradient.layer.addSublayer(gradientLayer)        // Do any additional setup after loading the view.
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

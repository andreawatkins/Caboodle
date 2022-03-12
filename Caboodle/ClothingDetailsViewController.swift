//
//  ClothingDetailsViewController.swift
//  Caboodle
//
//  Created by Vee Nguyen on 3/10/22.
//

import UIKit



class ClothingDetailsViewController: UIViewController {
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemType: UILabel!
    var clothes: Clothes?
    @IBOutlet weak var backgroundGradient: UIView!
    @IBOutlet weak var clothingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        clothingImage.image = clothes?.image
        let name = clothes?.name ?? ""
        let type = clothes?.type ?? ""
        itemName.text = "Name: \(name)"
        itemType.text = "Type: \(type)"
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.74, green: 0.41, blue: 0.80, alpha: 0.65).cgColor,UIColor(red: 1.00, green: 0.68, blue: 0.00, alpha: 0.27).cgColor]
                gradientLayer.shouldRasterize = true
        backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)    

        // Do any additional setup after loading the view.
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

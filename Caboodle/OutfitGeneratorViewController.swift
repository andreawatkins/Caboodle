//
//  OutfitGeneratorViewController.swift
//  Caboodle
//
//  Created by Vee Nguyen on 3/11/22.
//

import UIKit

class OutfitGeneratorViewController: UIViewController {

    @IBOutlet weak var shirtImage: UIImageView!
    @IBOutlet weak var pantsImage: UIImageView!
    @IBOutlet weak var shoesImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
                gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.74, green: 0.41, blue: 0.80, alpha: 0.65).cgColor,UIColor(red: 1.00, green: 0.68, blue: 0.00, alpha: 0.27).cgColor]
                gradientLayer.shouldRasterize = true
        view.layer.insertSublayer(gradientLayer, at: 0)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GenerateButton(_ sender: UIButton) {
        
       
        let randomBottom = bottoms.randomElement() ?? 0;
        let randomTop = tops.randomElement() ?? 0;
        let randomShoe = shoes.randomElement() ?? 0;
      
        shirtImage.image = myClothes[randomTop].image
        pantsImage.image = myClothes[randomBottom].image
        shoesImage.image = myClothes[randomShoe].image
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



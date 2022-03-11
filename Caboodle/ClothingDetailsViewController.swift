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
    @IBOutlet weak var clothingImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        clothingImage.image = clothes?.image
        itemName.text = clothes?.name
        itemType.text = clothes?.type

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

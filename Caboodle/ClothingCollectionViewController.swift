//
//  ClothingCollectionViewController.swift
//  Caboodle
//
//  Created by Vee Nguyen on 3/10/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class ClothingCollectionViewController: UICollectionViewController {
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue){
            
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
        if let destinationController = segue.destination as? ClothingDetailsViewController {
            if let indexPaths = collectionView.indexPathsForSelectedItems{
                destinationController.clothes = myClothes[indexPaths[0].row]
                collectionView.deselectItem(at: indexPaths[0], animated: false)
                }
            
        }
        */
            if segue.identifier == "showDetail" {
                if let indexPaths = collectionView.indexPathsForSelectedItems{
                    let destinationController = segue.destination as! ClothingDetailsViewController
                    destinationController.clothes = myClothes[indexPaths[0].row]
                    collectionView.deselectItem(at: indexPaths[0], animated: false)
                }
            }
         
        }
         
    override func viewDidAppear(_ animated:Bool){
        self.collectionView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "\(name)'s Closet"
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return myClothes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! ClothingCollectionViewCell
        
        let clothing = myClothes[indexPath.row]
        cell.clothingImage.image = clothing.image
        // Configure the cell
    
        return cell
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showDetail", sender: nil)
        }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

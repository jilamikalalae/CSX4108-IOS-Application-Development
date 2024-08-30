//
//  ViewController.swift
//  Shopping List
//
//  Created by Thanatuch Lertritsirikul on 24/8/24.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemIndex = indexPath.item
        let cellId = Bool.random() ? "cell1" : "cell2"
//        let cellId = itemIndex % 2 == 0 ? "cell1" : "cell2"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId , for: indexPath)
        
        return cell
    }
    
    
}

//
//  ViewController.swift
//  moviesApp
//
//  Created by Mehak Bansal on 13/04/21.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource {
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        
    }
    

    
    //MARK:- dataSourceMethods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "goToCell", for: indexPath) as! MovieCollectionViewCell
        
        cell.setup(with: movies[indexPath.row])
        
        return cell
    }
  
}

//MARK:- collectionViewDelegateFlowLayout

extension ViewController:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }
    
    
}

//MARK:- UICollectionViewDelegate

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(movies[indexPath.row].title)
    }
}

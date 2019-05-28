//
//  TimelineViewControllerCollectionViewController.swift
//  Vinted_Course
//
//  Created by Hugo Bordais on 5/24/19.
//  Copyright © 2019 Hugo Bordais. All rights reserved.
//

import UIKit

private let reuseIdentifier = "timelineCell"

final class TimelineViewControllerCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        
        let nib = UINib(nibName: String(describing: TimelineCollectionViewCell.self), bundle: nil)
        
        self.collectionView!.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == NavigationIdentifiers.toArticleDetail.rawValue {
            let articleDetailVC = segue.destination as! ArticleDetailViewController
        }
    }

    // MARK: UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: NavigationIdentifiers.toArticleDetail.rawValue, sender: self)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.articles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? TimelineCollectionViewCell else {
            fatalError("Failed to dequeue : TimelineCollectionViewCell")
        }
    
        cell.configure(width: self.articles[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (collectionView.bounds.width - 24)/2, height: collectionView.bounds.height/2.2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}

//
//  HomeController.swift
//  TwitterApplication
//
//  Created by carsworld Indonesia on 17/09/18.
//  Copyright © 2018 Carsworld Indonesia. All rights reserved.
//

import LBTAComponents

class HomeController: DatasourceController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMenuNavigation()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
        
//        collectionView?.backgroundColor = UIColor.gray
    }
    
    @objc func setupMenuNavigation() {
        //right navigation bar
        let searchButton = UIBarButtonItem(image: UIImage(named: "magnifier"), style: .plain, target: self, action: #selector(self.handleSearchButton))
        let newFeedButton = UIBarButtonItem(image: UIImage(named: "checkbox-pen-outline"), style: .plain, target: self, action: #selector(self.handleNewFeedButton))
        navigationItem.rightBarButtonItems = [newFeedButton, searchButton]
         
        //mid navigation bar
        let iconMenu = UIImageView()
        iconMenu.image = UIImage(named: "twitter-3")
        iconMenu.contentMode = .scaleAspectFit
        navigationItem.titleView = iconMenu
        
        //left navigation bar
        let addFollowButton = UIBarButtonItem(image: UIImage(named: "new-user-16"), style: .plain, target: self, action: #selector(self.handleAddFollowButton))
        navigationItem.leftBarButtonItem = addFollowButton
        
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.backgroundColor = .white
        
    }
    
    @objc func handleSearchButton() {
        print("under construction !")
    }
    
    @objc func handleNewFeedButton() {
        print("under construction !")
    }
    
    @objc func handleAddFollowButton() {
        print("under construction !")
    }
    
    //header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
         return CGSize(width: view.frame.width, height: 50)
    }
    //cell
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //auto height in bio text
        if let user = datasource?.item(indexPath) as? User {
            let approximateText = view.frame.width - 12 - 50 - 12 - 2
            let size = CGSize(width: approximateText, height: 1000)
            let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15)]
            
            let estimated = NSString(string: user.userBio).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            return CGSize(width: view.frame.width, height: estimated.height + 66)
        }
        return CGSize(width: view.frame.width, height: 200)
    }
    
    //footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

//
//  HomeDatasource.swift
//  TwitterApplication
//
//  Created by carsworld Indonesia on 17/09/18.
//  Copyright © 2018 Carsworld Indonesia. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let userArdi = User(userTitle: "Ahmad Ardiansyah", userName: "@ardi.pc", userBio: "iPhone, iPad, Mac OSX, Linux Ubuntu, iOS Programming Community. Join to Us and see our conference.", userProfil: UIImage(named: "cardi-b")!)
        
        let userCars = User(userTitle: "Carsworld Indonesia", userName: "@carsworld.id", userBio: "New Car, Booking Service Online, Auction, Carsworld Shop, Nasmoco.", userProfil: UIImage(named: "logo-carsworld")!)
        
        return [userArdi, userCars]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [HeaderCell.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [FooterCell.self]
    }

    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
}

//
//  UserHeaderCell.swift
//  TwitterApplication
//
//  Created by carsworld Indonesia on 17/09/18.
//  Copyright © 2018 Carsworld Indonesia. All rights reserved.
//

import LBTAComponents

//setting cell Header
class HeaderCell: DatasourceCell {
    
    let headerLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "WHO TO FOLLOW"
        lbl.font = UIFont.systemFont(ofSize: 15)
        return lbl
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        addSubview(headerLabel)
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        headerLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}


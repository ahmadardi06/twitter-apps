//
//  UserFooterCell.swift
//  TwitterApplication
//
//  Created by carsworld Indonesia on 17/09/18.
//  Copyright © 2018 Carsworld Indonesia. All rights reserved.
//

import LBTAComponents

//setting cell Footer
class FooterCell: DatasourceCell {
    
    let moreButton: UILabel = {
        let lbl = UILabel()
        lbl.text = "Show me more"
        lbl.textColor = UIColor(r: 61, g: 167, b: 244)
        return lbl
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        addSubview(moreButton)
//        separatorLineView.isHidden = false
//        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        moreButton.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}


//
//  HomeCell.swift
//  TwitterApplication
//
//  Created by carsworld Indonesia on 17/09/18.
//  Copyright © 2018 Carsworld Indonesia. All rights reserved.
//

import LBTAComponents

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            let user = datasourceItem as? User
            
            nameLabel.text = user?.userTitle
            usernameLabel.text = user?.userName
            bioTextView.text = user?.userBio
            profileImageView.image = user?.userProfil
        }
    }
    
    let profileImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "cardi-b")
        img.layer.cornerRadius = 5
        img.layer.masksToBounds = true
        img.layer.borderWidth = 1
        img.layer.borderColor = UIColor(r: 61, g: 167, b: 224).cgColor
        return img
    }()
    
    let nameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Ahmad Ardiansyah"
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        return lbl
    }()
    
    let usernameLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "@ardi.pc"
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textColor = UIColor(r: 130, g: 130, b: 130)
        return lbl
    }()
    
    let bioTextView: UITextView = {
        let tv = UITextView()
        tv.text = "iPhone, iPad, Mac OSX, Linux, Ubuntu, Mint. iOS Programming Community. Join to Us."
        tv.font = UIFont.systemFont(ofSize: 15)
        tv.backgroundColor = .clear
        return tv
    }()
    
    let followButton: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(r: 61, g: 167, b: 244).cgColor
        btn.setTitle("Follow", for: .normal)
        btn.setTitleColor(UIColor(r: 61, g: 167, b: 244), for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14 )
        btn.setImage(#imageLiteral(resourceName: "new-user-24"), for: .normal)
        btn.imageView?.contentMode = .scaleAspectFit
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return btn
    }()
    
    override func setupViews() {
        super.setupViews()
        
        backgroundColor = .white
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12 , bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor , bottom: nil, right: nameLabel.rightAnchor, topConstant: 1, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 100, heightConstant: 35)
    }
    
}

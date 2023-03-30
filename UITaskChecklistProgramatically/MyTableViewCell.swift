//
//  MyTableViewCell.swift
//  UITaskChecklistProgramatically
//
//  Created by mayank ranka on 29/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    var myImage     : UIImageView!
    var bottomView  : UIView!
    var titlelabel  : UILabel!
    var leftView    : UIView!
    var rightView   : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        loadCellView()
        
//        loadLabel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        loadCellView()
        
    }

    func loadCellView() {
        
        myImageConstraints()
        loadBottomView()
//        loadLeftView()
        loadRightView()
    }
    
    func loadLeftView(){

        leftView = UIView()
        leftView.translatesAutoresizingMaskIntoConstraints = false
        leftView.backgroundColor = .white
        self.addSubview(leftView)
//        self.leftView.layer.zPosition = -1
        leftView.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            leftView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            leftView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 90),
            leftView.heightAnchor.constraint(equalToConstant: 90),
        ])

    }
    
    func loadRightView(){
        rightView = UIView()
        rightView.translatesAutoresizingMaskIntoConstraints = false
        rightView.backgroundColor = .init(red: (24.0 / 255.0), green: (68.0 / 255.0), blue: (77.0 / 255.0), alpha: 1)
        rightView.layer.cornerRadius = rightView.layer.bounds.width / 2
        rightView.layer.shouldRasterize = true
        rightView.clipsToBounds = true
        self.addSubview(rightView)
        NSLayoutConstraint.activate([
//            rightView.leadingAnchor.constraint(equalTo: leftView.trailingAnchor, constant: 30),
            rightView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            rightView.heightAnchor.constraint(equalToConstant: 60),
            rightView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 110),
            rightView.widthAnchor.constraint(equalToConstant: 60)
        ])
        

    }
    
    func myImageConstraints(){
        myImage = UIImageView()
        myImage.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(myImage)
        NSLayoutConstraint.activate([
            myImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            myImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            myImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 140.0)
        ])
    }
    func loadBottomView(){
        
//        var content = contentView.
        
        bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(bottomView)
        bottomView.backgroundColor = .init(red: (52.0/255.0), green: (186.0/255.0), blue: (235.0/255.0), alpha: 1.0)
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            bottomView.topAnchor.constraint(equalTo: myImage.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 109.0),
        ])
    }
    
  
    
    
}

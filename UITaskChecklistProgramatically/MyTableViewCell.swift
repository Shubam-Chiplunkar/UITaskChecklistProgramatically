//
//  MyTableViewCell.swift
//  UITaskChecklistProgramatically
//
//  Created by mayank ranka on 29/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    var myImage         : UIImageView!
    var mainView        : UIView!
    var bottomView      : UIView!
    var titlelabel      : UILabel!
    var leftView        : UIView!
    var rightView       : UIView!
    var buttonHeart     : UIButton!
    var buttonPledege   : UIButton!
    var label100        : UILabel!
    var labelTitle      : UILabel!
    var labelSubTitle   : UILabel!
    var stackView       : UIStackView!
    var labelTotalCost  : UILabel!
    var labelTotal      : UILabel!
    var labelFundedCost : UILabel!
    var labelFunded     : UILabel!
    var labelTimeLeft   : UILabel!
    var labelTime       : UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        loadCellView()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
       
        loadCellView()
        
    }

    func loadCellView() {
        loadMainView()
        loadImage()
        loadBottomView()
        loadRightView()
        loadLabel100()
        loadLeftView()
        loadHeartButton()
        loadTitleLabel()
        loadLabelSubTitle()
        loadButtonPledge()
        loadStackView()

    }
    
    func loadMainView(){
        mainView = UIView()
        mainView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    func loadImage(){
        
        myImage = UIImageView()
        myImage.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(myImage)
        NSLayoutConstraint.activate([
            myImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            myImage.topAnchor.constraint(equalTo: mainView.topAnchor),
            myImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            myImage.heightAnchor.constraint(equalToConstant: 140.0)
        ])
    }
    
    func loadBottomView(){
                
        bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        mainView.addSubview(bottomView)
        bottomView.backgroundColor = .init(red: (52.0/255.0), green: (186.0/255.0), blue: (235.0/255.0), alpha: 1.0)
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor),
            bottomView.topAnchor.constraint(equalTo: myImage.bottomAnchor),
        ])
    }
    
    func loadButtonPledge(){
        buttonPledege = UIButton()
        buttonPledege.translatesAutoresizingMaskIntoConstraints = false
        buttonPledege.setTitle("PLEDGE", for: .normal)
        buttonPledege.backgroundColor = .white
        buttonPledege.titleLabel?.font = UIFont(name: "Arial", size: 8)
        buttonPledege.layer.cornerRadius = 10
        buttonPledege.setTitleColor( .init(red: (24.0 / 255.0), green: (68.0 / 255.0), blue: (77.0 / 255.0), alpha: 1), for: .normal)
        bottomView.addSubview(buttonPledege)
        NSLayoutConstraint.activate([
            buttonPledege.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -10),
            buttonPledege.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -20),
            buttonPledege.heightAnchor.constraint(equalToConstant: 30),
            buttonPledege.widthAnchor.constraint(equalToConstant: 60)
        ])
        
    }

    
    func loadRightView(){
        rightView = UIView()
        rightView.translatesAutoresizingMaskIntoConstraints = false
        rightView.backgroundColor = .init(red: (24.0 / 255.0), green: (68.0 / 255.0), blue: (77.0 / 255.0), alpha: 1)
        rightView.layer.cornerRadius = 30
        rightView.clipsToBounds = true
        self.addSubview(rightView)
        NSLayoutConstraint.activate([
            rightView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor , constant: 10),
            rightView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10),
            rightView.heightAnchor.constraint(equalToConstant: 60),
            rightView.widthAnchor.constraint(equalToConstant: 60)
        ])

    }
    
    func loadLabel100(){
        label100 = UILabel()
        label100.translatesAutoresizingMaskIntoConstraints = false
        rightView.addSubview(label100)
        label100.text = "100%"
        label100.textColor = .white
        NSLayoutConstraint.activate([
            label100.centerXAnchor.constraint(equalTo: rightView.centerXAnchor),
            label100.centerYAnchor.constraint(equalTo: rightView.centerYAnchor),
            label100.leadingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: 10),
            label100.trailingAnchor.constraint(equalTo: rightView.trailingAnchor)
        ])
    }
    
    func loadLeftView(){

        leftView = UIView()
        leftView.translatesAutoresizingMaskIntoConstraints = false
        leftView.backgroundColor = .white
        mainView.addSubview(leftView)
        leftView.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            leftView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            leftView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 90),
            leftView.trailingAnchor.constraint(equalTo: rightView.leadingAnchor, constant: -10),
            leftView.heightAnchor.constraint(equalToConstant: 90),
        ])

    }
    
    func loadStackView(){
        
        stackView = UIStackView()
        bottomView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .white
        stackView.spacing = 20
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant:  -10),
            stackView.trailingAnchor.constraint(equalTo: buttonPledege.leadingAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: leftView.bottomAnchor, constant: 10)
        ])
    }
    
    func loadHeartButton(){
        
        buttonHeart = UIButton(type: .custom)
        buttonHeart.translatesAutoresizingMaskIntoConstraints = false
        leftView.addSubview(buttonHeart)
//        buttonHeart.backgroundColor = .red
        buttonHeart.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        buttonHeart.tintColor = .red
        NSLayoutConstraint.activate([
            buttonHeart.topAnchor.constraint(equalTo: leftView.topAnchor),
            buttonHeart.trailingAnchor.constraint(equalTo: leftView.trailingAnchor),
            buttonHeart.heightAnchor.constraint(equalToConstant: 40),
            buttonHeart.widthAnchor.constraint(equalToConstant: 40)
        ])
        
    }
    
    func loadTitleLabel(){
        labelTitle = UILabel()
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        leftView.addSubview(labelTitle)
        labelTitle.text = "Title"
        labelTitle.font = UIFont(name: "Arial", size: 20)
        NSLayoutConstraint.activate([
            labelTitle.topAnchor.constraint(equalTo: leftView.topAnchor, constant: 10),
            labelTitle.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 10),
            labelTitle.trailingAnchor.constraint(equalTo: buttonHeart.leadingAnchor, constant: -10),
        ])
    }
    
    func loadLabelSubTitle(){
        labelSubTitle = UILabel()
        labelSubTitle.translatesAutoresizingMaskIntoConstraints = false
        leftView.addSubview(labelSubTitle)
        labelSubTitle.text = "Sub Info"
        labelSubTitle.font = UIFont(name: "Arial", size: 10)
        NSLayoutConstraint.activate([
            labelSubTitle.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 10),
            labelSubTitle.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 5),
            labelSubTitle.bottomAnchor.constraint(equalTo: leftView.bottomAnchor, constant: 10),
            labelSubTitle.trailingAnchor.constraint(equalTo: buttonHeart.leadingAnchor, constant: -10)
        ])
    }

    
    
}

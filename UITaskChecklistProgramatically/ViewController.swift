//
//  ViewController.swift
//  UITaskChecklistProgramatically
//
//  Created by mayank ranka on 29/03/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = ["1.jpg","2.jpg","3.jpg","4.jpg"]
    
    var tableViews : UITableView!
    var topLabel   : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        tableViewConstraints()
        
        loadTopLabel()
        loadTableView()
    }
    func loadTopLabel(){
        topLabel = UILabel()
        topLabel.backgroundColor = .black
        topLabel.translatesAutoresizingMaskIntoConstraints = false
       
        view.addSubview(topLabel)
        NSLayoutConstraint.activate([
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topLabel.topAnchor.constraint(equalTo: view.topAnchor),
            topLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    func loadTableView(){
        tableViews = UITableView()
        tableViews.register(MyTableViewCell.self, forCellReuseIdentifier: "MyTableViewCell")
        tableViews.translatesAutoresizingMaskIntoConstraints = false
//        tableViews.rowHeight = UITableView.automaticDimension
        tableViews.dataSource = self
        tableViews.delegate = self
        tableViews.insetsLayoutMarginsFromSafeArea = true
        view.addSubview(tableViews)
        
        NSLayoutConstraint.activate([
            tableViews.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableViews.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableViews.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableViews.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        //        cell.loadLabel()
        //        cell.myImageConstraints()
        //        cell.updateCell(arr[indexPath.row])
        cell.loadCellView()
        cell.myImage.image = UIImage(named: arr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 249
    }
}

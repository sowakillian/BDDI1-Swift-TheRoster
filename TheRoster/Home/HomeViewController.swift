//
//  ViewController.swift
//  TheRoster
//
//  Created by SOWA KILLIAN on 04/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var model:Home = Home.defaultHome()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 1
        case 2: return model.snacks.count
        default: return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CarouselTableViewCell", for: indexPath) as! CarouselTableViewCell
            
            cell.carouselImageView.animationImages = model.carousel.images
            cell.carouselImageView.animationDuration = 1.0
            cell.carouselImageView.animationImages = model.carousel.images
            
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "GridTableViewCell", for: indexPath) as! GridTableViewCell
            
            return cell
        }
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnackTableViewCell", for: indexPath) as! SnackTableViewCell
            
            cell.snackLabel.text = model.snacks[indexPath.row].name
            return cell
        }
        
        return UITableViewCell()
    }
    
}

extension HomeViewController:UITableViewDelegate {
    func tableView(_ ResultList: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func tableView(_ ResultList: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return CGFloat(Carousel.height)
        }
        
        if indexPath.section == 1 {
            return CGFloat(HomeGrid.height)
        }
        
        if indexPath.section == 2 {
            return CGFloat(Snack.height)
        }
        return CGFloat(200)
    }
}


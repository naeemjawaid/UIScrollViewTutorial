//
//  ViewController.swift
//  UIScrollViewTutorial
//
//  Created by Muhammad Naeem Jawaid on 31/12/2017.
//  Copyright © 2017 Solidworks Inc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView: HomeView = {
        let view = HomeView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.homeViewController = self
    }
}


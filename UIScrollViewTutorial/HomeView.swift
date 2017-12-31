//
//  HomeView.swift
//  UIScrollViewTutorial
//
//  Created by Muhammad Naeem Jawaid on 31/12/2017.
//  Copyright © 2017 Solidworks Inc. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    weak var homeViewController: HomeViewController? {
        didSet {
            setupHomeView()
        }
    }
            
    let firstArtistLabel: UILabel = {
        let label = UILabel()
        label.text = "Porcupine Tree"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let firstArtistImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "PorcupineTree1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let firstArtistImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "PorcupineTree2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let secondArtistLabel: UILabel = {
        let label = UILabel()
        label.text = "Opeth"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let secondArtistImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Opeth1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let secondArtistImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Opeth2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let thirdArtistLabel: UILabel = {
        let label = UILabel()
        label.text = "Marillion"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let thirdArtistImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Marillion1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let thirdArtistImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Marillion2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        
        addSubview(scrollView)
        scrollView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        scrollView.addSubview(contentView)
        contentView.leftAnchor.constraint(equalTo: scrollView.leftAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: scrollView.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true

        contentView.addSubview(firstArtistLabel)
        firstArtistLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        firstArtistLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 26).isActive = true
        firstArtistLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        firstArtistLabel.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        contentView.addSubview(firstArtistImageView1)
        firstArtistImageView1.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        firstArtistImageView1.topAnchor.constraint(equalTo: firstArtistLabel.bottomAnchor).isActive = true
        firstArtistImageView1.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = firstArtistImageView1.image?.size.width, let imageHeight = firstArtistImageView1.image?.size.height {
            firstArtistImageView1.heightAnchor.constraint(equalTo: firstArtistImageView1.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
        }
        
        contentView.addSubview(firstArtistImageView2)
        firstArtistImageView2.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        firstArtistImageView2.topAnchor.constraint(equalTo: firstArtistImageView1.bottomAnchor).isActive = true
        firstArtistImageView2.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = firstArtistImageView2.image?.size.width, let imageHeight = firstArtistImageView2.image?.size.height {
            firstArtistImageView2.heightAnchor.constraint(equalTo: firstArtistImageView2.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
        }
        
        contentView.addSubview(secondArtistLabel)
        secondArtistLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        secondArtistLabel.topAnchor.constraint(equalTo: firstArtistImageView2.bottomAnchor, constant: 26).isActive = true
        secondArtistLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        secondArtistLabel.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        contentView.addSubview(secondArtistImageView1)
        secondArtistImageView1.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        secondArtistImageView1.topAnchor.constraint(equalTo: secondArtistLabel.bottomAnchor).isActive = true
        secondArtistImageView1.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = secondArtistImageView1.image?.size.width, let imageHeight = secondArtistImageView1.image?.size.height {
            secondArtistImageView1.heightAnchor.constraint(equalTo: secondArtistImageView1.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
        }
        
        contentView.addSubview(secondArtistImageView2)
        secondArtistImageView2.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        secondArtistImageView2.topAnchor.constraint(equalTo: secondArtistImageView1.bottomAnchor).isActive = true
        secondArtistImageView2.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = secondArtistImageView2.image?.size.width, let imageHeight = secondArtistImageView2.image?.size.height {
            secondArtistImageView2.heightAnchor.constraint(equalTo: secondArtistImageView2.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
        }
        
        contentView.addSubview(thirdArtistLabel)
        thirdArtistLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        thirdArtistLabel.topAnchor.constraint(equalTo: secondArtistImageView2.bottomAnchor, constant: 26).isActive = true
        thirdArtistLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        thirdArtistLabel.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
        contentView.addSubview(thirdArtistImageView1)
        thirdArtistImageView1.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        thirdArtistImageView1.topAnchor.constraint(equalTo: thirdArtistLabel.bottomAnchor).isActive = true
        thirdArtistImageView1.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = thirdArtistImageView1.image?.size.width, let imageHeight = thirdArtistImageView1.image?.size.height {
            thirdArtistImageView1.heightAnchor.constraint(equalTo: thirdArtistImageView1.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
        }
        
        contentView.addSubview(thirdArtistImageView2)
        thirdArtistImageView2.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        thirdArtistImageView2.topAnchor.constraint(equalTo: thirdArtistImageView1.bottomAnchor).isActive = true
        thirdArtistImageView2.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
        // h2 / h1 = w2 / w1  w1: width of the image, h1: height of the image, w2/h2: width/height of screen
        // h2 = w2 * h1 / w1
        if let imageWidth = thirdArtistImageView2.image?.size.width, let imageHeight = thirdArtistImageView2.image?.size.height {
            thirdArtistImageView2.heightAnchor.constraint(equalTo: thirdArtistImageView2.widthAnchor, multiplier: imageHeight / imageWidth).isActive = true
            thirdArtistImageView2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        }
    }
    
    private func setupHomeView() {
        translatesAutoresizingMaskIntoConstraints = false
        if let homeViewController = homeViewController {
            homeViewController.view.addSubview(self)
            leftAnchor.constraint(equalTo: homeViewController.view.leftAnchor).isActive = true
            rightAnchor.constraint(equalTo: homeViewController.view.rightAnchor).isActive = true
            topAnchor.constraint(equalTo: homeViewController.view.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: homeViewController.view.bottomAnchor).isActive = true
        }
    }
}




























//
//  ViewController.swift
//  CodeConstraints
//
//  Created by Tho Do on 4/19/17.
//  Copyright © 2017 Tho Do. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colorView = UIView()
    var initialConstraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.translatesAutoresizingMaskIntoConstraints = false
        colorView.backgroundColor = UIColor.blue
        
        self.view.addSubview(colorView)
        
        let leadingConstraint = colorView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingConstraint = colorView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let topConstraint = colorView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let bottomConstraint = colorView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50)
        
        initialConstraints.append(contentsOf: [leadingConstraint, trailingConstraint, topConstraint, bottomConstraint])
        
        NSLayoutConstraint.activate(initialConstraints)
    }

    @IBAction func changeConstraints(_ sender: Any) {
        NSLayoutConstraint.deactivate(initialConstraints)
        
        let widthConstraint = colorView.widthAnchor.constraint(equalToConstant: 100)
        let heightConstraint = colorView.heightAnchor.constraint(equalToConstant: 100)
        
        let centerXConstraint = colorView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let centerYConstraint = colorView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        
        NSLayoutConstraint.activate([widthConstraint, heightConstraint, centerXConstraint, centerYConstraint])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  programmaticTableViewDemo
//
//  Created by Ajay Merchia on 2/9/19.
//  Copyright © 2019 Ajay Merchia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var badTableView: UITableView!
    var goodTableView: UITableView!
    
    var showFrame: Bool = true
    var showFrameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initUI()
    }


}


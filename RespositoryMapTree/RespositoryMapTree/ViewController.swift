//
//  ViewController.swift
//  RespositoryMapTree
//
//  Created by test on 8/8/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - outlet
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - action
    @IBAction func showMap(_ sender: Any) {
        
    }
    
    @IBAction func deleteMap(_ sender: Any) {
        mainScrollView = nil
    }
    
}


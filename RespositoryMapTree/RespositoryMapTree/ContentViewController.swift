//
//  ContentViewController.swift
//  RespositoryMapTree
//
//  Created by test on 8/13/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let nextController = segue.destination as? ViewController {
            nextController.x = ""
        }
    }
    

}

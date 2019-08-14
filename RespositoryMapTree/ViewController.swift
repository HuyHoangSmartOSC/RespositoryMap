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
    @IBAction func createBtn(_ sender: Any) {
        let respoMap = RespositoryMap()
        respoMap.createArrayRespository()
        var labelRespo: [UILabel] = []
        for i in 0..<respoMap.arrayRespository.count {
            labelRespo.append(UILabel())
            labelRespo[i] = UILabel(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
            labelRespo[i].text = String(i)
            labelRespo[i].font = UIFont.systemFont(ofSize: 20)
            labelRespo[i].textAlignment = NSTextAlignment.center
            labelRespo[i].backgroundColor = UIColor.blue
            mainScrollView.addSubview(labelRespo[i])
        }
        for i in 0..<respoMap.arrayRespository.count {
            labelRespo[i].translatesAutoresizingMaskIntoConstraints = false
            if(respoMap.arrayRespository[i].createMethod == 0){
                NSLayoutConstraint(item: labelRespo[i], attribute: .leading, relatedBy: .equal, toItem: labelRespo[i-1], attribute: .trailing, multiplier: 1.0, constant: 20.0).isActive = true
            }else {
                NSLayoutConstraint(item: labelRespo[i], attribute: .top, relatedBy: .equal, toItem: labelRespo[i-1], attribute: .bottom, multiplier: 1.0, constant: 20).isActive = true
            }
        }
//        for i in 0..<respoMap.arrayRespository.count {
//            if(respoMap.arrayRespository[i].createMethod == 0) {
//                labelRespo[i] = UILabel(frame:CGRect(x: 20 + i*50, y: 200, width: 30, height: 30))
//                labelRespo[i].text = String(i)
//                labelRespo[i].font = UIFont.systemFont(ofSize: 15)
//                labelRespo[i].textAlignment = NSTextAlignment.center
//                labelRespo[i].backgroundColor = UIColor.blue
//                mainScrollView.addSubview(labelRespo[i])
//            }else {
//                labelRespo[i] = UILabel(frame:CGRect(x: 20 + i*50, y: 200 + i*50, width: 30, height: 30))
//                labelRespo[i].text = String(i)
//                labelRespo[i].font = UIFont.systemFont(ofSize: 20)
//                labelRespo[i].textAlignment = NSTextAlignment.center
//                labelRespo[i].backgroundColor = UIColor.blue
//                mainScrollView.addSubview(labelRespo[i])
//            }
//        }
    }
    
    @IBAction func deleteBtn(_ sender: UIButton) {
        mainScrollView .removeFromSuperview()
    }
}


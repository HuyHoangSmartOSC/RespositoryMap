//
//  RespositoryMap.swift
//  RespositoryMapTree
//
//  Created by test on 8/13/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import UIKit

class RespositoryMap: UIViewController {
    
    //  mảng các respository trên map
    var arrayRespository: Array<Resporitory> = Array()
    
    //  điểm chạy qua các respository
    var checkpoint: Checkpoint
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //  sinh ngau nhien mot mang respository
    func createArrayRespository() -> Void {
        self.arrayRespository.append(Resporitory())
        var i = 0
        while self.arrayRespository.count < 20 && arrayRespository[i].isCreateNewRespo {
            var j = i
            var numIndex = 0
            while arrayRespository[j].isCreateNewRespo{
                if(numIndex == 1){
                    arrayRespository[j].isCreateNewRespo = false
                    arrayRespository[j].createMethod = 1 - arrayRespository[j].createMethod!
                }else{
                    numIndex = 1
                }
                if(j > 19){
                    break;
                }else {
                    let method = Int.random(in: 1...2)
                    arrayRespository.append(Resporitory(id: 1,idBackRespo: j,createMethod: method))
                    if(!self.arrayRespository[j].isCreateNewRespo){
                        j += 1
                    }
                }
            }
            i += 1
        }
        self.arrayRespository[19].isCreateNewRespo = false
    }
    
    //  ve cac respository tren map
    func drawArrayRespository() -> Void {
        var arrayRespoLabel: [UILabel] = []
        for i in 0..<arrayRespository.count {
            arrayRespoLabel.append(UILabel())
            if(self.arrayRespository[i].idBackRespo != nil){
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

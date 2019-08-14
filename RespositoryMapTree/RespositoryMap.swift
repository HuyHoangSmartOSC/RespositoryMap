//
//  RespositoryMap.swift
//  RespositoryMapTree
//
//  Created by test on 8/13/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import UIKit

class RespositoryMap{
    
    //  mảng các respository trên map
    var arrayRespository: [Resporitory] = []
    
    //  điểm chạy qua các respository
    var checkpoint: Checkpoint
    
    init() {
        self.arrayRespository = [Resporitory()]
        self.checkpoint = Checkpoint()
    }
    
    //  sinh ngau nhien mot mang respository
    func createArrayRespository() -> Void {
        self.arrayRespository.removeAll()
        self.arrayRespository.append(Resporitory())
        var i = 0   // dia chi cua respo cha
        while i < self.arrayRespository.count - 1 {
            var j = i + 1   // dia chi cua respo con
            if(self.arrayRespository[i].isCreateNewRespo[0] == false && self.arrayRespository[i].isCreateNewRespo[1] == false){
                self.arrayRespository[i].didCreateNewRespo = false
            }
            while self.arrayRespository[i].isCreateNewRespo[0] || self.arrayRespository[i].isCreateNewRespo[1]  && j < self.arrayRespository.count {
                if(self.arrayRespository[i].isCreateNewRespo[0]) {
                    self.arrayRespository.append(Resporitory(id: j, idBackRespo: i, createMethod: 0))
                    self.arrayRespository[i].isCreateNewRespo[0] = false
                    j += 1
                }
                if(j >= self.arrayRespository.count){
                    self.arrayRespository[i].isCreateNewRespo[1] = false
                }
                if(self.arrayRespository[i].isCreateNewRespo[1]){
                    self.arrayRespository.append(Resporitory(id: j, idBackRespo: i, createMethod: 1))
                    self.arrayRespository[i].isCreateNewRespo[1] = false
                    j += 1
                }
                
            }
            i += 1
        }
        self.arrayRespository[self.arrayRespository.count - 1].isCreateNewRespo = [false, false]
    }
    
//    //  ve cac respository tren map
//    func drawArrayRespository() -> Void {
//        var arrayLabel: [UILabel] = []
//
//        for i in 0..<self.arrayRespository.count {
//            let label = UILabel(frame:CGRect(x: 20, y: 100, width: 30, height: 30))
//            label.text = "respo" + String(i)
//            label.font = UIFont.systemFont(ofSize: 15)
//            label.backgroundColor = UIColor.blue
//            label.textAlignment = NSTextAlignment.center
//            arrayLabel.append(UILabel())
//        }
//
//    }
    
    //  tao duong di cho checkpoint
    func setWayToCheckpoint() -> [Int] {
        
        //  mang id cac respo checkpoint di qua
        var arrayIdIndex: [Int] = []
        arrayIdIndex.append(0)
        
        for var index in 0..<self.arrayRespository.count {
            
            //  neu arrayRespository[i] co sinh ra mot respo moi thi tim cac respo con cua no
            if(self.arrayRespository[index].isCreateNewRespo[0] || self.arrayRespository[index].isCreateNewRespo[1]){
                var arrayTarget: [Int] = []
                for i in index+1..<self.arrayRespository.count {
                    if(self.arrayRespository[i].idBackRespo == index){
                        arrayTarget.append(i)
                    }
                }
                
                //  chon respo tiep theo checkpoint chay qua
                if(arrayTarget.count == 2){
                    let method = Int.random(in: 0...1)
                    for j in 0..<arrayTarget.count {
                        if(self.arrayRespository[arrayTarget[j]].createMethod == method){
                            index = arrayTarget[j] // chuyen vi tri checkpoint den respo moi
                        }
                    }
                }else{
                    index = arrayTarget[0]
                }
                arrayIdIndex.append(index)
            }
        }
        return arrayIdIndex
    }
}

//
//  CheckPoint.swift
//  RespositoryMapTree
//
//  Created by test on 8/12/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import Foundation

//  điểm chạy qua các respository
class Checkpoint {
    
    //  respository xuất phát của checkpoint
    let idfFistRespo: Int
    
    //  chuỗi các respository mà checkpoint sẽ chạy qua
    var arrayIdIndex: [Int] = []
    
    init() {
        self.idfFistRespo = 0
    }
    init(arrayIdIndex : [Int]) {
        self.arrayIdIndex = arrayIdIndex
    }
}

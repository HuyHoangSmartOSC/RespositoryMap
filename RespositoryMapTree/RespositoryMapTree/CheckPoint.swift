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
    let firstRespository: Resporitory = Resporitory()
    
    //  chuỗi các respository mà checkpoint sẽ chạy qua
    var respositoryArray: Array<Resporitory> = Array()
    
    init() {
        self.respositoryArray = [self.firstRespository]
    }
    init(respositoryArray: Array<Resporitory>) {
        self.respositoryArray = respositoryArray
    }
}

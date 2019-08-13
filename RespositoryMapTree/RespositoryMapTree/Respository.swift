//
//  Respository.swift
//  RespositoryMapTree
//
//  Created by test on 8/12/19.
//  Copyright © 2019 BonBon. All rights reserved.
//

import Foundation

class Resporitory {
    //  id của respository
    var idRespo: Int
    
    //  id của respository cha
    var idBackRespo: Int?
    
    //  phuong thuc ma respo ch dung de tao ra no
    var createMethod: Int?
    
    //  xac dinh xem respo nay co muon tao ra mot respo moi khong
    var isCreateNewRespo: Bool
    
    init() {
        self.idRespo = 0
        self.idBackRespo = nil
        self.createMethod = nil
        self.isCreateNewRespo = Bool.random()
    }
    init(id: Int, idBackRespo: Int, createMethod: Int) {
        self.idRespo = id
        self.idBackRespo = idBackRespo
        self.createMethod = createMethod
        self.isCreateNewRespo = Bool.random()
    }
    init(id: Int, idBackRespo: Int, createMethod: Int, isCreate: Bool) {
        self.idRespo = id
        self.idBackRespo = idBackRespo
        self.createMethod = createMethod
        self.isCreateNewRespo = isCreate
    }
}

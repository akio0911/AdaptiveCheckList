//
//  CheckList.swift
//  AdaptiveCheckList
//
//  Created by akio0911 on 2016/02/14.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

struct CheckList {
    var name : String
    var checkItems : [CheckItem]
    
    init(name: String) {
        self.name = name
        self.checkItems = []
    }
}

//
//  DataManager.swift
//  AdaptiveCheckList
//
//  Created by akio0911 on 2016/02/14.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

class DataManager {
    var checkLists : [CheckList] = []
    
    static let sharedManager = DataManager()
    
    private init() {
        var list1 = CheckList(name: "買い物リスト")
        list1.checkItems.append( CheckItem(name: "りんご") )
        list1.checkItems.append( CheckItem(name: "ばなな") )
        list1.checkItems.append( CheckItem(name: "みかん") )
        self.checkLists.append( list1 )
        
        var list2 = CheckList(name: "持ち物リスト")
        list2.checkItems.append( CheckItem(name: "ハンカチ") )
        list2.checkItems.append( CheckItem(name: "ティッシュ") )
        list2.checkItems.append( CheckItem(name: "財布") )
        self.checkLists.append( list2 )
    }
}

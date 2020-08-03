//
//  Model.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation

var SearchVM = SearchViewModel()

struct CharacterInfo {
    
    var charId = SearchVM.charId
    var imgUrl: String
    var world: String
    var nickName: String
    var level: String
    var detailJob: String
}





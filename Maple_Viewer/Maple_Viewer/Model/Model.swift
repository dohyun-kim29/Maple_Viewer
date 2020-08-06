//
//  Model.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxSwift


var SearchVM = SearchViewModel()

struct CharacterInfo {
    
    var charId = SearchVM.charId
    var imgUrl = BehaviorSubject<String>(value: "")
    var world = BehaviorSubject<String>(value: "월드")
    var nickName = BehaviorSubject<String>(value: "닉네임")
    var level = BehaviorSubject<String>(value: "레벨")
    var detailJob = BehaviorSubject<String>(value: "직업")
}





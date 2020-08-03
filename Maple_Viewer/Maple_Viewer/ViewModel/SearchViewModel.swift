//
//  SearchViewModel.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

var searchView = SearchViewController()

class SearchViewModel {
    
    let charId = searchView.txtSearch.rx.text
    
}




//
//  SearchViewModel.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa




class SearchViewModel {
    
    let charId = BehaviorRelay<String>(value: "")
    
    
    
    func presentingView() {
        
        let rootViewController = SearchVC()
        let DetailViewController = DetailVC()
        
//        rootViewController.present(DetailViewController, animated: true, completion: nil)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(DetailViewController, animated: true, completion: nil)
        
        
    }
    
    func btnTest() {
        print("clicked")
    }
}

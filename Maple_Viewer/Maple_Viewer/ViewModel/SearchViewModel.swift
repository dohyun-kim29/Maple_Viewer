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
import SnapKit




class SearchViewModel {
    
    let charId = BehaviorRelay<String>(value: "")
    
    
    
    func presentingView() {
        
        let rootViewController = SearchVC()
        let DetailViewController = DetailVC()

//                let navigationController = UINavigationController(rootViewController: rootViewController)
//                navigationController.modalPresentationStyle = .fullScreen
//                navigationController.present(DetailViewController, animated: true, completion: nil)

        UIApplication.shared.keyWindow?.rootViewController?.present(DetailViewController, animated: true, completion: nil)
        
//        let vc = SearchVC()
//        vc.modalPresentationStyle = .automatic
//        vc.present(DetailVC(), animated: true, completion: nil)
        
    }
    
    func btnTest() {
        print("clicked")
    }
}

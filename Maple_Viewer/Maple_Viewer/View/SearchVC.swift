//
//  SearchViewController.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class SearchVC: UIViewController {
    
    private lazy var searchView = SearchView(controlBy: self)
    
    let viewModel = SearchViewModel()
    
    
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.setup()
        self.view.backgroundColor = .white
        bind()
    }
    override func loadView() {
        self.view = searchView
    }
    
    func bind() {
        
        searchView.txtSearch.rx.text.orEmpty
            .bind(to: viewModel.charId)
            .disposed(by: disposeBag)
        
        searchView.btnSearch.rx.tap
            .map { self.viewModel.presentingView() }
        
    }
}

extension SearchVC: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

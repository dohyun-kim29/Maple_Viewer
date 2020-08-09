//
//  ViewController.swift
//  Maple_Viewer_Test
//
//  Created by DohyunKim on 2020/08/07.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import SnapKit

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
    
    override func viewDidAppear(_ animated: Bool) {
        present()
    }
    override func loadView() {
        self.view = searchView
    }
    
    func bind() {
        
        searchView.txtSearch.rx.text.orEmpty
            .bind(to: viewModel.charId)
            .disposed(by: disposeBag)
        
        searchView.bringSubviewToFront(searchView.btnSearch)
        
       
        
    }
    
    func present() {
        
        searchView.btnSearch.rx.tap
                   .map { self.viewModel.btnTest() }
                   .bind{ [ weak self] in
                       self?.viewModel.presentingView() }
               .disposed(by: disposeBag)
    }
    
}

extension SearchVC: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}



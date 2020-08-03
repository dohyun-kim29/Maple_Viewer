//
//  SearchViewController.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import SnapKit

class SearchVC: UIViewController {
    private lazy var searchView = SearchView(controlBy: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView.setup()
        self.view.backgroundColor = .white
        
    }
    override func loadView() {
        self.view = searchView
    }
}

extension SearchVC: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

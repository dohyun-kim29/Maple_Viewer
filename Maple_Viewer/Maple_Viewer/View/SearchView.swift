//
//  SearchView.swift
//  Maple_Viewer
//
//  Created by jge on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import SnapKit
import UIKit

class SearchView: UIView {    
    weak var vc: SearchVC?
    
    init(controlBy viewController: SearchVC) {
        self.vc = viewController
        super.init(frame: UIScreen.main.bounds)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let searchTxtField: UITextField = {
        let txtfield = UITextField()
        txtfield.backgroundColor = .white
        txtfield.layer.borderColor = UIColor.black.cgColor
        txtfield.layer.borderWidth = 0.3
        txtfield.placeholder = "캐릭터ID를 입력해주세요"
        return txtfield
    }()
    let searchButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Search", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    func setup() {
        setupUI()
    }
    
}

extension SearchView {
    
    func setupUI() {
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        self.addSubview(self.searchTxtField)
        self.addSubview(self.searchButton)
    }
    
    func setupConstraints() {
        searchTxtField.snp.makeConstraints {
            $0.centerX.equalTo(searchButton)
            $0.bottom.equalTo(searchButton.snp.top).offset(-100)
        }
        
        searchButton.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}

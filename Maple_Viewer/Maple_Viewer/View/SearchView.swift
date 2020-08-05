//
//  SearchView.swift
//  Maple_Viewer
//
//  Created by jge on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import SnapKit
import UIKit
import RxCocoa
import RxSwift


class SearchView: UIView {

    weak var vc: SearchVC?
    
    
    init(controlBy viewController: SearchVC) {
        self.vc = viewController
        super.init(frame: UIScreen.main.bounds)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let txtSearch: UITextField = {
        let txtfield = UITextField()
        txtfield.backgroundColor = .white
        txtfield.layer.borderColor = UIColor.black.cgColor
        txtfield.layer.borderWidth = 0.3
        txtfield.placeholder = "캐릭터ID를 입력해주세요"
        return txtfield
    }()
    
    let btnSearch: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = UIColor.cyan
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
        self.addSubview(self.txtSearch)
        self.addSubview(self.btnSearch)
    }
    
    func setupConstraints() {
        txtSearch.snp.makeConstraints {
            $0.centerX.equalTo(btnSearch)
            $0.bottom.equalTo(btnSearch.snp.top).offset(-100)
            
        }
        
        btnSearch.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        btnSearch.layer.zPosition = 999
        
    }
}

extension SearchView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtSearch.resignFirstResponder()
        return true
    }
}

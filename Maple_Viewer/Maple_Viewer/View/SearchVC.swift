//
//  SearchViewController.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa



class SearchVC: UIViewController, UITextFieldDelegate {
    
   var viewModel = SearchViewModel()
    
    let txtSearch = UITextField()
    let btnSearch = UIButton()
    let lblIdView = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.txtSearch)
        txtSearch.backgroundColor = UIColor.white
        txtSearch.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.center.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-550)
        }
        txtSearch.layer.borderColor = UIColor.black.cgColor
        txtSearch.layer.borderWidth = 0.3
        txtSearch.placeholder = "캐릭터ID를 입력해주세요"
        
        self.view.addSubview(self.btnSearch)
        btnSearch.backgroundColor = UIColor.white
        btnSearch.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        btnSearch.setTitle("Search", for: .normal)
        btnSearch.setTitleColor(UIColor.black, for: .normal)
        btnSearch.layer.cornerRadius = 5
        
        self.view.addSubview(self.lblIdView)
        lblIdView.backgroundColor = UIColor.white
        lblIdView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(550)
            $0.center.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-100)
        }
        lblIdView.layer.borderColor = UIColor.black.cgColor
        lblIdView.layer.borderWidth = 0.3
        lblIdView.text = " "
        
        
        
        
    }
    
    // textFieldDelegate
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtSearch.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func btnSearch(sender: UIButton) {
        
    
        
    }
    
    
}

//
//  SearchViewController.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/07/31.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import SnapKit

class SearchViewController: UIViewController {
    
    let txtSearch = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.txtSearch)
            txtSearch.backgroundColor = .white
            txtSearch.snp.makeConstraints { (make) in
                make.width.height.equalTo(100)
                make.center.equalTo(self.view)
                
            }
        
        
        
        
    }
    
    
}

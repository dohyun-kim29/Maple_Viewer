//
//  DetailVC.swift
//  Maple_Viewer_Test
//
//  Created by DohyunKim on 2020/08/08.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class DetailVC: UIViewController {
    
    private lazy var detailView = DetailView(controlBy: self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailView.setupUI()

        
        self.view.backgroundColor = UIColor.white
        
        
    }
    
    override func loadView() {
        self.view = detailView
    }
    
}


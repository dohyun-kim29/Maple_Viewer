//
//  DetailView.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

class DetailView: UIView {
    
    weak var vc: DetailVC?
    
    init(controlBy viewcontroller: DetailVC) {
        self.vc = viewcontroller
        super.init(frame: UIScreen.main.bounds)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

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
    
    var viewModel = DetailViewModel()
   
    
    init(controlBy viewcontroller: DetailVC) {
        self.vc = viewcontroller
        super.init(frame: UIScreen.main.bounds)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let charImg: UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    let charName: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    let charWord: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    let charLevel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    let charJob: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    
}

extension DetailView {
    
    func setupUI() {
        
        setupConstraints()
        setupViews()
    }
    
    func setupViews() {
        
        self.addSubview(self.charImg)
        self.addSubview(self.charName)
        self.addSubview(self.charWord)
        self.addSubview(self.charLevel)
        self.addSubview(self.charJob)
    }
    
    func setupConstraints() {
        
        
    }
}

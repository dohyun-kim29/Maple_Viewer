//
//  TransitionModel.swift
//  Maple_Viewer
//
//  Created by DohyunKim on 2020/08/03.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}

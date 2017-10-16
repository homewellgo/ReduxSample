//
//  SignUpActions.swift
//  ReduxSample
//
//  Created by PB2 on 2017/10/16.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import Foundation
import ReSwift

struct SignUpActionSetUserNameText: Action {
    let text: String
    init(text: String) {
        self.text = text
    }
}

struct SignUpActionSetPasswordText: Action {
    let text: String
    init(text: String) {
        self.text = text
    }
}

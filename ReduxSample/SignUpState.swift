//
//  SignUpState.swift
//  ReduxSample
//
//  Created by PB2 on 2017/10/16.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import Foundation

struct SignUpState {
    var userName: String = ""
    var password: String = ""
    
    var isUserNameValid: Bool = false
    var isPasswordValid: Bool = false
    
    var isAllValid: Bool {
        return isUserNameValid && isPasswordValid
    }
}

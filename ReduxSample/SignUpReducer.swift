//
//  SignUpReducer.swift
//  ReduxSample
//
//  Created by PB2 on 2017/10/16.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import Foundation
import ReSwift

func singUpReducer(action: Action, state: SignUpState?) -> SignUpState {
    var state = state ?? SignUpState()
    
    switch action {
    case let action as SignUpActionSetUserNameText:
        state.userName = action.text
        
    case let action as SignUpActionSetPasswordText:
        state.password = action.text
        
    default:
        break
    }
    
    return state
}

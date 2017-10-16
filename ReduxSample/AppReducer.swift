//
//  AppReducer.swift
//  ReduxSample
//
//  Created by PB2 on 2017/10/16.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: State?) -> State {
    return State(
        signUpState: singUpReducer(action: action, state: state?.signUpState)
    )
}

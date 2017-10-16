//
//  SignUpViewController.swift
//  ReduxSample
//
//  Created by PB2 on 2017/10/16.
//  Copyright © 2017年 homewellgo. All rights reserved.
//

import UIKit
import ReSwift
import RxSwift
import RxCocoa

class SignUpViewController: UIViewController, StoreSubscriber {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainStore.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mainStore.unsubscribe(self)
    }

    func bind() {
        _ = userNameTextField.rx.text.subscribe(onNext: { text in
            mainStore.dispatch( SignUpActionSetUserNameText(text: text ?? "") )
        })
        
        _ = passwordTextField.rx.text.subscribe(onNext: { text in
            mainStore.dispatch( SignUpActionSetPasswordText(text: text ?? "") )
        })
    }
    
    
    
    
    
    func newState(state: State) {        
        let signUpState = state.signUpState
        
        userNameTextField.backgroundColor =
            state.signUpState.isUserNameValid || signUpState.userName.characters.count == 0 ?
            .white : .orange
        
        passwordTextField.backgroundColor =
            signUpState.isPasswordValid || signUpState.password.characters.count == 0 ?
            .white : .orange
        
        registerButton.isEnabled = state.signUpState.isAllValid
    }
}

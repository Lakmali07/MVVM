//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by Lakmali on 2024-02-20.
//

import Foundation

final class LoginViewModel{
    
    var error : ObservableObject<String?> = ObservableObject(nil)
    
    func login(email:String,password:String) {
        NetworkService.shared.login(email: email, password: password){
            [weak self] success in self?.error.value = success ? nil : "Invalid Credentials"
        }
    }
    
}

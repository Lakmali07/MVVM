//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Lakmali on 2024-02-20.
//

import Foundation

final class HomeViewModel{
    var welcomeMessage:ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser(){
        var user = NetworkService.shared.getLoggedInUser()
        welcomeMessage.value = "Hello \(user.firstName) \(user.lasttName)"
    }
}

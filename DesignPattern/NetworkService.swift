//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Lakmali on 2024-02-20.
//

import Foundation

final class NetworkService{
    static let shared = NetworkService()
    private var user:User?
    private init(){
        
    }
    
    func login(email:String, password:String,
               completion:@escaping(Bool) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            if email == "test@test.com" && password == "password"{
                self.user = User(firstName: "Lakmali", lasttName: "Liyanage", email: "test@test.com", age: 24)
                completion(true)
            }
            else{
                self.user = nil
                completion(false)
            }
                
        }
    }
    
    func getLoggedInUser() -> User{
        return user!
    }
}

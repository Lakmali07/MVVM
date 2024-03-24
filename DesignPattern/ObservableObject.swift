//
//  ObservableObject.swift
//  DesignPattern
//
//  Created by Lakmali on 2024-02-20.
//

import Foundation

final class ObservableObject<T>{
    var value:T{
        didSet{
            listner?(value)
        }
    }
    private var listner : ((T) -> Void)?
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listner:@escaping(T) -> Void){
        listner(value)
        self.listner = listner
    }
}

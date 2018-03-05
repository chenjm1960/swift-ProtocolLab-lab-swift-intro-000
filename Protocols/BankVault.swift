//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    func allowEntryWithPassword(password:[Int]) -> Bool
}

extension BankVault:ProvideAccess {
    
    func allowEntryWithPassword(password:[Int]) -> Bool {
        
        if password == [] || password.count > 10 {
            return false
        }
        for (i,value) in password.enumerated() {
            if (i)%2 == 0 {
                if value%2 == 0 {
                    
                } else {return false}
            }
        }
        return true
    }
}


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}






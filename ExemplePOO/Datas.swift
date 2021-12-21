//
//  Data.swift
//  ExemplePOO
//
//  Created by bilal on 21/12/2021.
//

import Foundation

struct Datas {
    
    static let shared = Datas()
    
    let bilal   = User(name: "maitre", surname: "Yoda", imageString: "et", age: 250)
    let farah   = User(name: "I-32s4", surname: "Toufer", imageString: "robot", age: 1)
    let salim   = User(name: "Disney", surname: "Pluto", imageString: "pluto", age: 50)
    let tasnim  = User(name: "Chevalier", surname: "Lego", imageString: "chevalier", age: 3)

    
    func allUsers() -> [User] {
        var users: [User] = []
        users.append(bilal)
        users.append(farah)
        users.append(salim)
        users.append(tasnim)

        return users
    }
    
}

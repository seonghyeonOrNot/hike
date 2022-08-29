//
//  Hike.swift
//  UdemyTest
//
//  Created by 이성현 on 2022/08/24.
//

import Foundation

struct Hike {
    
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return[
            Hike(name: "salmonberry trail", imageURL: "sal", miles: 6),
            Hike(name: "tom, dick and harry mountain", imageURL: "tom", miles: 5.8),
            Hike(name: "tamanawass falls", imageURL: "tam", miles: 5),
        
        ]
    }
    
}

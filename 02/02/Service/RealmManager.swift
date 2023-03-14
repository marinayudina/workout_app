//
//  RealmManager.swift
//  02
//
//  Created by Марина on 09.03.2023.
//

import RealmSwift

class RealmManager {
    
    static let shared = RealmManager() //вот наш единственный менеджер - shared
    
    private init() {} //к нему никто не сможет обратиться
    
    let realm = try! Realm()
    
    func saveWorkoutModel(_ model: WorkoutModel) {
        
        try! realm.write {
            realm.add(model)
        }
    }
}


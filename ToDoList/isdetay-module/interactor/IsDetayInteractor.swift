//
//  IsDetayInteractor.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

class IsDetayInteractor: PresenterToInteractorYapilacakDetayProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    func yapilacakGuncelle(yapilacak_id: Int, yapilacak_is: String) {
        
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE todoList SET yapilacak_is = ? WHERE yapilacak_id = ?",
                                  values: [yapilacak_is,yapilacak_id])
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
}

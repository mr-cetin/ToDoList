//
//  IsKayitInteractor.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation


class IsKayitInteractor : PresenterToInteractorYapilacakKayitProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func yapilacakEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db?.executeUpdate("INSERT INTO todoList (yapilacak_is) Values (?)", values: [yapilacak_is])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}

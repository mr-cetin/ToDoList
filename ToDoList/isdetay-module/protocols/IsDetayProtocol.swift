//
//  Protocols.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

//Ana protocoller
protocol ViewToPresenterYapilacakDetayProtocol {
    var IsDetayInteractor:PresenterToInteractorYapilacakDetayProtocol? {get set}
    
    func guncelle(yapilacak_id:Int,yapilacak_is:String)
}

protocol PresenterToInteractorYapilacakDetayProtocol {
    func yapilacakGuncelle(yapilacak_id:Int,yapilacak_is:String)
}
//Router
protocol PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:IsDetayVC)
}

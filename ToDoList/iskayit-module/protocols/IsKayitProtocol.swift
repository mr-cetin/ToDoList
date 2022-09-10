//
//  YapilacakKayitProtocol.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

//Ana protocoller
protocol ViewToPresenterYapilacakKayitProtocol {
    var IsKayitInteractor:PresenterToInteractorYapilacakKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}
protocol PresenterToInteractorYapilacakKayitProtocol {
    func yapilacakEkle(yapilacak_is:String)
}
//Router
protocol PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref:IsKayitVC)
}

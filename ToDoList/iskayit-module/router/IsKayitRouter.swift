//
//  IsKayitRouter.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

class IsKayitRouter : PresenterToRouterYapilacakKayitProtocol {
    static func createModule(ref: IsKayitVC) {
        ref.yapilacakKayitPresenterNesnesi = IsKayitPresenter()
        ref.yapilacakKayitPresenterNesnesi?.IsKayitInteractor = IsKayitInteractor()
    }
    
}

//
//  IsDetayRouter.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

class IsDetayRouter : PresenterToRouterYapilacakDetayProtocol {
    static func createModule(ref:IsDetayVC) {
        ref.yapilacakDetayPresenterNesnesi = IsDetayPresenter()
        ref.yapilacakDetayPresenterNesnesi?.IsDetayInteractor = IsDetayInteractor()
    }
}

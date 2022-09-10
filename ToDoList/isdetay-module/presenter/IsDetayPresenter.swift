//
//  IsDetayPresenter.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

class IsDetayPresenter : ViewToPresenterYapilacakDetayProtocol {
    var IsDetayInteractor: PresenterToInteractorYapilacakDetayProtocol?
            
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        IsDetayInteractor?.yapilacakGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}

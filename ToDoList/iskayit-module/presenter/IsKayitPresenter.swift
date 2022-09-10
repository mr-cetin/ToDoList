//
//  IsKayitPresenter.swift
//  ToDoList
//
//  Created by EMRE on 9.09.2022.
//

import Foundation

class IsKayitPresenter : ViewToPresenterYapilacakKayitProtocol {
    var IsKayitInteractor : PresenterToInteractorYapilacakKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        IsKayitInteractor?.yapilacakEkle(yapilacak_is: yapilacak_is)
    }
}

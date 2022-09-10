//
//  IsDetayVC.swift
//  ToDoList
//
//  Created by EMRE on 8.09.2022.
//

import UIKit

class IsDetayVC: UIViewController {
    @IBOutlet weak var tfYapilacakIs:UITextField!

    var yapilacak:Yapilacaklar?
    var yapilacakDetayPresenterNesnesi:ViewToPresenterYapilacakDetayProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        IsDetayRouter.createModule(ref: self)
        
        if let y = yapilacak {
            tfYapilacakIs.text = y.yapilacak_is
        }

    }
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let yi = tfYapilacakIs.text, let y = yapilacak {
            yapilacakDetayPresenterNesnesi?.guncelle(yapilacak_id: y.yapilacak_id!, yapilacak_is: yi)
        }
    }

}

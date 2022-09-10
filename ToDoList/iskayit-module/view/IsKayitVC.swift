//
//  IsKayitVC.swift
//  ToDoList
//
//  Created by EMRE on 8.09.2022.
//

import UIKit

class IsKayitVC: UIViewController {

    @IBOutlet weak var tfYapilacakIs: UITextField!
    
    var yapilacakKayitPresenterNesnesi:ViewToPresenterYapilacakKayitProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IsKayitRouter.createModule(ref: self)
    }
    
    @IBAction func buttonKaydet(_sender:Any) {
        if let yi = tfYapilacakIs.text {
            yapilacakKayitPresenterNesnesi?.ekle(yapilacak_is: yi)
        }
    }
   

}

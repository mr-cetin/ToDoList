//
//  TableViewHucre.swift
//  ToDoList
//
//  Created by EMRE on 8.09.2022.
//

import UIKit

class TableViewHucre: UITableViewCell {
    @IBOutlet weak var yapilacaklarBilgiLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        //İnit
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //Configure the view for the selectd state
    }
}

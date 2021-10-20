//
//  ViewController.swift
//  Json_Demo
//
//  Created by 준수김 on 2021/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var labelBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
            }

    @IBAction func clickedBtn(_ sender: UIButton) {
        Request().getData(self)

    }
    
}

extension ViewController {
    
    func didSuccess(_ response: ResponseService) {
        
        let sicdangName = response.Grid_20200713000000000605_1.row[0].RELAX_RSTRNT_NM
        //받은 response에서 첫번째 weather의 main response
        
        self.nameLabel.text = sicdangName
        
    }
    
}

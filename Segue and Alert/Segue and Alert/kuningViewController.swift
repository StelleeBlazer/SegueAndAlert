//
//  kuningViewController.swift
//  Segue and Alert
//
//  Created by Mac n Cheese on 08/06/21.
//

import UIKit

class kuningViewController: UIViewController {

    @IBOutlet weak var lblNama: UILabel!
    @IBOutlet weak var lblUmur: UILabel!
    
    var nama : String? = nil
    var umur : Int? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNama.text = nama
        lblUmur.text = String(umur ?? 0)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

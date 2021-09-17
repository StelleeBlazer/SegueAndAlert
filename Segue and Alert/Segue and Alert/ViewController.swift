//
//  ViewController.swift
//  Segue and Alert
//
//  Created by Mac n Cheese on 08/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNama: UITextField!
    @IBOutlet weak var tfUmur: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnToHalamanUngu(_sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(identifier: "halamanUngu")
        
        
        
        // show
        show(destination, sender: self)
        
        // show detail
        //showDetailViewController(destination, sender: "self")
        
        //present
        //present(destination, animated: true, completion: nil)
        
        
    }
    @IBAction func btnToHalamanKuning(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyBoard.instantiateViewController(identifier: "halamanKuning") as kuningViewController
        
        destination.nama = tfNama.text
        destination.umur = Int(tfUmur.text!)
        
        show(destination, sender: self)
    }
    @IBAction func btnAlert(_ sender: Any) {
        let alert = UIAlertController(title: "ini judul alert", message: "ini message alert", preferredStyle: .alert)
        
        let btnDefault = UIAlertAction(title: "default" , style: .default) { UIAlertAction in
            print("button default")
        }
        let btnDestructive = UIAlertAction(title: "destructive", style: .destructive) { UIAlertAction in
            print("button destructive")
        }
        let btnCancel = UIAlertAction(title: "cancel", style: .cancel) { UIAlertAction in
            print("button cancel")
        }
        alert.addAction(btnDefault)
        alert.addAction(btnDestructive)
        alert.addAction(btnCancel)
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    @IBAction func btnActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "ini judul alert", message: "ini message alert", preferredStyle: .actionSheet)
        
        let btnDefault = UIAlertAction(title: "default" , style: .default) { UIAlertAction in
            print("button default")
        }
        let btnDestructive = UIAlertAction(title: "destructive", style: .destructive) { UIAlertAction in
            print("button destructive")
        }
        let btnCancel = UIAlertAction(title: "cancel", style: .cancel) { UIAlertAction in
            print("button cancel")
        }
        alert.addAction(btnDefault)
        alert.addAction(btnDestructive)
        alert.addAction(btnCancel)
        
        present(alert, animated: true, completion: nil)
        
    }
}


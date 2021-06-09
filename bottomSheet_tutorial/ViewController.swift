//
//  ViewController.swift
//  bottomSheet_tutorial
//
//  Created by wooyeong kam on 2021/06/09.
//

import UIKit
import PanModal

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var tableModalButton: UIButton!
    @IBOutlet weak var halfModalButton: UIButton!
    
    @IBAction func onModalBtnClicked(_ sender: UIButton) {
        print("ViewController - onModalBtnClicked() called")
        
        switch sender {
        case tableModalButton:
            print("table btn clicked")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyTableVC") as! MyTableVC
            presentPanModal(vc)
        case halfModalButton :
            print("half btn clicked")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MySimpleVC") as! MySimpleVC
            presentPanModal(vc)
        default:
            break
        }
    }
    

}


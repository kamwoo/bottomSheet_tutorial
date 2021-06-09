//
//  MySimple.swift
//  bottomSheet_tutorial
//
//  Created by wooyeong kam on 2021/06/09.
//

import Foundation
import UIKit
import PanModal

class MySimpleVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onConfirmBtnClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension MySimpleVC : PanModalPresentable {
    var panScrollable: UIScrollView? {
        return nil
    }
    
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(100)
    }
    
}

//
//  MyTableVC.swift
//  bottomSheet_tutorial
//
//  Created by wooyeong kam on 2021/06/09.
//

import Foundation
import UIKit
import PanModal

class MyTableVC : UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension MyTableVC : PanModalPresentable {
    var panScrollable: UIScrollView? {
        return tableView
    }
    
    // 접힌거
    var shortFormHeight: PanModalHeight {
        return .contentHeight(300)
    }
    
    // 완전 펼처질 때
    var longFormHeight: PanModalHeight {
        return .maxHeightWithTopInset(100)
    }
    
    
    var anchorModalToLongForm: Bool {
        // true일 경우 최상단까지 스크롤 안됨
        return true
    }
    
}

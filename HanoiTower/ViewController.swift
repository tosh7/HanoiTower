//
//  ViewController.swift
//  HanoiTower
//
//  Created by Satoshi Komatsu on 2017/10/12.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 3
    var total: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hanoi(num: number, from: "Left", dst: "Center", work: "Right")
        
        print("Total is \(total)!")
    }
    
    func hanoi(num:Int, from: String, dst: String, work: String){
        if num > 0{
            hanoi(num: num - 1, from: from, dst: work, work: dst)
            printer(b: from, c: dst)
            hanoi(num: num - 1, from: work, dst: dst, work: from)
        }
        
    }
    
    func printer(b: String, c: String){
        total = total + 1
        print("\(total): 棒", b, "から棒", c,"へ移動")
        
    }
    
}


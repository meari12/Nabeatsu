//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true //アホになる
        }
        
        // 問題2: 1の位が3かどうか調べる
        if number % 10 == 3 {
            return true //アホになる
        }
        
        // 問題3: 10の位が3かどうか調べる
        if number / 10 % 10 == 3 {
            return true //アホになる
        }

        // 問題4: 3がつくかどうか調べる
        var checkNum: Int = number //３がつくか判断するための変数を宣言
        
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                return true //1番下の位が３だったらアホになる
            } else {
                checkNum = checkNum / 10 //３でなかったら、次の桁に移ってもう一度判定
            }
        }
        
        
        
        // 問題4をやるときは問題3と問題2の答えを消してから書こう

        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clearButton(){ //クリアボタンが押されたら
        number = 0 //数字が０になる
        countLabel.text = String(number) //表示されている数字が０になる
        faceLabel.text = "(゜o゜)" //顔が普通に戻る
    }


}


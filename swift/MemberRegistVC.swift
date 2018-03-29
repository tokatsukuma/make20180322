//
//  MemberRegistVC.swift
//  okashi
//
//  Created by User2 on 2018/03/15.
//  Copyright © 2018年 User2. All rights reserved.
//

import UIKit
import SwiftCop

class MemberRegistVC: SuperVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupswiftcop()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nametextfield: UITextField!
    @IBOutlet weak var adresstextfield: UITextField!
    @IBOutlet weak var passtextfield: UITextField!
    @IBOutlet weak var birthdatapicker: UIDatePicker!
    
    private let swiftcop = SwiftCop()
    
    @IBAction func MenberEnter(_ sender: Any) {
        
        if check(){
            entryInfo()
            closeScreen()
            }
                }
    
    private func check() -> Bool {
        guard validation(textField: self.nametextfield) else {
            return false
        }
    return true
    }

    private func validation(textField:UITextField) -> Bool {
        if let suspect = self.swiftcop.isGuilty(nametextfield){
            print(suspect.verdict())
            self.showAlert(message: suspect.verdict())
            return false
        }
    return true
    }
    
    func entryInfo() {
 //保存コード
    }
    
    func setupswiftcop(){
        swiftcop.addSuspect(Suspect(view: self.nametextfield,sentence:"名前を入力して下さい",trial:Trial.length(.minimum,1)))
        swiftcop.addSuspect(Suspect(view: self.adresstextfield,sentence:"メールするアドレスを入力して下さい",trial:Trial.length(.minimum,1)))
        swiftcop.addSuspect(Suspect(view: self.passtextfield,sentence:"パスワードを入力して下さい",trial:Trial.length(.minimum,1)))
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

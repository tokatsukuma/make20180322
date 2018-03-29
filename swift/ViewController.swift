//
//  ViewController.swift
//  okashi2
//
//  Created by User2 on 2018/03/15.
//  Copyright © 2018年 User2. All rights reserved.
//

import UIKit
import SwiftCop

class ViewController: SuperVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("テスト")
    }
    
    @IBAction func Member(_ sender: Any) {
        createMember()
//        let storyboard: UIStoryboard = UIStoryboard(name: "Member", bundle: nil)
//        let nextView = storyboard.instantiateInitialViewController()
//        present(nextView!, animated: true, completion: nil)
}

    private func createMember(){
        let vc = MemberRegistVC.instantiate()
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true, completion: nil)
 }

    private func gotoSearch(){
        let vc = SearchVC.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }

    @IBAction func Start(_ sender: Any) {
        self.createLogin()
//        let storyboard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
//        let nextView = storyboard.instantiateInitialViewController()
//        present(nextView!, animated: true, completion: nil)
}

        func createLogin(){
        let vc = LoginVC.instantiate()
            vc.modalPresentationStyle = .overCurrentContext
            vc.callbackLogin = {[weak self] in
                print("-callbackLogin-")
                self?.gotoSearch()
            }
    present(vc, animated: true, completion: nil)
    }

}



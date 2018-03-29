//
//  SuperVC.swift
//  okashi
//
//  Created by User2 on 2018/03/15.
//  Copyright © 2018年 User2. All rights reserved.
//
import UIKit

class SuperVC: UIViewController {

    typealias AlertHandler = ((UIAlertAction) -> Swift.Void)?
    
    func closeScreen(){
        DispatchQueue.main.async{
            self.view.endEditing(true)
            self.dismiss(animated: true, completion: nil)
        }
    }
    func setupUI(){
    }
    
    func showAlert(message: String?, showHandler:AlertHandler = nil)
    {
        let alertController = UIAlertController(title:nil,message:
            message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK",
                                                style: .cancel,handler:showHandler))
        DispatchQueue.main.async{
            self.present(alertController, animated: true, completion: nil)
    }
    
}
}
    extension SuperVC : StoryboardInstantiable{
    }


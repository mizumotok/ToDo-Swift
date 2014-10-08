//
//  AddItemViewController.swift
//  ToDo
//
//  Created by Kiyoshi Mizumoto on 2014/10/08.
//  Copyright (c) 2014年 Andgenie Co., Ltd. All rights reserved.
//

import UIKit

class AddItemViewController : UITableViewController {
    
    @IBAction func clickedSaveButton(sender: AnyObject) {
        println("clickedSaveButton")
        self.delegate?.addItemViewControllerDidFinish(self, item:self.textLabel.text)
    }

    @IBAction func clickedCancelButton(sender: AnyObject) {
        println("clickedcancelButton")
        self.delegate?.addItemViewControllerDidCancel(self)
    }
    
    @IBOutlet weak var textLabel: UITextField!
    
    var delegate: AddItemViewControllerDelegate!
}

protocol AddItemViewControllerDelegate {
    func addItemViewControllerDidCancel(controller: AddItemViewController) -> ()
    func addItemViewControllerDidFinish(controller:AddItemViewController, item: String) -> ()
}
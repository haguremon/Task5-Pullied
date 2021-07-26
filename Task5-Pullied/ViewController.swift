//
//  ViewController.swift
//  Task5-Pullied
//
//  Created by IwasakIYuta on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1Field: UITextField!
    
    @IBOutlet weak var text2Field: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text1Field.keyboardType = .decimalPad
        text2Field.keyboardType = .decimalPad
    }
    func dialogAlert(message: String) {
        let alert = UIAlertController(title: "Task5", message: message, preferredStyle: .alert )
        
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert, animated: true)
    }
    @IBAction func dividedByButton(_ sender: UIButton) {
        //値がnilかつキャストできない場合dialogAlertを出して早期退室
        guard let text1 = Double(text1Field.text!) else {
            dialogAlert(message: "割られる数を入力してください")
            return
        }
        guard let text2 = Double(text2Field.text!) else {
            dialogAlert(message: "割る数を入力してください")
            return
        }
        //text2の値が0の時にdialogAlertを出してそれ以外の場合は結果を表示する
        if text2 == 0 {
            dialogAlert(message: "割る時は０以外を入力してください")
            return
        } else {
            
            resultLabel.text = String(text1 / text2)
            
        }

    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


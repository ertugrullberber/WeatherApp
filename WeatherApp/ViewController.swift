//
//  ViewController.swift
//  WeatherApp
//
//  Created by Ertugrul Berber on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btn.layer.cornerRadius = 6
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

    @IBAction func button(_ sender: UIButton) {
        let city = textField.text ?? ""
        
        if city.isEmpty {
            let alert = UIAlertController(title: "UYARI", message: "Lütfen şehir adı giriniz", preferredStyle: .alert)
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(cancelButton)
            
            self.present(alert, animated: true, completion: nil)
        } else {
            let vc = self.storyboard?.instantiateViewController(identifier: "") as! DetailViewController
        }
    }
    
}


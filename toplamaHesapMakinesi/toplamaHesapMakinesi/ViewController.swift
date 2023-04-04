//
//  ViewController.swift
//  toplamaHesapMakinesi
//
//  Created by Agah Özdemir on 4.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputFirstNumber: UITextField!
    @IBOutlet weak var inputSecondNumber: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        
        
        guard let sayi1 = Int(inputFirstNumber.text ?? "") else {
            return }
        guard let sayi2 = Int(inputSecondNumber.text ?? "") else {
            return }
        
        if sayi1 < 0 || sayi2 < 0 {
            totalLabel.text = "Negatif sayılar kullanılamaz"
        } else {
            let toplam = sayi1 + sayi2
            totalLabel.text = String(toplam)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}


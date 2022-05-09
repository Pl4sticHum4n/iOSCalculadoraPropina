//
//  CalculosViewController.swift
//  CalculadoraPropinas
//
//  Created by mac16 on 06/05/22.
//

import UIKit

class CalculosViewController: UIViewController {
    
    var personas: Double?
    var total: Double?
    var porcentaje: Double?
    
    var totalFinal: Double?
    var porPersona: Double?
    
    @IBOutlet weak var labelTotalPagar: UILabel!
    @IBOutlet weak var labelPersona: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalFinal = total!*(1+(porcentaje!/100))
        porPersona = totalFinal!/personas!
        labelTotalPagar.text = "\(String(format: "%.1f", totalFinal!))"
        labelPersona.text = "\(String(format: "%.1f", porPersona!))"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}

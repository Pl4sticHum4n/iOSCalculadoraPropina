//
//  ViewController.swift
//  CalculadoraPropinas
//
//  Created by mac16 on 06/05/22.
//

import UIKit

class ViewController: UIViewController {

    var numPeople: Double?
    var totalCount: Double?
    var porcentPropina: Double?
    
    @IBOutlet weak var numPersonas: UITextField!
    @IBOutlet weak var totalCuenta: UITextField!
    @IBOutlet weak var porcentajePropina: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderPorcentaje(_ sender: UISlider) {
        print(sender.value)
        porcentajePropina.text = ("\(String(format: "%.1f", sender.value))")
        porcentPropina = Double(sender.value)
    }
    @IBAction func calcularBtn(_ sender: UIButton) {
        numPeople = Double(numPersonas.text!) ?? 1.0
        totalCount = Double(totalCuenta.text!) ?? 1.0
        
        performSegue(withIdentifier: "calcularPropina", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objetoDestino = segue.destination as! CalculosViewController
        objetoDestino.personas = numPeople
        objetoDestino.total = totalCount
        objetoDestino.porcentaje = porcentPropina
    }
}


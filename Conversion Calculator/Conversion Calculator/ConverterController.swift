//
//  ConverterController.swift
//  Conversion Calculator
//
//  Created by Adam Thoma-Perry on 4/13/18.
//  Copyright © 2018 Thoma-Perry, Adam. All rights reserved.
//

import UIKit

class ConverterController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct Convertions {
        let label: String
        let inputUnit: String
        let outputUnit: String
        
        init(label: String, inputUnit: String, outputUnit: String){
            self.label = label
            self.inputUnit = inputUnit
            self.outputUnit = outputUnit
        }
    }
    var converters: [Convertions] = []
    
    @IBAction func convertButton(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: converters[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[0].inputUnit
            self.outputDisplay.text = self.converters[0].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[1].inputUnit
            self.outputDisplay.text = self.converters[1].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[2].inputUnit
            self.outputDisplay.text = self.converters[2].outputUnit
        }))
        alert.addAction(UIAlertAction(title: converters[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.inputDisplay.text = self.converters[3].inputUnit
            self.outputDisplay.text = self.converters[3].outputUnit
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addConvertions()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func addConvertions() {
        let fah_to_celcius = Convertions(label:"Fahrenheit to Celcius", inputUnit:"°F", outputUnit:"°C")
        let celcius_to_fah = Convertions(label:"Celcius to Fahrenheit", inputUnit:"°C", outputUnit:"°F")
        let miles_to_kilos = Convertions(label:"Miles to Kilometers", inputUnit:"mi", outputUnit:"km")
        let kilos_to_miles = Convertions(label:"Kilometers to Miles", inputUnit:"km", outputUnit:"mi")
        converters = [fah_to_celcius, celcius_to_fah, miles_to_kilos, kilos_to_miles]
        //print(converters)
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

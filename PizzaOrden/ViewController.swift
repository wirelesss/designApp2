//
//  ViewController.swift
//  PizzaOrden
//
//  Created by Rodrigo on 13/11/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate ,UIPickerViewDataSource{


    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerDataSource: [String] = ["Chica", "Mediana", "Grande"]
    var intSizePizza: Int? = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        pickerView.selectRow(intSizePizza!, inComponent: 0, animated: false)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaTipoMasa
        sigVista.intSizePizza = intSizePizza
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        self.intSizePizza = row
    }

}


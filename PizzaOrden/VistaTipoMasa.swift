//
//  VistaTipoMasa.swift
//  PizzaOrden
//
//  Created by Rodrigo on 13/11/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import UIKit

class VistaTipoMasa: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate {

    
    var intSizePizza:Int? = 0
    var intTipoMasa:Int? = 0
    var pickerDataSource = ["Delgada", "Crujiente", "Gruesa"];

    
    @IBOutlet weak var pickerView: UIPickerView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self;
        self.pickerView.delegate = self;
        pickerView.selectRow(intTipoMasa!, inComponent: 0, animated: false)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! VistaTipoQueso
        sigVista.intSizePizza = intSizePizza
        sigVista.intTipoMasa = intTipoMasa
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
        self.intTipoMasa = row
    }
}

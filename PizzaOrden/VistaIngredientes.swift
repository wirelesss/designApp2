//
//  VistaIngredientes.swift
//  PizzaOrden
//
//  Created by Rodrigo on 14/11/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {

    @IBOutlet weak var switchJamon: UISwitch!
    @IBOutlet weak var switchPepperoni: UISwitch!
    @IBOutlet weak var switchPavo: UISwitch!
    @IBOutlet weak var switchSalchicha: UISwitch!
    @IBOutlet weak var switchAceituna: UISwitch!
    @IBOutlet weak var switchCebolla: UISwitch!
    @IBOutlet weak var switchPimiento: UISwitch!
    @IBOutlet weak var switchPiña: UISwitch!
    @IBOutlet weak var switchAnchoa: UISwitch!
    
    var intSizePizza:Int? = 0
    var intTipoMasa:Int? = 0
    var intTipoQueso:Int? = 0
    
    var boolJamon:Bool = false
    var boolPepperoni:Bool = false
    var boolPavo:Bool = false
    var boolSalchicha:Bool = false
    var boolAceituna:Bool = false
    var boolCebolla:Bool = false
    var boolPimiento:Bool = false
    var boolPiña:Bool = false
    var boolAnchoa:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.switchJamon.setOn(boolJamon, animated: false)
        self.switchPepperoni.setOn(boolPepperoni, animated:false)
        self.switchPavo.setOn(boolPavo, animated:false)
        self.switchSalchicha.setOn(boolSalchicha, animated:false)
        self.switchAceituna.setOn(boolAceituna, animated:false)
        self.switchCebolla.setOn(boolCebolla, animated:false)
        self.switchPimiento.setOn(boolPimiento, animated:false)
        self.switchPiña.setOn(boolPiña, animated:false)
        self.switchAnchoa.setOn(boolAnchoa, animated:false)
        
        switchJamon.addTarget(self, action: Selector("switchChangedJamon:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPepperoni.addTarget(self, action: Selector("switchChangedPepperoni:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPavo.addTarget(self, action: Selector("switchChangedPavo:"), forControlEvents: UIControlEvents.ValueChanged)
        switchSalchicha.addTarget(self, action: Selector("switchChangedSalchicha:"), forControlEvents: UIControlEvents.ValueChanged)
        switchAceituna.addTarget(self, action: Selector("switchChangedAceituna:"), forControlEvents: UIControlEvents.ValueChanged)
        switchCebolla.addTarget(self, action: Selector("switchChangedCebolla:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPimiento.addTarget(self, action: Selector("switchChangedPimiento:"), forControlEvents: UIControlEvents.ValueChanged)
        switchPiña.addTarget(self, action: Selector("switchChangedPiña:"), forControlEvents: UIControlEvents.ValueChanged)
        switchAnchoa.addTarget(self, action: Selector("switchChangedAnchoa:"), forControlEvents: UIControlEvents.ValueChanged)
    }

    func switchChangedJamon(switchAnalyze: UISwitch) {
        boolJamon = switchAnalyze.on
    }
    func switchChangedPepperoni(switchAnalyze: UISwitch) {
        boolPepperoni = switchAnalyze.on
    }
    func switchChangedPavo(switchAnalyze: UISwitch) {
        boolPavo = switchAnalyze.on
    }
    func switchChangedSalchicha(switchAnalyze: UISwitch) {
        boolSalchicha = switchAnalyze.on
    }
    func switchChangedAceituna(switchAnalyze: UISwitch) {
        boolAceituna = switchAnalyze.on
    }
    func switchChangedCebolla(switchAnalyze: UISwitch) {
        boolCebolla = switchAnalyze.on
    }
    func switchChangedPimiento(switchAnalyze: UISwitch) {
        boolPimiento = switchAnalyze.on
    }
    func switchChangedPiña(switchAnalyze: UISwitch) {
        boolPiña = switchAnalyze.on
    }
    func switchChangedAnchoa(switchAnalyze: UISwitch) {
        boolAnchoa = switchAnalyze.on
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        let sigVista = segue.destinationViewController as! VistaConfirmacionEnvio
        sigVista.intSizePizza = intSizePizza!
        sigVista.intTipoMasa = intTipoMasa!
        sigVista.intTipoQueso = intTipoQueso!
        sigVista.boolJamon = boolJamon
        sigVista.boolPepperoni = boolPepperoni
        sigVista.boolPavo = boolPavo
        sigVista.boolSalchicha = boolSalchicha
        sigVista.boolAceituna = boolAceituna
        sigVista.boolCebolla = boolCebolla
        sigVista.boolPimiento = boolPimiento
        sigVista.boolPiña = boolPiña
        sigVista.boolAnchoa = boolAnchoa
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

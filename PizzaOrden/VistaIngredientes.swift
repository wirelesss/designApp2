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
        
        switchJamon.addTarget(self, action: #selector(VistaIngredientes.switchChangedJamon(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchPepperoni.addTarget(self, action: #selector(VistaIngredientes.switchChangedPepperoni(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchPavo.addTarget(self, action: #selector(VistaIngredientes.switchChangedPavo(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchSalchicha.addTarget(self, action: #selector(VistaIngredientes.switchChangedSalchicha(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchAceituna.addTarget(self, action: #selector(VistaIngredientes.switchChangedAceituna(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchCebolla.addTarget(self, action: #selector(VistaIngredientes.switchChangedCebolla(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchPimiento.addTarget(self, action: #selector(VistaIngredientes.switchChangedPimiento(_:)), forControlEvents: UIControlEvents.ValueChanged)
        switchPiña.addTarget(self, action: Selector("switchChangedPiña:"), forControlEvents: UIControlEvents.ValueChanged)
        switchAnchoa.addTarget(self, action: #selector(VistaIngredientes.switchChangedAnchoa(_:)), forControlEvents: UIControlEvents.ValueChanged)
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
        
        let validacion:Bool = boolJamon || boolPepperoni || boolPavo || boolSalchicha ||  boolAceituna || boolCebolla || boolPimiento || boolPiña || boolAnchoa
        
        if !validacion {
            mostrarMensajeAlert("Por favor ingresa al menos un ingrediente")
            return
        }
    }
    
    func mostrarMensajeAlert(msg:String) {
        var dicBotones:Dictionary<String,String> = Dictionary<String,String>()
        dicBotones[ "Cancelar" ] = "Volver"
        let arrStyleMensaje:Array<UIAlertActionStyle> = [UIAlertActionStyle.Cancel]
        mostrarMensaje(arrStyleMensaje,titulo: "Error",mensaje: "Por favor\nseleccione\nalguna opción",tituloBotonInfoWarn: dicBotones )
    }
    
    func auxMostrarMensaje(actionStyle: UIAlertActionStyle) {
        switch actionStyle {
        case .Default:
            print("OK")//OK
        case .Cancel:
            print("Cancelar")//Cancel
        case .Destructive:
            print("Abortar")//Destructive
        }
    }
    
    func mostrarMensaje(
        arrTipoMensaje:Array<UIAlertActionStyle>,
        titulo:String,
        mensaje:String,
        tituloBotonInfoWarn:Dictionary<String,String>){
        
        var arrUIAlertAction:[UIAlertAction] = []
        var okAction : UIAlertAction
        var cancelAction : UIAlertAction
        var abortAction : UIAlertAction
        let controllerAlert:UIAlertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        /* Puede ser mas de una opcion al mismo tiempo */
        for tipoMensaje in arrTipoMensaje{
            switch tipoMensaje {
            case .Default://OK
                okAction = UIAlertAction(title: tituloBotonInfoWarn["OK"]!,
                                         style: UIAlertActionStyle.Default) {
                                            (UIAlertAction) -> Void in self.auxMostrarMensaje(UIAlertActionStyle.Default)
                            }
                arrUIAlertAction.append(okAction)
            case .Cancel://Cancelar
                cancelAction = UIAlertAction(title: tituloBotonInfoWarn["Cancelar"]!,
                                        style: UIAlertActionStyle.Cancel) {
                                            (UIAlertAction) -> Void in self.auxMostrarMensaje(UIAlertActionStyle.Cancel)
                }
                arrUIAlertAction.append(cancelAction)
            case .Destructive://Abortar
                abortAction = UIAlertAction(title: tituloBotonInfoWarn["Abortar"]!,
                                        style: UIAlertActionStyle.Destructive) {
                                            (UIAlertAction) -> Void in self.auxMostrarMensaje(UIAlertActionStyle.Destructive)
                }
                arrUIAlertAction.append(abortAction)
            }
        }
        /* Motrar multiples acciones (botones)
         presentAlertControllerWithTitle(titulo,
         message: mensaje,
         preferredStyle: WKAlertControllerStyle.Alert,
         actions: [okAction, cancelAction, abortAction])
         */
        if arrUIAlertAction.count>0 {
            // Add action buttons to the alert
            for i in 0 ... arrUIAlertAction.count-1 {
                controllerAlert.addAction(arrUIAlertAction[i])
            }
            presentViewController(controllerAlert, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

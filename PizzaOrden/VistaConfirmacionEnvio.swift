//
//  VistaConfirmacionEnvio.swift
//  PizzaOrden
//
//  Created by Rodrigo on 14/11/16.
//  Copyright © 2016 Rodrigo Hernandez. All rights reserved.
//

import UIKit

class VistaConfirmacionEnvio: UIViewController {

    @IBOutlet weak var descripcionPizza: UILabel!
    
    var intSizePizza:Int = 0
    var intTipoMasa:Int = 0
    var intTipoQueso:Int = 0
    
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

        var strDescripcion:String? = ""
        var strIngredientes:String? = ""
        
        var arrSizePizza:[String?] = ["Chica", "Mediana", "Grande"]
        var arrTipoMasa:[String?] = ["Delgada", "Crujiente", "Gruesa"]
        var arrTipoQueso:[String?] = ["Mozzarella", "Cheddar", "Parmesano", "Sin Queso"]
        
        strDescripcion = "Tamaño: \(arrSizePizza[intSizePizza]!)\n" +
        "Masa:   \(arrTipoMasa[intTipoMasa]!)\n" +
        "Queso:   \(arrTipoQueso[intTipoQueso]!)\n" +
        "con los siguientes ingredientes:\n"
        if(boolJamon){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Jamón"
            }else{
                strIngredientes = strIngredientes! + "Jamón"
            }
        }
        if(boolPepperoni){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Pepperoni"
            }else{
                strIngredientes = strIngredientes! + "Pepperoni"
            }
        }
        if(boolPavo){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Pavo"
            }else{
                strIngredientes = strIngredientes! + "Pavo"
            }
        }
        if(boolSalchicha){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Salchicha"
            }else{
                strIngredientes = strIngredientes! + "Salchicha"
            }
        }
        if(boolAceituna){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Aceituna"
            }else{
                strIngredientes = strIngredientes! + "Aceituna"
            }
        }
        if(boolCebolla){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Cebolla"
            }else{
                strIngredientes = strIngredientes! + "Cebolla"
            }
        }
        if(boolPimiento){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Pimiento"
            }else{
                strIngredientes = strIngredientes! + "Pimiento"
            }
        }
        if(boolPiña){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Piña"
            }else{
                strIngredientes = strIngredientes! + "Piña"
            }
        }
        if(boolAnchoa){
            if(strIngredientes != ""){
                strIngredientes = strIngredientes! + ", Anchoa"
            }else{
                strIngredientes = strIngredientes! + "Anchoa"
            }
        }
        self.descripcionPizza.text = strDescripcion! + strIngredientes!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

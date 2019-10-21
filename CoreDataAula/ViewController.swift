//
//  ViewController.swift
//  CoreDataAula
//
//  Created by Catia Miranda de Souza on 21/10/19.
//  Copyright © 2019 Catia Miranda de Souza. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        //CRIANDO ENTIDADES
        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        
        //CONFIGURAR OBJETO USUARIO
        usuario.setValue("Jennifer Souza", forKey: "nome")
        usuario.setValue(02, forKey: "idade")
        usuario.setValue("catiasouza", forKey: "login")
        usuario.setValue("123", forKey: "senha")
        
        //SALVAR DADOS
       
        do {
            try context.save()
            print("Dados salvos com sucesso")
        } catch  {
            print("Erro ao salvar os dados")
        }
    }


}


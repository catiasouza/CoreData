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
        
     /*   //CRIANDO ENTIDADES
        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        
        //CONFIGURAR OBJETO USUARIO
        usuario.setValue("Jamilton", forKey: "nome")
        usuario.setValue(10, forKey: "idade")
        usuario.setValue("jamiltoncurso", forKey: "login")
        usuario.setValue("1234", forKey: "senha")
        
        //SALVAR DADOS
       
        do {
            try context.save()
            print("Dados salvos com sucesso")
        } catch  {
            print("Erro ao salvar os dados")
        }*/
        
        //RECUPERANDO DADOS
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Usuario")
       
        do {
           let usuarios =  try  context.fetch(requisicao)
            
            if usuarios.count > 0 {
                
                for usuario in usuarios as! [NSManagedObject]{
                    if let nomeUsuario = usuario.value(forKey: "idade"){
                    print(nomeUsuario)
                }
                }
            }else{
                print("Nenhum usuario encontrado")
            }
        } catch  {
            print("Erro ao recuperar usuario")
        }
    }


}


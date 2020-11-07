//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 11/2/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos : [Alumno] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        alumnos.append(Alumno(nombre: "Juan", matricula: "123", carrera: "Lic. en Administracion"))
        alumnos.append(Alumno(nombre: "Maria", matricula: "ABC", carrera: "Ing. Industrial"))
        alumnos.append(Alumno(nombre: "Jose", matricula: "678", carrera: "Ing. Mecatronica"))
        
    }


}


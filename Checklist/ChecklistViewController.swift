//
//  ChecklistViewController.swift
//  Checklist
//
//  Created by Luciano Schillagi on 09/10/2018.
//  Copyright © 2018 luko. All rights reserved.
//

/* Controller */

import UIKit

/* Abstract:
Una pantalla con un listado de películas ordenadas por categorías. También contiene un buscador para filtrar por nombre.
*/

class ChecklistViewController: UITableViewController {

//*****************************************************************
// MARK: - Properties
//*****************************************************************
	
	
	override func viewDidLoad() {
		
	}
	
	//*****************************************************************
	// MARK: - Table View Methods
	//*****************************************************************
	
	// task: determinar la cantidad de filas que contendrá la tabla
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1000
	}
	
	
	
	// task: configurar la celda de la tabla
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		// configura la celda reutilizable
		let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
		
		// index path: representa la ubicación de la celda (su "dirección")
		if let label = cell.viewWithTag(1000) as? UILabel {
			

			if indexPath.row % 5 == 0 {
				label.text = "Take a jog"
			} else if  indexPath.row % 4 == 0  {
				label.text = "Watch a movie"
			}
			else if indexPath.row % 3 == 0  {
				label.text = "Code an app"
			}
			else if indexPath.row % 4 == 0  {
				label.text = "Walk the dog"
			}
			else if indexPath.row % 5 == 0  {
				label.text = "Study design patterns"
			}
		}
		
		
		//devuelve la celda ya configurada
		return cell
		
	}

	
	// task: ejecutar una lógica si una fila es seleccionada
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		// se asegura de que haya celdas
		if let cell = tableView.cellForRow(at: indexPath) {
			
			// si la celca no tiene un checkmark, ponérselo
			if cell.accessoryType == .none {
				cell.accessoryType = .checkmark
				// sino, sacarlo
			} else {
				cell.accessoryType = .none
			}
		}
	}
	
	

} // end class



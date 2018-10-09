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
		return 5
	}
	
	
	
	// task: configurar la celda de la tabla
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		// configura la celda reutilizable
		let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
		
		// index path: representa la ubicación de la celda (su "dirección")
		if let label = cell.viewWithTag(1000) as? UILabel {
			if indexPath.row == 0 {
				label.text = "Run a marathon"
			} else {
				label.text = "Sleep"
			}
		}
		
		
		//devuelve la celda ya configurada
		return cell
		
	}


}



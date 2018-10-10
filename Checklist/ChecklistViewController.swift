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
	
	/// Model
	var row0Item: ChecklistItem
	var row1Item: ChecklistItem
	var row2Item: ChecklistItem
	var row3Item: ChecklistItem
	var row4Item: ChecklistItem
	var todoList: TodoList

	
	required init?(coder aDecoder: NSCoder) {
		row0Item = ChecklistItem()
		row1Item = ChecklistItem()
		row2Item = ChecklistItem()
		row3Item = ChecklistItem()
		row4Item = ChecklistItem()
		
		// pone texto sobre cada item
		row0Item.text = "Take a jog"
		row1Item.text = "Watch a movie"
		row2Item.text = "Code an app"
		row3Item.text = "Walk the dog"
		row4Item.text = "Study design patterns"
		
		// ahora todos los 'to do list items' están encapsulados en la propiedad ´todoList´
		todoList = TodoList()

		super.init(coder: aDecoder)
	}
	
	
	//*****************************************************************
	// MARK: - VC Lifecyle
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
			
			// le asigna a cada una de las 5 filas un texto determinado
			if indexPath.row == 0 {
				label.text = row0Item.text
			} else if  indexPath.row == 1  {
				label.text = row1Item.text
			}
			else if indexPath.row == 2  {
				label.text = row2Item.text
			}
			else if indexPath.row == 3 {
				label.text = row3Item.text
			}
			else if indexPath.row == 4  {
				label.text = row4Item.text
			}
		}
		
		configureCheckmark(for: cell, at: indexPath)
		
		//devuelve la celda ya configurada
		return cell
		
	}

	
	// task: ejecutar una lógica si una fila es seleccionada
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		// se asegura de que haya celdas
		if let cell = tableView.cellForRow(at: indexPath) {
			configureCheckmark(for: cell, at: indexPath)
		}
	
	}
	
	// task: configurar el ✔️ según cual celda sea tapeada
	func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
		
			// index path row 0
			if indexPath.row == 0 {
				
					if row0Item.checked {
						cell.accessoryType = .none
					} else {
						cell.accessoryType = .checkmark
					}
					row0Item.checked = !row0Item.checked
				
				// index path row 1
				} else if indexPath.row == 1 {
					if row1Item.checked {
						cell.accessoryType = .none
					} else {
						cell.accessoryType = .checkmark
					}
					row1Item.checked = !row1Item.checked
				
				// index path row 2
				} else if indexPath.row == 2 {
					if row2Item.checked {
						cell.accessoryType = .none
					} else {
						cell.accessoryType = .checkmark
					}
					row2Item.checked = !row2Item.checked
				
				// index path row 3
				} else if indexPath.row == 3 {
					if row3Item.checked {
						cell.accessoryType = .none
					} else {
						cell.accessoryType = .checkmark
					}
					row3Item.checked = !row3Item.checked
				
				// index path row 4
				} else if indexPath.row == 4 {
					if row4Item.checked {
						cell.accessoryType = .none
					} else {
						cell.accessoryType = .checkmark
					}
					row4Item.checked = !row4Item.checked
		}
		
		
		
		
		
			//tableView.deselectRow(at: indexPath, animated: true)
			}

	

} // end class



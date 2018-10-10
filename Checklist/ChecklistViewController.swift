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
	var todoList: TodoList

	required init?(coder aDecoder: NSCoder) {
		// todos los 'to do list items' están encapsulados en la propiedad ´todoList´
		todoList = TodoList()
		super.init(coder: aDecoder)
}
	
	
	//*****************************************************************
	// MARK: - Table View Methods
	//*****************************************************************
	
	// task: determinar la cantidad de filas que contendrá la tabla
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return todoList.todos.count
	}
	
	// task: configurar la celda de la tabla
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
			// configura la celda reutilizable
			let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
		
			// index path: representa la ubicación de la celda (su "dirección")
			if let label = cell.viewWithTag(1000) as? UILabel {
				// a cada fila le pasa el texto correspondiente de la 'to do list'
				label.text = todoList.todos[indexPath.row].text
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
		
			//representa el estado de la fila, si está checkeada o no
		let isChecked: Bool = todoList.todos[indexPath.row].checked
		
			if isChecked {
				cell.accessoryType = .none
			} else {
				cell.accessoryType = .checkmark

		}
		// chequea o no chequea la fila de acuerdo al estado contrario en la que está
		todoList.todos[indexPath.row].checked = !isChecked
	}


} // end class



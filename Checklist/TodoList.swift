//
//  TodoList.swift
//  Checklist
//
//  Created by Luciano Schillagi on 10/10/2018.
//  Copyright © 2018 luko. All rights reserved.
//

/* Model */

import Foundation

/* Abstract:
Un objeto para almacenar todo los ´to do list items´.
*/

class TodoList {
	
	// el array para almacenar los 'to do items'
	var todos: [ChecklistItem] = []
	
	init() {
		let row0Item = ChecklistItem()
		let row1Item = ChecklistItem()
		let row2Item = ChecklistItem()
		let row3Item = ChecklistItem()
		let row4Item = ChecklistItem()
		
		// pone texto sobre cada item
		row0Item.text = "Take a jog"
		row1Item.text = "Watch a movie"
		row2Item.text = "Code an app"
		row3Item.text = "Walk the dog"
		row4Item.text = "Study design patterns"
		
		// agregar cada item al array 'todos'
		todos.append(row0Item)
		todos.append(row1Item)
		todos.append(row2Item)
		todos.append(row3Item)
		todos.append(row4Item)

	}
	
	
	
}


import UIKit


// cada objeto que implemente este protocolo tendrá acceso a la funcionalidad que provee
protocol Persist {
	
	func save()
	
}

// crea dos objetos no relacionados que implementan el mismo protocolo

class Monster: Persist {
	
	func save() {
		print("Monster save")
	}
	
}

class Sword: Persist {
	
	func save() {
		print("Sword save")
	}
	
}


let monster = Monster()
let sword = Sword()

let items: [Persist] = [monster, sword]


class GameManager {
	
	func saveLevel(_ items: [Persist]) {
		
		for item in items {
			item.save()
		}
	}
}

let gameMananger = GameManager()
gameMananger.saveLevel(items)






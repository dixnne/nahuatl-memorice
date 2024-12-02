// title:   La Ruta de Aztlan
// author:  Diana Narvaez - Sergio
// desc:    Memorice Nahuatl
// site:    github.com/dixnne/nahuatl-memorice
// license: MIT License (change this to your license of choice)
// version: 0.1
// script:  wren

class Cards {
	static pos { [
		{ x1: 11, y1: 4, x2: 15, y2: 5 },
		{ x1: 17, y1: 4, x2: 21, y2: 5 },
		{ x1: 23, y1: 4, x2: 27, y2: 5 },
		{ x1: 11, y1: 7, x2: 15, y2: 8 },
		{ x1: 17, y1: 7, x2: 21, y2: 8 },
		{ x1: 23, y1: 7, x2: 21, y2: 8 },
		{ x1: 11, y1: 10, x2: 15, y2: 11 },
		{ x1: 17, y1: 10, x2: 21, y2: 11 },
		{ x1: 23, y1: 10, x2: 27, y2: 11 },
		{ x1: 11, y1: 13, x2: 15, y2: 14 },
		{ x1: 17, y1: 13, x2: 21, y2: 14 },
		{ x1: 23, y1: 13, x2: 15, y2: 27 }
	]}
}

class Pairs {
	numbers {[
		{ spanish: "UNO", nahuatl: "CE", english: "ONE" },
		{ spanish: "DOS", nahuatl: "OME", english: "TWO" },
		{ spanish: "TRES", nahuatl: "YEI", english: "THREE" },
		{ spanish: "CUATRO", nahuatl: "NAHUI", english: "FOUR" },
		{ spanish: "CINCO", nahuatl: "MACUILLI", english: "FIVE" },
		{ spanish: "SEIS", nahuatl: "CHICUACE", english: "SIX" },
		{ spanish: "SIETE", nahuatl: "CHICOME", english: "SEVEN" },
		{ spanish: "OCHO", nahuatl: "CHICUEI", english: "EIGHT" },
		{ spanish: "NUEVE", nahuatl: "CHICONAHUI", english: "NINE" },
		{ spanish: "DIEZ", nahuatl: "MAHTLACTLI", english: "TEN" },
		{ spanish: "ONCE", nahuatl: "MAHTLACTLI HUAN CE", english: "ELEVEN" },
		{ spanish: "DOCE", nahuatl: "MAHTLACTLI HUAN OME", english: "TWELVE" },
		{ spanish: "TRECE", nahuatl: "MAHTLACTLI HUAN YEI", english: "THIRTEEN" },
		{ spanish: "CATORCE", nahuatl: "MAHTLACTLI HUAN NAHUI", english: "FOURTEEN" },
		{ spanish: "QUINCE", nahuatl: "CAXTOLLI", english: "FIFTEEN" },
		{ spanish: "VEINTE", nahuatl: "CEMPOALLI", english: "TWENTY" },
		{ spanish: "TREINTA", nahuatl: "MAHTLACTLI OM POALLI", english: "THIRTY" },
		{ spanish: "CUARENTA", nahuatl: "CEMPOALHUAN", english: "FORTY" },
		{ spanish: "CINCUENTA", nahuatl: "CAXTOLPOALHUAN", english: "FIFTY" },
		{ spanish: "SESENTA", nahuatl: "CHICUACEMPOALHUAN", english: "SIXTY" },
		{ spanish: "SETENTA", nahuatl: "CHICOMEPOALHUAN", english: "SEVENTY" },
		{ spanish: "OCHENTA", nahuatl: "CHICUEPOALHUAN", english: "EIGHTY" },
		{ spanish: "NOVENTA", nahuatl: "CHICONAUPOALHUAN", english: "NINETY" },
		{ spanish: "CIEN", nahuatl: "CENTZONTLI", english: "ONE HUNDRED" },
		{ spanish: "DOCE", nahuatl: "HUETZI", english: "TWELVE" }, // Variante cultural
		{ spanish: "VEINTICUATRO", nahuatl: "HUEYI", english: "TWENTY-FOUR" },
		{ spanish: "TREINTA Y SEIS", nahuatl: "XOCHITL", english: "THIRTY-SIX" },
		{ spanish: "CUARENTA Y OCHO", nahuatl: "CITLALLI", english: "FORTY-EIGHT" },
		{ spanish: "SESENTA", nahuatl: "TONATIUH", english: "SIXTY" }, // Repetición cultural
		{ spanish: "SETENTA Y DOS", nahuatl: "MIXTLI", english: "SEVENTY-TWO" }
	]}
	
	months {[
		{ spanish: "ENERO", nahuatl: "ATLACAHUALO", english: "JANUARY" },
		{ spanish: "FEBRERO", nahuatl: "TLACAXIPEHUALIZTLI", english: "FEBRUARY" },
		{ spanish: "MARZO", nahuatl: "TOZOZTONTLI", english: "MARCH" },
		{ spanish: "ABRIL", nahuatl: "HUEYTOZOZTLTI", english: "APRIL" },
		{ spanish: "MAYO", nahuatl: "TOXCATL", english: "MAY" },
		{ spanish: "JUNIO", nahuatl: "ETZALCUALIZTLI", english: "JUNE" },
		{ spanish: "JULIO", nahuatl: "TECUILHUITONTLI", english: "JULY" },
		{ spanish: "AGOSTO", nahuatl: "HUEYTECUIHUITL", english: "AUGUST" },
		{ spanish: "SEPTIEMBRE", nahuatl: "TLAXOCHIMACO", english: "SEPTEMBER" },
		{ spanish: "OCTUBRE", nahuatl: "XOCOTLHUETZI", english: "OCTOBER" },
		{ spanish: "NOVIEMBRE", nahuatl: "OCHPANIZTLI", english: "NOVEMBER" },
		{ spanish: "DICIEMBRE", nahuatl: "TEPEILHUITL", english: "DECEMBER" }
	]}
	
	days {[
		{ spanish: "DOMINGO", nahuatl: "TONALLI", english: "SUNDAY" },
		{ spanish: "LUNES", nahuatl: "HUEYECAC", english: "MONDAY" },
		{ spanish: "MARTES", nahuatl: "MECATL", english: "TUESDAY" },
		{ spanish: "MIERCOLES", nahuatl: "XOCHITL", english: "WEDNESDAY" },
		{ spanish: "JUEVES", nahuatl: "OCELOTL", english: "THURSDAY" },
		{ spanish: "VIERNES", nahuatl: "CUAUHTLI", english: "FRIDAY" },
		{ spanish: "SABADO", nahuatl: "NAHUI EHECATL", english: "SATURDAY" }
	]}
	
	colors {[
		{ spanish: "ROJO", nahuatl: "CHICHILTIK", english: "RED" },
		{ spanish: "AZUL", nahuatl: "TLALPUITLIC", english: "BLUE" },
		{ spanish: "VERDE", nahuatl: "XOXOCTIC", english: "GREEN" },
		{ spanish: "AMARILLO", nahuatl: "COZAUHQUI", english: "YELLOW" },
		{ spanish: "BLANCO", nahuatl: "IZTAC", english: "WHITE" },
		{ spanish: "NEGRO", nahuatl: "TLILTIK", english: "BLACK" },
		{ spanish: "MARRON", nahuatl: "CUICUILTIC", english: "BROWN" },
		{ spanish: "PURPURA", nahuatl: "TEXOTLIC", english: "PURPLE" },
		{ spanish: "GRIS", nahuatl: "TEMACHTLI", english: "GRAY" },
		{ spanish: "NARANJA", nahuatl: "XOCHIPALLI", english: "ORANGE" },
		{ spanish: "ROSA", nahuatl: "TEOCUITLATL", english: "PINK" },
		{ spanish: "TURQUESA", nahuatl: "MATLATIC", english: "TURQUOISE" }
	]}

	bodyParts {[
		{ spanish: "CABEZA", nahuatl: "CUAITL", english: "HEAD" },
		{ spanish: "OJO", nahuatl: "IXTLI", english: "EYE" },
		{ spanish: "BOCA", nahuatl: "TZONTECOMATL", english: "MOUTH" },
		{ spanish: "OREJA", nahuatl: "NANTLI", english: "EAR" },
		{ spanish: "NARIZ", nahuatl: "YACATL", english: "NOSE" },
		{ spanish: "MANO", nahuatl: "MATI", english: "HAND" },
		{ spanish: "PIERNA", nahuatl: "XOCOTL", english: "LEG" },
		{ spanish: "BRAZO", nahuatl: "MAQUETL", english: "ARM" },
		{ spanish: "PIE", nahuatl: "CALTZIN", english: "FOOT" },
		{ spanish: "CORAZON", nahuatl: "YOLLOTL", english: "HEART" },
		{ spanish: "ESPALDA", nahuatl: "TONATIUH", english: "BACK" },
		{ spanish: "HUESO", nahuatl: "TLAPALLI", english: "BONE" }
	]}
	
	actions {[
		{ spanish: "COMER", nahuatl: "TLACUA", english: "EAT" },
		{ spanish: "BEBER", nahuatl: "TOMI", english: "DRINK" },
		{ spanish: "CAMINAR", nahuatl: "OHUAYA", english: "WALK" },
		{ spanish: "DORMIR", nahuatl: "TLAOYO", english: "SLEEP" },
		{ spanish: "HABlar", nahuatl: "TLAHTOA", english: "SPEAK" },
		{ spanish: "CORRER", nahuatl: "PATLANI", english: "RUN" },
		{ spanish: "LEER", nahuatl: "TLAPOHUA", english: "READ" },
		{ spanish: "ESCRIBIR", nahuatl: "TLACUILOA", english: "WRITE" },
		{ spanish: "BAILAR", nahuatl: "KUIKA", english: "DANCE" },
		{ spanish: "CANTAR", nahuatl: "TLATOA", english: "SING" },
		{ spanish: "JUGAR", nahuatl: "TLACHIA", english: "PLAY" },
		{ spanish: "TRABAJAR", nahuatl: "TEQUITI", english: "WORK" },
		{ spanish: "AMAR", nahuatl: "TLAZOHTLA", english: "LOVE" },
		{ spanish: "ODIAR", nahuatl: "AYOTLI", english: "HATE" },
		{ spanish: "AYUDAR", nahuatl: "TEQUIPANOA", english: "HELP" },
		{ spanish: "ESCUCHAR", nahuatl: "TLAKATILI", english: "LISTEN" },
		{ spanish: "VER", nahuatl: "ITLAHTOA", english: "SEE" },
		{ spanish: "ENSENAR", nahuatl: "TLAHUELILOCAYOTL", english: "TEACH" },
		{ spanish: "PENSAR", nahuatl: "PAPATLACA", english: "THINK" },
		{ spanish: "SENTIR", nahuatl: "YOLI", english: "FEEL" },
		{ spanish: "RECORDAR", nahuatl: "TLAPOHUA", english: "REMEMBER" },
		{ spanish: "OLVIDAR", nahuatl: "CUALANI", english: "FORGET" },
		{ spanish: "ENCONTRAR", nahuatl: "HUETZCA", english: "FIND" },
		{ spanish: "PERDER", nahuatl: "ITLAQUI", english: "LOSE" },
		{ spanish: "CREAR", nahuatl: "TLAHUILOA", english: "CREATE" },
		{ spanish: "DESTRUIR", nahuatl: "CHALLI", english: "DESTROY" },
		{ spanish: "CONSTRUIR", nahuatl: "KUITLA", english: "BUILD" },
		{ spanish: "LIMPIAR", nahuatl: "CHIKAUA", english: "CLEAN" },
		{ spanish: "CUIDAR", nahuatl: "TLAMATI", english: "CARE" },
		{ spanish: "CAMBIAR", nahuatl: "TLAHUIZPANTA", english: "CHANGE" }
	]}

	randomInt(min, max) {
        return (System.random * (max - min + 1)).floor + min
    }

	static getCards(level) {
		var cards = []
		
		if (level == "numbers") {
			var tempArray = numbers.toList()
		} else if (level == "months") {
			var tempArray = months.toList()
		} else if (level == "days") {
			var tempArray = days.toList()
		} else if (level == "colors") {
			var tempArray = colors.toList()
		} else if (level == "bodyParts") {
			var tempArray = bodyParts.toList()
		} else if (level == "actions") {
			var tempArray = actions.toList()
		}

		for (i in 0...6) {
            var randomIndex = randomInt(0, tempArray.count - 1)
            cards.add(tempArray.removeAt(randomIndex))
        }
		
		return cards
	}
}

class Game is TIC{
	selectedCards {[]}
	matches {[]}
	delayCounter {0}
	initialized {false}

	construct new(){
		
	}
	
	shuffle(array) {
        var n = array.count
        for (i in 0...(n - 1)) {
            var j = (System.random * n).floor // Random index
            array.swap(i, j) // Swap elements at indices i and j
        }
    }

	prepareGame() {
		var allWords = []
		var pairs = Pairs.getCards("numbers")
		for (word in pairs) {
			allWords.add({ text: word["spanish"], pair: word["nahuatl"] })
			allWords.add({ text: word["nahuatl"], pair: word["spanish"] })
		}
		shuffle(allWords)
		for (i in 0...(Cards.pos.count - 1)) {
			Cards.pos[i].word = allWords[i]
		}
	}

	initGame() {
		prepareGame()
		for (card in Cards.pos) {
			resetCard(card)
		}
	}

	updateGame() {
		if (delayCounter > 0) {
			delayCounter = delayCounter - 1
			if (delayCounter == 0) {
				// If not a match, hide the Cards.pos
				for (index in selectedCards) {
					resetCard(Cards.pos[index])
				}
				selectedCards = []
			}
			return
		}

		var mx = mouseX()
		var my = mouseY()
		var left = mouseButton(0)

		if (left && selectedCards.count < 2) {
			for (i in 0...(Cards.pos.count - 1)) {
				var card = Cards.pos[i]
				if (mx >= card["x1"] * 8 && mx <= card["x2"] * 8 && my >= card["y1"] * 8 && my <= card["y2"] * 8) {
					if (!isMatched(i) && !inSelectedCards(i)) {
						selectedCards.add(i)
						flipCard(card)
					}

					if (selectedCards.count == 2) {
						var card1 = Cards.pos[selectedCards[0]]
						var card2 = Cards.pos[selectedCards[1]]
						if (card1.word.text == card2.word.pair || card2.word.text == card1.word.pair) {
							// They are a match, keep visible
							matches.add(selectedCards[0])
							matches.add(selectedCards[1])
							selectedCards = []
						} else {
							// Not a match, delay
							delayCounter = 60
						}
					}
					break
				}
			}
		}
	}

	drawGame() {
		cls(0)
		map(0, 0, 30, 17, 0, 0)

		for (card in Cards.pos) {
			if (mget(card["x1"], card["y1"]) != 0) {
				var text = card.word.text
				var maxWidth = (card["x2"] - card["x1"] + 1) * 8
				var xCenter = card["x1"] * 8 + (maxWidth - text.count * 6) / 2
				var yCenter = card["y1"] * 8 + 4
				print(text, xCenter, yCenter, 7)
			}
		}

		if (matches.count == Cards.pos.count) {
			print("¡Ganaste!", 90, 125, 12)
		}
	}


	
	TIC(){
		if (!initialized) {
			initGame()
			initialized = true
		}
		updateGame()
		drawGame()
	}

	flipCard(card) {
		for (x in card["x1"]..card["x2"]) {
			for (y in card["y1"]..card["y2"]) {
				mset(x, y, 1)
			}
		}
	}

	resetCard(card) {
		for (x in card["x1"]..card["x2"]) {
			for (y in card["y1"]..card["y2"]) {
				mset(x, y, 0)
			}
		}
	}

	isMatched(index) {
		for (match in matches) {
			if (match == index) {
				return true
			}
		}
		return false
	}

	inSelectedCards(index) {
		for (selected in selectedCards) {
			if (selected == index) {
				return true
			}
		}
		return false
	}

}

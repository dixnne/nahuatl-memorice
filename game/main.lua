-- title: Aztlan: Las Islas del Saber
-- author: Diana Narvaez - Sergio
-- desc: Memorice Nahuatl
-- site: github.com/dixnne/nahuatl-memorice
-- license: 
-- version: 0.1
-- script: lua
-- input: mouse

time_limit = 60 -- Tiempo límite en segundos
remaining_time = time_limit

current_music = nil


-- Game data for pairs in spanish, nahuatl and english
numbers = {
    { spanish = "UNO", nahuatl = "CE", english = "ONE" },
    { spanish = "DOS", nahuatl = "OME", english = "TWO" },
    { spanish = "TRES", nahuatl = "YEI", english = "THREE" },
    { spanish = "CUATRO", nahuatl = "NAHUI", english = "FOUR" },
    { spanish = "CINCO", nahuatl = "MACUILLI", english = "FIVE" },
    { spanish = "SEIS", nahuatl = "CHICUACE", english = "SIX" },
    { spanish = "SIETE", nahuatl = "CHICOME", english = "SEVEN" },
    { spanish = "OCHO", nahuatl = "CHICUEI", english = "EIGHT" },
    { spanish = "NUEVE", nahuatl = "CHICONAHUI", english = "NINE" },
    { spanish = "DIEZ", nahuatl = "MAHTLACTLI", english = "TEN" },
    { spanish = "ONCE", nahuatl = "MAHTLACTLI HUAN CE", english = "ELEVEN" },
    { spanish = "DOCE", nahuatl = "MAHTLACTLI HUAN OME", english = "TWELVE" },
    { spanish = "TRECE", nahuatl = "MAHTLACTLI HUAN YEI", english = "THIRTEEN" },
    { spanish = "CATORCE", nahuatl = "MAHTLACTLI HUAN NAHUI", english = "FOURTEEN" },
    { spanish = "QUINCE", nahuatl = "CAXTOLLI", english = "FIFTEEN" },
    { spanish = "VEINTE", nahuatl = "CEMPOALLI", english = "TWENTY" },
    { spanish = "TREINTA", nahuatl = "MAHTLACTLI OM POALLI", english = "THIRTY" },
    { spanish = "CUARENTA", nahuatl = "CEMPOALHUAN", english = "FORTY" },
    { spanish = "CINCUENTA", nahuatl = "CAXTOLPOALHUAN", english = "FIFTY" },
    { spanish = "SESENTA", nahuatl = "CHICUACEMPOALHUAN", english = "SIXTY" },
    { spanish = "SETENTA", nahuatl = "CHICOMEPOALHUAN", english = "SEVENTY" },
    { spanish = "OCHENTA", nahuatl = "CHICUEPOALHUAN", english = "EIGHTY" },
    { spanish = "NOVENTA", nahuatl = "CHICONAUPOALHUAN", english = "NINETY" },
    { spanish = "CIEN", nahuatl = "CENTZONTLI", english = "ONE HUNDRED" },
    { spanish = "DOCE", nahuatl = "HUETZI", english = "TWELVE" }, -- Variante cultural
    { spanish = "VEINTICUATRO", nahuatl = "HUEYI", english = "TWENTY-FOUR" },
    { spanish = "TREINTA Y SEIS", nahuatl = "XOCHITL", english = "THIRTY-SIX" },
    { spanish = "CUARENTA Y OCHO", nahuatl = "CITLALLI", english = "FORTY-EIGHT" },
    { spanish = "SESENTA", nahuatl = "TONATIUH", english = "SIXTY" }, -- Repetición cultural
    { spanish = "SETENTA Y DOS", nahuatl = "MIXTLI", english = "SEVENTY-TWO" }
}

months = {
    { spanish = "ENERO", nahuatl = "ATLACAHUALO", english = "JANUARY" },
    { spanish = "FEBRERO", nahuatl = "TLACAXIPEHUALIZTLI", english = "FEBRUARY" },
    { spanish = "MARZO", nahuatl = "TOZOZTONTLI", english = "MARCH" },
    { spanish = "ABRIL", nahuatl = "HUEYTOZOZTLTI", english = "APRIL" },
    { spanish = "MAYO", nahuatl = "TOXCATL", english = "MAY" },
    { spanish = "JUNIO", nahuatl = "ETZALCUALIZTLI", english = "JUNE" },
    { spanish = "JULIO", nahuatl = "TECUILHUITONTLI", english = "JULY" },
    { spanish = "AGOSTO", nahuatl = "HUEYTECUIHUITL", english = "AUGUST" },
    { spanish = "SEPTIEMBRE", nahuatl = "TLAXOCHIMACO", english = "SEPTEMBER" },
    { spanish = "OCTUBRE", nahuatl = "XOCOTLHUETZI", english = "OCTOBER" },
    { spanish = "NOVIEMBRE", nahuatl = "OCHPANIZTLI", english = "NOVEMBER" },
    { spanish = "DICIEMBRE", nahuatl = "TEPEILHUITL", english = "DECEMBER" }
}

days = {
    { spanish = "DOMINGO", nahuatl = "TONALLI", english = "SUNDAY" },
    { spanish = "LUNES", nahuatl = "HUEYECAC", english = "MONDAY" },
    { spanish = "MARTES", nahuatl = "MECATL", english = "TUESDAY" },
    { spanish = "MIERCOLES", nahuatl = "XOCHITL", english = "WEDNESDAY" },
    { spanish = "JUEVES", nahuatl = "OCELOTL", english = "THURSDAY" },
    { spanish = "VIERNES", nahuatl = "CUAUHTLI", english = "FRIDAY" },
    { spanish = "SABADO", nahuatl = "NAHUI EHECATL", english = "SATURDAY" }
}

colors = {
    { spanish = "ROJO", nahuatl = "CHICHILTIK", english = "RED" },
    { spanish = "AZUL", nahuatl = "TLALPUITLIC", english = "BLUE" },
    { spanish = "VERDE", nahuatl = "XOXOCTIC", english = "GREEN" },
    { spanish = "AMARILLO", nahuatl = "COZAUHQUI", english = "YELLOW" },
    { spanish = "BLANCO", nahuatl = "IZTAC", english = "WHITE" },
    { spanish = "NEGRO", nahuatl = "TLILTIK", english = "BLACK" },
    { spanish = "MARRON", nahuatl = "CUICUILTIC", english = "BROWN" },
    { spanish = "PURPURA", nahuatl = "TEXOTLIC", english = "PURPLE" },
    { spanish = "GRIS", nahuatl = "TEMACHTLI", english = "GRAY" },
    { spanish = "NARANJA", nahuatl = "XOCHIPALLI", english = "ORANGE" },
    { spanish = "ROSA", nahuatl = "TEOCUITLATL", english = "PINK" },
    { spanish = "TURQUESA", nahuatl = "MATLATIC", english = "TURQUOISE" }
}

bodyParts = {
    { spanish = "CABEZA", nahuatl = "CUAITL", english = "HEAD" },
    { spanish = "OJO", nahuatl = "IXTLI", english = "EYE" },
    { spanish = "BOCA", nahuatl = "TZONTECOMATL", english = "MOUTH" },
    { spanish = "OREJA", nahuatl = "NANTLI", english = "EAR" },
    { spanish = "NARIZ", nahuatl = "YACATL", english = "NOSE" },
    { spanish = "MANO", nahuatl = "MATI", english = "HAND" },
    { spanish = "PIERNA", nahuatl = "XOCOTL", english = "LEG" },
    { spanish = "BRAZO", nahuatl = "MAQUETL", english = "ARM" },
    { spanish = "PIE", nahuatl = "CALTZIN", english = "FOOT" },
    { spanish = "CORAZON", nahuatl = "YOLLOTL", english = "HEART" },
    { spanish = "ESPALDA", nahuatl = "TONATIUH", english = "BACK" },
    { spanish = "HUESO", nahuatl = "TLAPALLI", english = "BONE" }
}

verbs = {
    { spanish = "COMER", nahuatl = "TLACUA", english = "EAT" },
    { spanish = "BEBER", nahuatl = "TOMI", english = "DRINK" },
    { spanish = "CAMINAR", nahuatl = "OHUAYA", english = "WALK" },
    { spanish = "DORMIR", nahuatl = "TLAOYO", english = "SLEEP" },
    { spanish = "HABLAR", nahuatl = "TLAHTOA", english = "SPEAK" },
    { spanish = "CORRER", nahuatl = "PATLANI", english = "RUN" },
    { spanish = "LEER", nahuatl = "TLAPOHUA", english = "READ" },
    { spanish = "ESCRIBIR", nahuatl = "TLACUILOA", english = "WRITE" },
    { spanish = "BAILAR", nahuatl = "KUIKA", english = "DANCE" },
    { spanish = "CANTAR", nahuatl = "TLATOA", english = "SING" },
    { spanish = "JUGAR", nahuatl = "TLACHIA", english = "PLAY" },
    { spanish = "TRABAJAR", nahuatl = "TEQUITI", english = "WORK" },
    { spanish = "AMAR", nahuatl = "TLAZOHTLA", english = "LOVE" },
    { spanish = "ODIAR", nahuatl = "AYOTLI", english = "HATE" },
    { spanish = "AYUDAR", nahuatl = "TEQUIPANOA", english = "HELP" },
    { spanish = "ESCUCHAR", nahuatl = "TLAKATILI", english = "LISTEN" },
    { spanish = "VER", nahuatl = "ITLAHTOA", english = "SEE" },
    { spanish = "ENSEÑAR", nahuatl = "TLAHUELILOCAYOTL", english = "TEACH" },
    { spanish = "PENSAR", nahuatl = "PAPATLACA", english = "THINK" },
    { spanish = "SENTIR", nahuatl = "YOLI", english = "FEEL" },
    { spanish = "RECORDAR", nahuatl = "TLAPOHUA", english = "REMEMBER" },
    { spanish = "OLVIDAR", nahuatl = "CUALANI", english = "FORGET" },
    { spanish = "ENCONTRAR", nahuatl = "HUETZCA", english = "FIND" },
    { spanish = "PERDER", nahuatl = "ITLAQUI", english = "LOSE" },
    { spanish = "CREAR", nahuatl = "TLAHUILOA", english = "CREATE" },
    { spanish = "DESTRUIR", nahuatl = "CHALLI", english = "DESTROY" },
    { spanish = "CONSTRUIR", nahuatl = "KUITLA", english = "BUILD" },
    { spanish = "LIMPIAR", nahuatl = "CHIKAUA", english = "CLEAN" },
    { spanish = "CUIDAR", nahuatl = "TLAMATI", english = "CARE" },
    { spanish = "CAMBIAR", nahuatl = "TLAHUIZPANTA", english = "CHANGE" }
}

-- Memorice cards positions in the map
cards = {
    {x1 = 11, y1 = 1, x2 = 15, y2 = 3},
    {x1 = 17, y1 = 1, x2 = 21, y2 = 3},
    {x1 = 11, y1 = 5, x2 = 15, y2 = 7},
    {x1 = 17, y1 = 5, x2 = 21, y2 = 7},
    {x1 = 11, y1 = 9, x2 = 15, y2 = 11},
    {x1 = 17, y1 = 9, x2 = 21, y2 = 11},
    {x1 = 11, y1 = 13, x2 = 15, y2 = 15},
    {x1 = 17, y1 = 13, x2 = 21, y2 = 15},
    {x1 = 23, y1 = 1, x2 = 27, y2 = 3},
    {x1 = 23, y1 = 5, x2 = 27, y2 = 7},
    {x1 = 23, y1 = 9, x2 = 27, y2 = 11},
    {x1 = 23, y1 = 13, x2 = 27, y2 = 15},
}

selected_cards = {}
matches = {}
delay_counter = 0
started = false
first_lang_chosen = false
second_lang_chosen = false
delay_screen = 5
level = ""
level_chosen = false
current_narration = 1
narration_ended = false


function reset_game()
    -- Reinicia las variables clave del juego
    selected_cards = {}
    matches = {}
    delay_counter = 0
    initialized = false
    level_chosen = false
    level = ""
    remaining_time = time_limit -- Reinicia el temporizador

    -- Regresa al menú principal
    -- started = false
    -- first_lang_chosen = false
    -- second_lang_chosen = false
end


-- Shuffle an array
function shuffle(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
end

-- Generar índices aleatorios únicos
function shuffle_indices(max, count)
    local indices = {}
    for i = 1, max do
        table.insert(indices, i)
    end
    shuffle(indices) -- Mezclamos los índices
    local result = {}
    for i = 1, count do
        table.insert(result, indices[i])
    end
    return result
end

-- Preparar el juego seleccionando 6 pares únicos
function prepare_game(island)
    -- Seleccionamos 6 palabras únicas
    local selected_words = {}
    for _, index in ipairs(shuffle_indices(#island, 6)) do
        table.insert(selected_words, island[index])
    end

    -- Creamos los pares de palabras
    local all_words = {}
    for _, word in ipairs(selected_words) do
        table.insert(all_words, {text = word[first_lang], pair = word[second_lang]})
        table.insert(all_words, {text = word[second_lang], pair = word[first_lang]})
    end

    -- Mezclamos los pares y asignamos a las cartas
    shuffle(all_words)
    for i, card in ipairs(cards) do
        card.word = all_words[i]
    end
end

function play_music(track)
    if current_music ~= track then
        music(track) -- Reproducir el patrón de música
        current_music = track
    end
end



function init_game()
 
    if level == "numbers" then
        prepare_game(numbers)
    end
    if level == "months" then
        prepare_game(months)
    end
    if level == "days" then
        prepare_game(days)
    end
    if level == "colors" then
        prepare_game(colors)
    end
    if level == "bodyParts" then
        prepare_game(bodyParts)
    end
    if level == "verbs" then
        prepare_game(verbs)
    end

    for _, card in pairs(cards) do
        reset_card(card)
    end
end



function update_game()
    play_music(3)
    -- Actualizar el temporizador
    if remaining_time > 0 and #matches < #cards then
        remaining_time = remaining_time - 1 / 60 -- Descuenta tiempo
        if remaining_time <= 0 then
            -- Acción cuando se acaba el tiempo
            print("¡Se acabó el tiempo!", 50, 60, 12)
            reset_game() -- Llama a la función para reiniciar el juego
            return
        end
    end

    -- Manejo de retraso al voltear cartas
    if delay_counter > 0 then
        delay_counter = delay_counter - 1
        if delay_counter == 0 then
            -- Si no son un par, oculta las cartas
            for _, index in pairs(selected_cards) do
                reset_card(cards[index])
            end
            selected_cards = {}
        end
        return
    end

    -- Detección de clics y manejo de selección de cartas
    local mx, my, left = mouse()

    if left and #selected_cards < 2 then
        for i, card in pairs(cards) do
            if mx >= card.x1 * 8 and mx <= card.x2 * 8 and my >= card.y1 * 8 and my <= card.y2 * 8 then
                if not is_matched(i) and not in_selected_cards(i) then
                    table.insert(selected_cards, i)
                    flip_card(card)
                end

                if #selected_cards == 2 then
                    local card1 = cards[selected_cards[1]]
                    local card2 = cards[selected_cards[2]]
                    
                    if card1.word.text == card2.word.pair or card2.word.text == card1.word.pair then
                        -- Son un par: reproducir sonido de acierto
                        table.insert(matches, selected_cards[1])
                        table.insert(matches, selected_cards[2])
                        sfx(0) -- Reproducir sonido de match
                        selected_cards = {}
                    else
                        -- No son un par: reproducir sonido de falla
                        sfx(1) -- Reproducir sonido de fail
                        delay_counter = 60 -- Inicia retraso antes de voltearlas
                    end
                end
                
                break
            end
        end
    end
end


-- Dibujar palabras dentro de las cartas
function draw_text_wrapped(text, x, y, max_width, max_height)
    local char_width = 6 -- Ancho de cada carácter
    local line_height = 6 -- Altura de cada línea
    local max_chars_per_line = math.floor(max_width / char_width) -- Máximo de caracteres por línea
    local lines = {} -- Lista de líneas

    -- Dividir el texto en líneas
    while #text > 0 do
        if #text > max_chars_per_line then
            table.insert(lines, text:sub(1, max_chars_per_line))
            text = text:sub(max_chars_per_line + 1)
        else
            table.insert(lines, text)
            break
        end
    end

    -- Calcular el espacio necesario para centrar verticalmente
    local total_height = #lines * line_height
    local y_start = y + (max_height - total_height) / 2

    -- Dibujar las líneas centradas horizontalmente
    for i, line in ipairs(lines) do
        local line_width = #line * char_width
        local x_center = x + (max_width - line_width) / 2
        print(line, x_center, y_start + (i - 1) * line_height, 7)
    end
end

function get_level_offset()
    if level == "numbers" then return 0 end
    if level == "months" then return 34 end
    if level == "days" then return 17 end
    if level == "colors" then return 85 end
    if level == "bodyParts" then return 68 end
    if level == "verbs" then return 51 end
    return 0
end


function draw_game()
    cls(0)
    if level == "numbers" then
        map(0, 0, 30, 17, 0, 0)
        spr(259, 4 * 8, 5 * 8, 0, 1, 1, 0, 2, 3)
    end
    if level == "months" then
        map(0, 34, 30, 17, 0, 0)
        spr(261, 4 * 8, 3 * 8, 0, 1, 0, 0, 2, 5)
    end
    if level == "days" then
        map(0, 17, 30, 17, 0, 0)
        spr(263, 4 * 8, 4 * 8, 0, 1, 0, 0, 2, 4)
    end
    if level == "colors" then
        map(0, 85, 30, 17, 0, 0)
        spr(265, 4 * 8, 3 * 8, 0, 1, 0, 0, 2, 5)
    end
    if level == "bodyParts" then
        map(0, 68, 30, 17, 0, 0)
        spr(267, 4 * 8, 3 * 8, 0, 1, 0, 0, 2, 5)
    end
    if level == "verbs" then
        map(0, 51, 30, 17, 0, 0)
        spr(269, 4 * 8, 3 * 8, 0, 1, 0, 0, 2, 5)
    end

    -- Mostrar cartas
    for _, card in pairs(cards) do
        local level_offset = get_level_offset()
        if mget(card.x1, card.y1 + level_offset) ~= 0 then
            local text = card.word.text
            local max_width = (card.x2 - card.x1 + 1) * 8
            local max_height = (card.y2 - card.y1 + 1) * 8
            draw_text_wrapped(text, card.x1 * 8, card.y1 * 8, max_width, max_height)
        end
    end
    

    -- Mostrar el temporizador
    local minutes = math.floor(remaining_time / 60)
    local seconds = math.floor(remaining_time % 60)
    print(string.format("Tiempo:%02d:%02d", minutes, seconds), 10, 100, 12)

    -- Verificar si ganó
    if #matches == #cards then
        if first_lang == "spanish" then
            print("Ganaste!", 19, 116, 12)
            spr(336, 3 * 8, 4 * 8, 0, 1, 1, 0, 4, 4)
        end
        if first_lang == "english" then
            print("You win!", 19, 116, 12)
            spr(336, 3 * 8, 4 * 8, 0, 1, 1, 0, 4, 4)
        end
        if first_lang == "nahuatl" then
            print("Ticnemacac!", 19, 116, 12)
            spr(336, 3 * 8, 4 * 8, 0, 1, 1, 0, 4, 4)
        end
    end

    -- Botón de menú
    local button_x, button_y = 226, 3 -- Posición del botón
    local button_width, button_height = 10, 10 -- Tamaño

    -- Dibujar el botón
    rect(button_x, button_y, button_width, button_height, 3) -- Fondo del botón
    print("M", button_x + 3.5, button_y + 3, 15)

    -- Detección de clic en el botón
    local mx, my, left = mouse()
    if left and mx >= button_x and mx <= button_x + button_width and my >= button_y and my <= button_y + button_height then
        -- Reinicia las variables y vuelve a la pantalla principal
        -- started = false
        -- first_lang_chosen = false
        -- second_lang_chosen = false
        -- level_chosen = false
        -- level = ""
        -- initialized = false
        -- remaining_time = time_limit -- Reinicia el temporizador
        reset_game()
    end




end


-- Main screen
function main_screen()
    play_music(0) -- Reproduce la música para la pantalla principal
    cls(0)
    map(30, 17, 30, 17, 0, 0)
    print("Las Islas del Saber", 9.5 * 8, 5 * 8, 2)
    print("Start", 14 * 8, 10 * 8, 0)
    print("© Cacahuate Studios", 9 * 8, 15.5 * 8, 0)

    local mx, my, left = mouse()

    if left and mx >= 12 * 8 and mx <= 19 * 8 and my >= 10 * 8 and my <= 12 * 8 then  
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            left = false
            started = true
            delay_screen = 20
            choose_main_lang()
        end
    end
end

-- First language selection screen
function choose_main_lang()
    cls(0)
    map(60, 0, 30, 17, 0, 0)
    print("Elige un lenguaje", 9 * 8, 3 * 8, 0)
    print("Choose a language", 9 * 8, 4 * 8, 0)
    print("Ticchihua in tlahtolli", 8 * 8, 5 * 8, 0)
    print("Espanol", 4.5 * 8, 11 * 8, 0)
    print("English", 12.5 * 8, 11 * 8, 0)
    print("Nahuatl", 20.5 * 8, 11 * 8, 0)

    local mx, my, left = mouse()

    -- Go back button
    local button_x, button_y = 226, 3 
    local button_width, button_height = 10, 10
    rect(button_x, button_y, button_width, button_height, 3)
    print("<", button_x + 3.5, button_y + 3, 15)
    if left and mx >= button_x and mx <= button_x + button_width and my >= button_y and my <= button_y + button_height then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            started = false
            delay_screen = 10
        end
    end
    
    -- First lang button detections
    if left and mx >= 4 * 8 and mx < 10 * 8 and my >= 9 * 8 and my < 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "spanish"
            delay_screen = 10
            choose_sec_lang()
        end
    end
    if left and mx >= 12 * 8 and mx < 18 * 8 and my >= 9 * 8 and my < 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "english"
            delay_screen = 10
            choose_sec_lang()
        end
    end
    if left and mx >= 20 * 8 and mx < 26 * 8 and my >= 9 * 8 and my < 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "nahuatl"
            delay_screen = 10
            choose_sec_lang()
        end
    end
end

function choose_sec_lang()
    cls(0)
    map(90, 0, 30, 17, 0, 0)
    local messages = {
        spanish = "Elige el lenguaje que quieres aprender",
        english = "Choose the language you want to learn",
        nahuatl = "Ticchihua in tlahtolli ticnequi tlamachtilia"
    }
    local first_option = ""
    local second_option = ""

    -- Options depending on first language chosen
    print(messages[first_lang], 1.5 * 8, 4 * 8, 0)
    if first_lang == "spanish" then
        print("Ingles", 8.5 * 8, 11 * 8, 0)
        first_option = "english"
        print("Nahuatl", 16.5 * 8, 11 * 8, 0)
        second_option = "nahuatl"
    end 
    if first_lang == "english" then
        print("Spanish", 8.5 * 8, 11 * 8, 0)
        first_option = "spanish"
        print("Nahuatl", 16.5 * 8, 11 * 8, 0)
        second_option = "nahuatl"
    end 
    if first_lang == "nahuatl" then
        print("Kastilla", 8.5 * 8, 11 * 8, 0)
        first_option = "spanish"
        print("Inglis", 16.5 * 8, 11 * 8, 0)
        second_option = "english"
    end

    local mx, my, left = mouse()

    -- Go back button
    local button_x, button_y = 226, 3 
    local button_width, button_height = 10, 10
    rect(button_x, button_y, button_width, button_height, 3)
    print("<", button_x + 3.5, button_y + 3, 15)
    if left and mx >= button_x and mx <= button_x + button_width and my >= button_y and my <= button_y + button_height then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = false
            first_lang = ""
            delay_screen = 10
        end
    end

    -- Second lang button detections
    if left and mx >= 8 * 8 and mx < 14 * 8 and my >= 9 * 8 and my < 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            delay_screen = 10
            second_lang_chosen = true
            second_lang = first_option
            narration()
        end
    end
    if left and mx >= 16 * 8 and mx < 22 * 8 and my >= 9 * 8 and my < 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            delay_screen = 10
            second_lang_chosen = true
            second_lang = second_option
            narration()
        end
    end
end

function choose_island()
    -- Reproducir música de las Islas
    play_music(3)
    cls(0)
    map(120, 0, 30, 17, 0, 0)
    
    -- Island names depending on first language
    local numbers_island = {
        spanish = "Isla de los Numeros",
        english = "Island of Numbers",
        nahuatl = "Cempohualli Ilhuikani"
    }

    local months_island = {
        spanish = "Isla de los Meses",
        english = "Island of Months",
        nahuatl = "Metztli Ilhuikani"
    }

    local days_island = {
        spanish = "Isla de los Dias",
        english = "Island of Days",
        nahuatl = "Tonalmeh Ilhuikani"
    }

    local colors_island = {
        spanish = "Isla de los Colores",
        english = "Island of Colors",
        nahuatl = "Tlapalli Ilhuikani"
    }

    local body_island = {
        spanish = "Isla del Cuerpo",
        english = "Island of Body",
        nahuatl = "Tlazahkitl Ilhuikani"
    }

    local verbs_island = {
        spanish = "Isla de los verbos",
        english = "Island of Verbs",
        nahuatl = "Tlazohkamati Ilhuikani "
    }

    print(numbers_island[first_lang], 1.5 * 8, 3 * 8, 0)
    print(months_island[first_lang], 7.5 * 8, 7 * 8, 0)
    print(days_island[first_lang], 16.5 * 8, 3 * 8, 0)
    print(colors_island[first_lang], 1.5 * 8, 10 * 8, 0)
    print(body_island[first_lang], 7.5 * 8, 14 * 8, 0)
    print(verbs_island[first_lang], 16.5 * 8, 10 * 8, 0)

    local mx, my, left = mouse()

    -- Go back button
    local button_x, button_y = 226, 3 
    local button_width, button_height = 10, 10
    rect(button_x, button_y, button_width, button_height, 3)
    print("<", button_x + 3.5, button_y + 3, 15)
    if left and mx >= button_x and mx <= button_x + button_width and my >= button_y and my <= button_y + button_height then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            narration_ended = false
            current_narration = 1
            delay_screen = 10
        end
    end
    
    -- Island button detections
    if left and mx >= 3 * 8 and mx < 7 * 8 and my >= 4 * 8 and my < 7 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "numbers";
            level_chosen = true
            delay_screen = 60
        end
    end
    if left and mx >= 13 * 8 and mx < 17 * 8 and my >= 4 * 8 and my < 7 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "months";
            level_chosen = true
            delay_screen = 60
        end
    end
    if left and mx >= 23 * 8 and mx < 27 * 8 and my >= 4 * 8 and my < 7 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "days";
            level_chosen = true
            delay_screen = 60
        end
    end
    if left and mx >= 3 * 8 and mx < 7 * 8 and my >= 11 * 8 and my < 14 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "colors";
            level_chosen = true
            delay_screen = 60
        end
    end
    if left and mx >= 13 * 8 and mx < 17 * 8 and my >= 11 * 8 and my < 14 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "bodyParts";
            level_chosen = true
            delay_screen = 60
        end
    end
    if left and mx >= 23 * 8 and mx < 27 * 8 and my >= 11 * 8 and my < 14 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "verbs";
            level_chosen = true
            delay_screen = 60
        end
    end
end

-- Intro function
function narration()
    -- Reproducir música de la historia (reemplaza 2 con el índice de tu pista de música)
    play_music(2)
    -- History depending on the first language
    local history = {
        {
            spanish = "En la antigua y mistica tierra de Aztlan, un vasto conocimiento fluia a traves de sus pueblos, protegidos por los dioses y transmitidos de generacion en generacion.",
            nahuatl = "Ipan huehueh tlaltikpak Aztlan, cenca hueyi tlahcuilolli xochitoca ompa tlaltikpak, toteucyo omopalehuilia opanitztih in tlakatl in tlakatl.",
            english = "In the ancient and mystical land of Aztlan, vast knowledge flowed through its people, protected by the gods and passed down from generation to generation."
        }, {
            spanish = "Pero un chaman ambicioso, conocido como Xiloticahualli, deseaba obtener todo ese poder para si mismo.",
            nahuatl = "Ika huei amochitl, Xiloticahualli, cenca onimitztlamahuiz ihuan huelic teteuctli inin tlahcuilolli hualmotlahuilia.",
            english = "But an ambitious shaman, known as Xiloticahualli, sought to gain all that power for himself."
        }
        , {
            spanish = "Usando oscuros hechizos, robo las sabidurias mas preciosas: los numeros, los colores, los dias, los meses, las partes del cuerpo y los verbos esenciales para la vida.",
            nahuatl = "Tlahzah in tlapohualtih, tonaltih, metztli, in tlapechtih, ihuan in ixtlakatl, omohuika mochi in cenca huel tlahcuilolli in aic huihtilih.",
            english = "Using dark spells, he stole the most precious wisdom: the numbers, colors, days, months, body parts, and verbs essential for life."
        }
        , {
            spanish = "Despojados de su conocimiento, los pueblos de Aztlan cayeron en el olvido, y la tierra de los dioses perdio su conexion con los secretos del mundo.",
            nahuatl = "In tlakatl Aztlan omokuiza inin tlahcuilolli, ihuan totlaltikpak omixpatlalixih in iteucyotl.",
            english = "Deprived of their knowledge, the people of Aztlan fell into oblivion, and the land of the gods lost its connection with the secrets of the world."
        }
        , {
            spanish = "Ahora, las islas dispersas por todo el mundo guardan estos fragmentos de sabiduria, sellados y protegidos por criaturas ancestrales.",
            nahuatl = "Axkan, in tecpantli xochitoca ipan totlaltikpak, otlakah inin tlahtlahueliloc yankuik ahpotli, tlahcuiloh in teyohkantli.",
            english = "Now, the islands scattered across the world hold these fragments of wisdom, sealed and protected by ancient creatures."
        }
        , {
            spanish = "Tu, joven guerrero, eres el elegido para restaurar el equilibrio.",
            nahuatl = "Ticitlato, tlakatl pili, inimochohuaton. Tinemi motlamachihualiztli.",
            english = "You, young warrior, are the chosen one to restore balance."
        }
        , {
            spanish = "Tu mision es embarcarte en un viaje epico a traves de las Islas del Saber, recuperar las palabras robadas y derrotar a los guardianes que las protegen.",
            nahuatl = "Timotlatol ommitztlahtoh in ipan in Islas del Saber; motlaneltoc in nahuatl ihuan temactzin.",
            english = "Your mission is to embark on an epic journey across the Islands of Knowledge, recover the stolen words, and defeat the guardians that protect them."
        }
        , {
            spanish = "Cada isla es un reflejo de un aspecto esencial de la sabiduria perdida, y solo con tu habilidad y memoria podras restaurar lo que se ha desvanecido.",
            nahuatl = "Oc cenca in mexihcatlitl, nauh cenca tlamanih tequiti.",
            english = "Each island is a reflection of an essential aspect of the lost wisdom, and only with your skill and memory can you restore what has faded."
        }
        , {
            spanish = "A medida que recuperes las palabras en nahuatl, las sombras del caos comenzaran a desvanecerse y el verdadero conocimiento regresara a Aztlan.",
            nahuatl = "Amo iuhqui, in xochitlin omiccah ipan tlalocayotl, tlehco ixpan miquiz, huica itlacatlaliyoh in Tlahtoh.",
            english = "As you recover the words in Nahuatl, the shadows of chaos will begin to fade, and true knowledge will return to Aztlan."
        }
        , {
            spanish = "Solo enfrentando las pruebas y venciendo al chaman Xiloticahualli, podras devolver a Aztlan su antiguo esplendor.",
            nahuatl = "Neltlazoh Xiloticahualli, omiquilia otlahtoh ixpan ipanin Tlaltilpak.",
            english = "Only by facing the trials and defeating the shaman Xiloticahualli can you bring back Aztlan's ancient glory."
        }
        , {
            spanish = "Este es tu destino, el de recorrer las Islas del Saber y devolverle a tu gente el conocimiento perdido por siglos.",
            nahuatl = "Tlaltilpak timohuan ihuān itlamatiliz, huica ce nohuihca tocehuatl ipan tlanez.",
            english = "This is your destiny, to traverse the Islands of Knowledge and return the lost wisdom to your people."
        }
        , {
            spanish = "El viaje hacia Aztlan comienza ahora.",
            nahuatl = "Axcan, mochi timanolton ipan Tlahtoh Aztlan, atl tlaltikpak.",
            english = "The journey to Aztlán begins now."
        }
        
    }

    map(30, 34, 30, 17, 0, 0)
    draw_text_wrapped(history[current_narration][first_lang], 6 * 8, 4 * 8, 20 * 8, 8 * 8)

    local mx, my, left = mouse()

    -- Next and back detections
    if left and mx >= 25 * 8 and mx < 27 * 8 - 1 and my >= 7 * 8 and my < 9 * 8 - 1 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            if current_narration < #history then
                current_narration = current_narration + 1
            else
                narration_ended = true
                choose_island()
            end
            delay_screen = 10
        end
    end
    if left and mx >= 4 * 8 and mx < 6 * 8 - 1 and my >= 7 * 8 and my < 9 * 8 - 1 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            if current_narration > 1 then
                current_narration = current_narration - 1
            else
                second_lang_chosen = false
                second_lang = ""
                choose_sec_lang()
            end
            delay_screen = 10
        end
    end
end

-- TIC function
function TIC()
    
    if started then 
        if first_lang_chosen then
            if second_lang_chosen then
                if narration_ended then
                    if level_chosen then
                        if not initialized then
                            init_game()
                            initialized = true
                        end
                        update_game()
                        draw_game()
                    else
                        choose_island()
                    end
                else
                    narration()
                end
            else
                choose_sec_lang()
            end
        else
            choose_main_lang()
        end
    else
        main_screen()
    end
end

function flip_card(card)
    local level_offset = get_level_offset()
    for x = card.x1, card.x2 do
        for y = card.y1, card.y2 do
            mset(x, y + level_offset, 255)
        end
    end
end

function reset_card(card)
    local level_offset = get_level_offset()
    for x = card.x1, card.x2 do
        for y = card.y1, card.y2 do
            mset(x, y + level_offset, 0)
        end
    end
end

function is_matched(index)
    for _, match in pairs(matches) do
        if match == index then
            return true
        end
    end
    return false
end

function in_selected_cards(index)
    for _, selected in pairs(selected_cards) do
        if selected == index then
            return true
        end
    end
    return false
end
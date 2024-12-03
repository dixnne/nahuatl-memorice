-- title: Aztlan: Las Islas del Saber
-- author: Diana Narvaez - Sergio
-- desc: Memorice Nahuatl
-- site: github.com/dixnne/nahuatl-memorice
-- license: 
-- version: 0.1
-- script: lua
-- input: mouse

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
    {x1 = 11, y1 = 4, x2 = 15, y2 = 5},
    {x1 = 17, y1 = 4, x2 = 21, y2 = 5},
    {x1 = 11, y1 = 7, x2 = 15, y2 = 8},
    {x1 = 17, y1 = 7, x2 = 21, y2 = 8},
    {x1 = 11, y1 = 10, x2 = 15, y2 = 11},
    {x1 = 17, y1 = 10, x2 = 21, y2 = 11},
    {x1 = 11, y1 = 13, x2 = 15, y2 = 14},
    {x1 = 17, y1 = 13, x2 = 21, y2 = 14},
    {x1 = 23, y1 = 4, x2 = 27, y2 = 5},
    {x1 = 23, y1 = 7, x2 = 27, y2 = 8},
    {x1 = 23, y1 = 10, x2 = 27, y2 = 11},
    {x1 = 23, y1 = 13, x2 = 27, y2 = 14},
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

-- Shuffle an array
function shuffle(t)
    for i = #t, 2, -1 do
        local j = math.random(i)
        t[i], t[j] = t[j], t[i]
    end
end

-- Prepare game with random cards
function prepare_game(island)
    local all_words = {}
    for _, word in ipairs(island) do
        table.insert(all_words, {text = word[first_lang], pair = word[second_lang]})
        table.insert(all_words, {text = word[second_lang], pair = word[first_lang]})
    end
    shuffle(all_words)
    for i, card in ipairs(cards) do
        card.word = all_words[i]
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
                        -- Son un par, mantén visibles
                        table.insert(matches, selected_cards[1])
                        table.insert(matches, selected_cards[2])
                        selected_cards = {}
                    else
                        -- No son un par, inicia retraso
                        delay_counter = 60
                    end
                end
                break
            end
        end
    end
end

function draw_game()
    cls(0)
    map(0, 0, 30, 17, 0, 0)

    for _, card in pairs(cards) do
        if mget(card.x1, card.y1) ~= 0 then
            local text = card.word.text
            local max_width = (card.x2 - card.x1 + 1) * 8
            local x_center = card.x1 * 8 + (max_width - #text * 6) / 2
            local y_center = card.y1 * 8 + 4
            print(text, x_center, y_center, 7)
        end
    end

    if #matches == #cards then
        print("¡Ganaste!", 90, 125, 12)
    end
end

-- Main screen functions
function main_screen()
    cls(0)
    map(30, 0, 30, 17, 0, 0)
    print("Las Islas del Saber", 9 * 8, 4 * 8, 2)
    print("Start", 13 * 8, 10 * 8, 0)

    local mx, my, left = mouse()
    if left and mx >= 12 * 8 and mx <= 17 * 8 and my >= 8 * 8 and my <= 11 * 8 then  
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            left = false
            started = true
            delay_screen = 5
            choose_main_lang()
        end
    end
end

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
    
    if left and mx >= 4 * 8 and mx <= 9 * 8 and my >= 9 * 8 and my <= 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "spanish"
            delay_screen = 5
            choose_sec_lang()
        end
    end
    if left and mx >= 12 * 8 and mx <= 17 * 8 and my >= 9 * 8 and my <= 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "english"
            delay_screen = 5
            choose_sec_lang()
        end
    end
    if left and mx >= 20 * 8 and mx <= 25 * 8 and my >= 9 * 8 and my <= 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            first_lang_chosen = true
            first_lang = "nahuatl"
            delay_screen = 5
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
    
    if left and mx >= 8 * 8 and mx <= 13 * 8 and my >= 9 * 8 and my <= 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            delay_screen = 5
            second_lang_chosen = true
            second_lang = first_option
            choose_island()
        end
    end
    if left and mx >= 16 * 8 and mx <= 21 * 8 and my >= 9 * 8 and my <= 12 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            delay_screen = 5
            second_lang_chosen = true
            second_lang = second_option
            choose_island()
        end
    end
end

function choose_island()
    cls(0)
    map(120, 0, 30, 17, 0, 0)
    
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
    
    if left and mx >= 3 * 8 and mx <= 6 * 8 and my >= 4 * 8 and my <= 6 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "numbers";
            level_chosen = true
            delay_screen = 5
        end
    end
    if left and mx >= 13 * 8 and mx <= 16 * 8 and my >= 4 * 8 and my <= 6 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "months";
            level_chosen = true
            delay_screen = 5
        end
    end
    if left and mx >= 23 * 8 and mx <= 26 * 8 and my >= 4 * 8 and my <= 6 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "days";
            level_chosen = true
            delay_screen = 5
        end
    end
    if left and mx >= 3 * 8 and mx <= 6 * 8 and my >= 11 * 8 and my <= 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "colors";
            level_chosen = true
            delay_screen = 5
        end
    end
    if left and mx >= 13 * 8 and mx <= 16 * 8 and my >= 11 * 8 and my <= 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "bodyParts";
            level_chosen = true
            delay_screen = 5
        end
    end
    if left and mx >= 23 * 8 and mx <= 26 * 8 and my >= 11 * 8 and my <= 13 * 8 then
        if delay_screen > 0 then
            delay_screen = delay_screen - 1
        else
            level = "verbs";
            level_chosen = true
            delay_screen = 5
        end
    end
end

-- TIC function
function TIC()
    if started then 
        if first_lang_chosen then
            if second_lang_chosen then
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
    for x = card.x1, card.x2 do
        for y = card.y1, card.y2 do
            mset(x, y, 255)
        end
    end
end

function reset_card(card)
    for x = card.x1, card.x2 do
        for y = card.y1, card.y2 do
            mset(x, y, 0)
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
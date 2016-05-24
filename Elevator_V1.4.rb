#на початку без людей
elevator_person = 0
elevator_floor = 1
# запускаєм цикл
while (command = gets.chomp) != 'exit' 
    puts "============================="
    if command != 'exit' && command != 'free_person' && command != 'add_person' && command != 'up' && command != 'down' then
        puts "Wrong command"
    end
        #частина коду що відповідає за мінусування хомячків
    if command == 'free_person' then
        if elevator_person >= 1 then
            puts "How many people are running out?"
            leaved = gets.chomp.to_i
            if leaved <= elevator_person then
                puts "#{leaved} Person are running out"
                elevator_person = elevator_person - leaved
            else
                ghost = leaved - elevator_person 
                puts " #{elevator_person} Person leaved becouse there is #{ghost} GHOSTS! HERE!"
                elevator_person = 0
            end
        else 
            puts "All person are in a HELL! I mean - there no people here"
        end
    else
        #додаєм хомячків
        if command == 'add_person' then
            if elevator_person <= 5 then
                puts "How many people are comming?"
                comming = gets.chomp.to_i
                if elevator_person + comming >= 7 then
                    sum_people = elevator_person + comming
                    losers = sum_people - 6
                    puts "Sorry, but there no space for #{losers} losers"
                    elevator_person = 6
                else
                    elevator_person = elevator_person + comming
                    puts "person added"
                end
            else
                puts "You shall not pass! Elevator is full"
            end
        end
    end
    #піднімаєм ліфт
    if command == 'up' then
            if elevator_floor <= 11 then
                puts "Where is your destination?"
                destination_floor = gets.chomp.to_i
                if destination_floor <= elevator_floor
                    puts "There is the same floor or lower, use another command"
                elsif
                    destination_floor >=12
                    puts "To higher, we  have only 11 floors."
                else
                    elevator_floor = destination_floor
                    puts "Elevator go up"
                end
            else
                puts "3 meters above the sky? I don't think so. I mean - higher only sky."
            end
    end
        #опускаєм ліфт
        if command == 'down' then
            if elevator_floor >= 2 then
                puts "Where is your destination?"
                destination_floor = gets.chomp.to_i
                if destination_floor >= elevator_floor
                    puts "There is the same floor or higher, use another command"
                elsif destination_floor <= 0 then
                    puts "To lower man, we started from the 1 floor."
                else
                    elevator_floor = destination_floor
                    puts "Elevator go down"
                end
            else
                puts "highway to hell dosn't here. Lower only ground"
            end
        end    
    puts "in the elevator #{elevator_person} person(s)"
    puts "Elevator on the #{elevator_floor} floor"
    if elevator_person <= 2 then
        motor_2 = false
        puts "Motor N2: OFF"
    else
        motor_2 = true
        puts "Motor N2: ON"
    end
    puts "============================="
end
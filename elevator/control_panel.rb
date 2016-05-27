load 'motor.rb'
load 'display_outside.rb'
load 'display_inside.rb'
people = 0
elevator_floor = 1
puts "Write 'start' to enter command or 'exit' to close program"
while (command = gets.chomp) != 'exit' 
        display_outside = Display_outside.new
        display_outside.display_status(people, elevator_floor)
        if command == "start"
            puts "How many people enter(exit)?"
            people_come = gets.to_i
            total_people = people + people_come
            if  total_people <= 6 
                if total_people >= 0
                    people = total_people
                else 
                    puts "Some ghosts came with people from elevator. In elevator 0 people"
                    people = 0
                end
            else
                puts "too many people. In elevator 6 people"
                people = 6
            end
                puts "Choose floor"
            until (choose_floor = gets.chomp.to_i) <=11
                puts "wrong floor. Please choose from 1 to 11"
            end
        end
            elevator_floor = choose_floor
            display_inside = Display_inside.new
            motor = Motors.new
            motor.motors(people)
            display_outside.display(people, elevator_floor)
            display_inside.displayInside(people, elevator_floor)
        
    
end

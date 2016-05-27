load 'display_outside.rb'
load 'motor.rb'

    puts "How many people come?"
    people = gets.to_i
    puts "Choose floor"
    elevator_floor = gets.to_i

    display_outside = Display_outside.new
    motor = Motors.new
    motor.motors(people)
    display_outside.display(people, elevator_floor)
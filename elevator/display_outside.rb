
class Display_outside
    attr_accessor :people, :elevator_floor
    def display_status (people, elevator_floor)
        puts "++++++++++++++++++++++++"
        puts "In elevator #{people} people"
        puts "Elevator on #{elevator_floor} floor"
        puts "++++++++++++++++++++++++"
    end
    def display_motor(motor_2)
        puts "=================="
        puts "Motor 2 #{motor_2}"
    end
    def display (people, elevator_floor)
        puts "#{people} people come(leave)"
        puts "Elevator go to #{elevator_floor} floor"
        puts "=================="
    end
end

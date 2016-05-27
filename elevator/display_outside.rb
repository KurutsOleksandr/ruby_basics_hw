class Display_outside
    attr_accessor :people, :elevator_floor
    def initialize
        people = 0
        elevator_floor = 0
    end
    def display (people, elevator_floor)
        puts "In elevator #{people} people"
        puts "Elevator on #{elevator_floor} floor"
       
    end
end
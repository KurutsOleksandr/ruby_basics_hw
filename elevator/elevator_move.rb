    def elevator_move(elevator_floor)
        if elevator_floor <= 0 or elevator_floor >=11 then
            puts "Wrong floor"
        else
            puts "Elevator on the #{elevator_floor} floor"
        end
    end
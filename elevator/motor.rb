class Motors
    attr_accessor :motor_2, :people
    
    def motors(people)
        if people >= 3 then
            motor_2 = "ON"
        else
            motor_2 = "OFF"
        end
        display_outside = Display_outside.new
        display_outside.display_motor(motor_2)
        
    end
    
end

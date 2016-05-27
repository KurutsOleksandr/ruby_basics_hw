class Motors
    attr_accessor :motor_2, :people
    
    def motors(people)
        if people >= 3 then
            motor_2 = true
            puts "Motor 2 ON"
        else
            motor_2 = false
            puts "motor 2 OFF"
        end
    end
    
end
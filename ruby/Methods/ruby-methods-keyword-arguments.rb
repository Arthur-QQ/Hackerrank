# Your code here
def convert_temp(inpn, input_scale)
    input_scale, output = input_scale[:input_scale], input_scale[:output_scale]
    # puts "#{inpn} #{input_scale} #{output}"
    if input_scale == 'celsius'
        if output == 'celsius'
            return inpn
        elsif output == 'fahrenheit'
            return inpn * 9.0 / 5.0 + 32
        else
            return inpn + 273.15
        end
    elsif input_scale == 'fahrenheit'
        if output == 'celsius'
            return (inpn - 32) * (5.0 / 9.0)
        elsif output == 'fahrenheit'
            return inpn
        else
            return (inpn - 32) * (5.0 / 9.0) + 273.15
        end
    else
        # puts 'kevin'
        if output == 'celsius'
            return inpn - 273.15
        elsif output == 'fahrenheit'
            return (inpn - 273.15) * 9.0 / 5.0 + 32
        else
            return inpn
        end
    end
end

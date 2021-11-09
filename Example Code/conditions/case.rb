color = "green"
output = ""

case color
    when "black"
    output = "output is black"
    when "red"
    output = "output is red"
    when "green"
    output = "output is green"
    when "blue"
    output = "output is blue"
    else 
    output = "output is unknown"
end

print output + "\n"


fruit = "orange"
color = case fruit
    when "orange"
    "orange"
    when "apple"
    "green"
    when "banana"
    "yellow"
    else
    "unknown"
end

print color + "\n"

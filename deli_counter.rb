# Write your code here.

def line(customers_line)
    if customers_line.size == 0
        puts "The line is currently empty."
    else
        arr_customers = []
        customers_line.each do |customer|
            arr_customers.push("#{customers_line.index(customer) + 1}. #{customer}")
        end
        puts "The line is currently: #{arr_customers.join(" ")}"
    end
end

def take_a_number(customers_line, customer)
    customers_line.push(customer)
    puts "Welcome, #{customer}. You are number #{customers_line.index(customer) + 1} in line."
end

def now_serving(customers_line)
    if customers_line.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{customers_line.first}."
        customers_line.shift
    end
end
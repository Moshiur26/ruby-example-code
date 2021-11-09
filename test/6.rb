module Address
    def show_address
        name = @name
        city = @city
        state = @state
        puts "Show Address #{name} #{city} #{state}"
    end
end

module Accounting
    class Invoice
        include Address
        def initialize(n, c, s)
            @name = n
            @city = c
            @state = s
        end
    end
    class Bill
        include Address
        attr_accessor :name, :city, :state
    end
end

invoice = Accounting::Invoice.new('Habib', 'Madison', 'AL')
invoice.show_address
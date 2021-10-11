#ArgumentError
#1
# class Company
#     attr_accessor :title, :year
# end
# obj = Company.new("hello", 2021)

#2
# class Company
#     attr_reader :title, :year
# end
# obj = Company.new("hello", 2021)

#3
# class Company
#     attr_writer :title, :year
# end
# obj = Company.new("hello", 2021)

#4
# class Company
#     def initialize(title)
#         @title = title
#     end
# end
# obj = Company.new


#error free
# class Company
#     attr_accessor :title, :year
#     def initialize(title, year)
#         @title = title
#         @year = year
#     end
# end

# obj = Company.new("hello", 2021)

Company = Struct.new(:name)
obj = Company.new
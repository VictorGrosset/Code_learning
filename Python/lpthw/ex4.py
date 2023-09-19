cars = 100
space_in_car = 4.0
drivers = 50
passenger = 10
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = drivers * space_in_car
average_passenger_per_car = passenger/cars_driven

print("there are", cars, "cars available")
print("there are only", drivers, "drivers available")
print("there will be", cars_driven, "empty cars today")
print("We can transport", carpool_capacity, "people today")
print("we have", passenger, "passenger today")
print("We need to put about", average_passenger_per_car, "people in each car")
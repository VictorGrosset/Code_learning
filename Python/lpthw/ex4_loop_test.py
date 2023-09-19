#variables définition 
car_pool = 100
passenger = 120
drivers_cars_available = 30
passengers_max_per_car = 4.0
#


#Base Statement
cars_not_driven_pre = car_pool-drivers_cars_available
cars_driven_pre = drivers_cars_available
carpool_capacity_pre = cars_driven_pre*passengers_max_per_car
avg_passenger_per_car_pre = passenger/cars_driven_pre
occupancy_pre = (avg_passenger_per_car_pre*100)/passengers_max_per_car
#


#Post Correction Suggestion
drivers_post = drivers_available
cars_driven_post = drivers_post
avg_passenger_per_car_post= passenger/cars_driven_post
cars_not_driven_post = car_pool-cars_driven_post
carpool_capacity_post = cars_driven_post*passengers_max_per_car
occupancy_post = (avg_passenger_per_car_post*100)/passengers_max_per_car
#


#Correction Suggestion Math
drivers_adjustment = 0
#


print("there are", car_pool,"cars available")
print("there only", drivers_available,"drivers available")
print("there will be", drivers_available,"cars available")

if carpool_capacity_pre>=passenger:
    print("we have enough capacity to take all the passengers today")
    print("there will be", passenger,"passengers today")
    print("there will be approximately", avg_passenger_per_car_pre,"passenger per car")
    print(occupancy_pre, "%", "occupancy")


    while occupancy_post<85:
        drivers_post -= 1
        cars_driven_post -= 1
        avg_passenger_per_car_post = passenger/cars_driven_post
        occupancy_post = (avg_passenger_per_car_post*100)/passengers_max_per_car
    else:
        drivers_post += 1
        cars_driven_post += 1
        avg_passenger_per_car_post = passenger/cars_driven_post
        occupancy_post = (avg_passenger_per_car_post*100)/passengers_max_per_car
        if 


#elif carpool_capacity_pre<passenger:
#    print("there will be only", , "seats")
#    print(, ,"passengers will need to wait until tomorrow for their trip")

#else:
#    print(".......................................")


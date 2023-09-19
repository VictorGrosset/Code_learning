name = 'Zed A. Shaw'
age = 35 #not a lie
height = 74 #inches
weight = 180 #lbs
eyes = 'blue'
teeth = 'white'
hair = 'brown'


one_inch = 0.0254
one_lbs = 0.45359237

height_cm = round(height*one_inch, 2)
weight_kg = round(weight*one_lbs, 2)

print(f"Let's talk about {name}.")
print(f"He's {height} inches tall.")
print(f"He's {weight} pounds heavy")
print("Actually, that's not too heavy.")
print(f"He's got {eyes} eyes and {hair} hair.")
print(f"His teeth are usually {teeth} depending on the coffee.")

#This line is tricky, try to one shot it
total = age + height + weight
print(f"If i add {age}, {height} and {weight}, i get {total}")
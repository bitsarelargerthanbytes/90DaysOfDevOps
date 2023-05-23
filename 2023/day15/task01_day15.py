import json

# Create a dictionary

data = {
        "name": "John Doe",
        "age": 30,
        "email": "johndoe@example.com"
}       

# Write the dictionary to a JSON file
with open("data.json", "w") as file:
    json.dump(data, file)
    
    
#In the above code, we import the json module to work with JSON data. We create a dictionary called data with some key-value pairs representing information about a person. Then, we use the open() function to open a file named "data.json" in write mode. We pass the file object and the dictionary data to the json.dump() function, which writes the dictionary as JSON data into the file

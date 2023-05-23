import json
import yaml

json_file = "services.json"
yaml_file = "services.yaml"

with open(json_file, 'r', encoding='utf-8') as f:
    json_data = json.loads(f.read())

with open("services.json", "r") as file:
    data = json.load(file)

# Get the services dictionary
services = data["services"]

# Print the service names for each cloud service provider
for provider, info in services.items():
    if provider != "debug":
        print(f"{provider}: {info['name']}")

#In the code above, we open the services.json file using the open() function and load its contents into the data variable using json.load(). We then extract the "services" dictionary from data. Finally, we iterate over the items in services and print the provider and its corresponding service name, excluding the "debug" key.

#When you run the code, it will read the services.json file, extract the service names for each cloud service provider, and print them in the desired format:




#print("JSON:\n",json_data)

with open(yaml_file, "r") as stream:
    try:
        yaml_data = yaml.safe_load(stream)
    except yaml.YAMLError as exc:
        print(exc)


#print("YAML:\n",yaml_data)

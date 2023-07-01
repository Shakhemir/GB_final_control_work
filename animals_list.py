from datetime import datetime
from animals import Animal
import pets
import db_io
from configs import animal_species


def init_animal(name, date_of_birth, specie) -> Animal:
    for _, specie_name, animal in animal_species:
        if specie_name == specie:
            return animal(name, date_of_birth)
    return pets.Cat(name, date_of_birth)

    # match specie:
    #     case 'cat':
    #         new_animal = pets.Cat(name, date_of_birth)
    #     case 'cow':
    #         new_animal = pets.Cow(name, date_of_birth)
    #     case 'dog':
    #         new_animal = pets.Dog(name, date_of_birth)
    #     case 'horse':
    #         new_animal = pack_animals.Horse(name, date_of_birth)
    #     case 'donkey':
    #         new_animal = pack_animals.Donkey(name, date_of_birth)
    #     case 'hamster':
    #         new_animal = pets.Hamster(name, date_of_birth)
    #     case _:
    #         new_animal = pack_animals.Mule(name, date_of_birth)
    # return new_animal


class AnimalList:
    def __init__(self):
        self.all_animals = []
        self.load_animals(db_io.load_all_data())

    def load_animals(self, fetched_list: list):
        for db_id, name, date_of_birth, commands, specie in fetched_list:
            new_animal = init_animal(name, date_of_birth, specie)
            new_animal.add_commands(commands.split(','))
            self.all_animals.append((db_id, new_animal))

    def get_animal(self, animal_id) -> Animal:
        return self.all_animals[animal_id][1]

    def add_new_animal(self, name, date_of_birth, specie):
        new_animal = init_animal(name, date_of_birth, specie)
        db_id = db_io.add_new_animal(name, date_of_birth, specie)
        self.all_animals.append((db_id, new_animal))

    def add_command(self, animal_id, commands):
        db_id, animal = self.all_animals[animal_id]
        animal.add_commands(commands)
        db_io.update_command(db_id, animal.commands)

    def delete_animal(self, animal_id):
        db_id, animal = self.all_animals[animal_id]
        db_io.delete_animal(db_id)
        del self.all_animals[animal_id]

    def show_all_animals(self):
        for _, animal in self.all_animals:
            print(f'{animal.name} ({animal.specie})')

    def get_animals_list(self):
        result = []
        for _, animal in self.all_animals:
            result.append(f'{animal.name} ({animal.specie})')
        return result

    def get_animal_info(self, animal_id: int):
        animal = self.get_animal(animal_id)
        return f'Имя: {animal.name}\n' \
               f'Вид: {animal.specie}\n' \
               f'Дата рождения: {animal.birth_date.strftime("%Y-%m-%d")}\n' \
               f'Команды: {", ".join(animal.commands)}'

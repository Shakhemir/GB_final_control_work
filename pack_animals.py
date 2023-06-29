from animals import PackAnimals

class Donkey(PackAnimals):
    def pick_up_cargo(self):
        print('Берет груз')


class Horse(PackAnimals):
    def pick_up_cargo(self):
        print('верховая езда')

class Mule(PackAnimals):
    def pick_up_cargo(self):
        print('Берет груз')

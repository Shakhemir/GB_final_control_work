from animals import Pets

class Cat(Pets):
    def act(self):
        print('Мяу')


class Dog(Pets):
    def act(self):
        print('Гав-гав')

class Hamster(Pets):
    def act(self):
        print('Бежит в колесе')

class Cow(Pets):
    def act(self):
        print('Муу-уу')

from datetime import datetime
from abc import ABC, abstractmethod
from random import choice


class Animal(ABC):
    """
    Родительский класс.
    """
    def __init__(self, name, birth_date):
        self.name = name
        self.birth_date = datetime.strptime(birth_date, '%Y-%m-%d')
        self.commands = []

    def add_commands(self, *commands):
        self.commands.extend(commands)

    def act_command(self):
        if self.commands:
            print(choice(self.commands))

class Pets(ABC, Animal):
    """
    Домашние животные
    """

    @abstractmethod
    def act(self):
        """
        Взаимодействие домашнего животного с человеком.
        """
        pass

class PackAnimals(ABC, Animal):
    """
    Домашние животные
    """

    @abstractmethod
    def pick_up_cargo(self):
        """
        Вьючные животные умеют брать груз.
        """
        pass

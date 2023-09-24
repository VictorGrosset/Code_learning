import math

from tabulate import tabulate

class Point:
    def __init__(self):
        self.__x = 0
        self.__y = 0
        self.__ro = 0
        self.__theta = 0

    def set_xy(self, x, y):
        self.__x = x
        self.__y = y
        self.calculer_ro_theta()

    def set_ro_theta(self, ro, theta):
        self.__ro = ro
        self.__theta = theta
        self.calculer_xy()

    def get_xy(self):
        return self.__x, self.__y

    def get_ro_theta_radian(self):
        return self.__ro, self.__theta

    def get_ro_theta_degres(self):
        return self.__ro, self.__theta * 180 / math.pi

    def calculer_ro_theta(self):
        self.__ro = math.sqrt(self.__x ** 2 + self.__y ** 2)
        self.__theta = math.atan2(self.__y, self.__x)

    def calculer_xy(self):
        self.__x = self.__ro * math.cos(self.__theta)
        self.__y = self.__ro * math.sin(self.__theta)

    # def calculer_distance:


point1 = Point()
point1.set_xy(4, 4)
print(tabulate([
                ["xy", point1.get_xy()],
                ["ro & theta (radian)", point1.get_ro_theta_radian()],
                ["ro & theta (degrés)", point1.get_ro_theta_degres()]]
               )
      )

point2 = Point()
point2.set_ro_theta(1, 2.35619)
print(tabulate([
                ["xy", point2.get_xy()],
                ["ro & theta (radian)", point2.get_ro_theta_radian()],
                ["ro & theta (degrés)", point2.get_ro_theta_degres()]]
               )
      )

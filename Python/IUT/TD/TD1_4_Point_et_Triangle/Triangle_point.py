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


class Triangle:
    def __init__(self, p1, p2, p3):
        self.__p1 = p1
        self.__p2 = p2
        self.__p3 = p3
        self.__perimetre = 0

    def perimetre(self):
        d1_2 = math.sqrt(
            (self.__p2.get_xy()[0] - self.__p1.get_xy()[0]) ** 2 +
            (self.__p2.get_xy()[1] - self.__p1.get_xy()[1]) ** 2
            )
        d2_3 = math.sqrt(
            (self.__p3.get_xy()[0] - self.__p2.get_xy()[0]) ** 2 +
            (self.__p3.get_xy()[1] - self.__p2.get_xy()[1]) ** 2
            )
        d3_1 = math.sqrt(
            (self.__p1.get_xy()[0] - self.__p3.get_xy()[0]) ** 2 +
            (self.__p1.get_xy()[1] - self.__p3.get_xy()[1]) ** 2
            )
        self.__perimetre = d1_2 + d2_3 + d3_1


    def get_perimetre(self):
        return self.__perimetre


point1 = Point()
point2 = Point()
point3 = Point()

point1.set_xy(4, 1)
point2.set_xy(0, 4)
point3.set_xy(-1, -4)

t = Triangle(point1, point2, point3)
t.perimetre()
print(t.get_perimetre())
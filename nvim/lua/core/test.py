
class Man():
    pass

class TestIndentation():
    def __init__(self) -> None:
        pass 

    def checkPrime(self,Num:int)->bool:
        if Num <= 1:
            return False
        for i in range(2,Num):
            if Num%i == 0:
                return False
        return True
        
    def checkEven(self,Num:int)->bool:
        if Num%2 == 0:
            return True
        return False
    
    def checkOdd(self,Num:int)->bool:
        if Num%2 != 0:
            return True
        return False

    def checkPositive(self,Num:int)->bool:
        if Num > 0:
            return True
        return False

    def checkNegative(self,Num:int)->bool:
        if Num < 0:
            return True
        return False
    def checkZero(self,Num:int)->bool:
        if Num == 0:
            return True
        return False

    def checkPalindrome(self,Num:int)->bool:
        if str(Num) == str(Num)[::-1]:
            return True
        return False

    def checkArmstrong(self,Num:int)->bool:

        sum = 0
        temp = Num
        while temp > 0:
            digit = temp % 10
            sum += digit ** 3
            temp //= 10
        if Num == sum:
            return True
        return False

    def checkPerfect(self,Num:int)->bool:
        sum = 0
        for i in range(1,Num):
            if Num%i == 0:
                sum += i
        if sum == Num:
            return True
        return False

    def checkStrong(self,Num:int)->bool:
        sum = 0
        temp = Num
        while temp > 0:
            digit = temp % 10
            fact = 1
            for i in range(1,digit+1):
                fact *= i
            sum += fact
            temp //= 10
        if sum == Num:
            return True
        return False

    def checkLeapYear(self,Num:int)->bool:
        if Num%4 == 0:
            if Num%100 == 0:
                if Num%400 == 0:
                    return True
                return False
            return True
        return False

    def checkPerfectSquare(self,Num:int)->bool:
        for i in range(1,Num):
            if i*i == Num:
                return True
        return False

    def checkAutomorphic(self,Num:int)->bool:
        square = Num*Num
        if Num == square%10:
            return True
        return False

    def checkHarshad(self,Num:int)->bool:
        sum = 0
        temp = Num
        while temp > 0:
            digit = temp % 10
            sum += digit
            temp //= 10
        if Num%sum == 0:
            return True
        return False

    def checkDisarium(self,Num:int)->bool:
        sum = 0
        temp = Num
        n = len(str(Num))
        while temp > 0:
            digit = temp % 10
            sum += digit ** n
            n -= 1
            temp //= 10
        if sum == Num:
            return True
        return False





test1=TestIndentation()
print(test1.checkPrime(11))
print(test1.checkEven(11))
print(test1.checkOdd(11))
print(test1.checkPositive(11))
print(test1.checkNegative(11))
print(test1.checkZero(11))
print(test1.checkPalindrome(11))
print(test1.checkArmstrong(11))
print(test1.checkPerfect(11))
print(test1.checkStrong(11))
print(test1.checkLeapYear(11))
print(test1.checkPerfectSquare(11))
print(test1.checkAutomorphic(11))
print(test1.checkHarshad(11))
    


def autoformattest():    
    print('hello world')

autoformattest ()
        


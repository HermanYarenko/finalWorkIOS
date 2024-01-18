//
//  main.m
//  itogOBC
//
//  Created by Герман Яренко on 18.01.24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Ввод коэффициентов уравнения
        NSLog(@"Введите коэффициенты квадратного уравнения ax^2 + bx + c = 0");
        
        int a, b, c;
        
        NSLog(@"a:");
        scanf("%d", &a);
        
        NSLog(@"b:");
        scanf("%d", &b);
        
        NSLog(@"c:");
        scanf("%d", &c);
        
        // Расчёт дискриминанта
        int discriminant = pow(b, 2) - 4 * a * c;
        
        // Проверка условий
        if (discriminant > 0) {
            // Два различных корня
            double x1 = (-b + sqrt(discriminant)) / (2 * a);
            double x2 = (-b - sqrt(discriminant)) / (2 * a);
            NSLog(@"Корни уравнения: %.2f, %.2f", x1, x2);
        } else if (discriminant == 0) {
            // Один корень
            double x = -b / (2 * a);
            NSLog(@"Уравнение имеет один корень: %.2f", x);
        } else {
            // Корней нет
            NSLog(@"Уравнение не имеет корней");
        }
    }
    return 0;
}

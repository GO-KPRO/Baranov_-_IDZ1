# Baranov_-_IDZ1
# Отчет
##### **Приведено решение задачи на C.**
-Файл c_code.c
##### **В полученную ассемблерную программу, откомпилированную без оптимизирующих и отладочных опций, добавлены комментарии, поясняющие эквивалентное представление переменных в программе на C.**
-Файл s_code.s, созданный при помощи консольной команды: gcc -O0 -Wall -masm=intel -S c_code.c -o s_code.s
##### **Из ассемблерной программы убраны лишние макросы за счет использования соответствующих аргументов командной строки и/или за счет ручного редактирования исходного текста ассемблерной программы.**
-Файл s_code_optimisated.s, созданный при помощи консольной команды: gcc -O0 -Wall -masm=intel -S -fno-asynchronous-unwind-tables -fcf-protection=none c_code.c -o s_code_optimisated.s
##### **Модифицированная ассемблерная программа отдельно откомпилирована и скомпонована без использования опций отладки.**
-Файлы o_code_optimisated.o и a.out, созданные при помощи консольных команд: 
gcc -c s_code_optimisated.s -o o_code_optimisated.o и 
gcc o_code_optimisated.o
##### **Представлено полное тестовое покрытие, дающее одинаковый результат на обоих программах. Приведены результаты тестовых прогонов для обоих программ, демонстрирующие эквивалентность функционирования.**
-Файл test_res.txt, представлены результаты тестовых прогонов на обеих программах
##### **Сформировать отчет, описывающий результаты тестовых прогонов и используемых опций компиляции и/или описания проведенных модификаций.**
-Вывод всех тестовых прогонов на C совпал с выводом на Ассемблере, следовательно программы совпадают
-Все опции компиляции написаны под соотвецтвующими пунктами

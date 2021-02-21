objects = main.o JSON_checker.o

lint-json : $(objects)
	gcc -o lint-json $(objects)

main.o : JSON_checker.h
JSON_checker.o : JSON_checker.h

.PHONY : clean
clean :
	rm $(objects)

.PHONY : clean-all
clean-all:
	rm lint-json $(objects)

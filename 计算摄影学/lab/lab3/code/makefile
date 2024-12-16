SOURCES = main.cpp hw3_solve.cpp sparse.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = main

$(TARGET):$(OBJECTS)
	g++ -o $(TARGET) $(OBJECTS)
$(OBJECTS):$(SOURCES)
	g++ -c $(SOURCES)

clean:
	rm $(OBJECTS) $(TARGET)

%.o:%.cpp
	g++ -I $(INCLUDE) -o $@ -c $<
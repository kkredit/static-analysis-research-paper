# ------------------------------------------------
# Generic C Makefile
# ------------------------------------------------

TARGET   := example
SRCDIR   := .
OBJDIR   := bin
BINDIR   := bin

WARNINGS :=

CC       := gcc
CFLAGS   := -std=c99 $(WARNINGS) -I.

LINKER   := gcc
LFLAGS   := $(WARNINGS) -I.

SOURCES  := $(wildcard $(SRCDIR)/*.c)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(patsubst $(SRCDIR)/%.c,$(OBJDIR)/%.o,$(SOURCES))

.PHONY: all clean compile
default: all

all: $(BINDIR)/$(TARGET)

compile: $(OBJECTS)

clean:
	rm -f $(OBJECTS) $(BINDIR)/$(TARGET)

flawfinder:
	flawfinder $(SOURCES) 2>&1 | tee report.txt

statick: ../statick-docker/runContainer.sh
	mkdir -p statick_output
	./../statick-docker/runContainer.sh statick . statick_output || true

$(BINDIR)/$(TARGET): $(OBJECTS)
	mkdir -p $(BINDIR)
	$(LINKER) $(OBJECTS) $(LFLAGS) -o $@

$(OBJECTS): $(OBJDIR)/%.o : $(SRCDIR)/%.c
	mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

MUP	= mup
SRC	= $(shell ls *.mup)
PS	= $(SRC:.mup=.ps)
MIDI	= $(SRC:.mup=.mid)

all: ps

ps: $(PS)

midi: $(MIDI)

clean:
	rm -f *~ $(MIDI) $(PS)

%.ps: %.mup
	$(MUP) $< -f $@

%.mid: %.mup
	$(MUP) -M $<

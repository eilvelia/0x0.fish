.PHONY: all
all: 0x0 test

0x0: functions/0x0.fish
	./generate-0x0.sh

.PHONY: test
test: 0x0
	cram test/0x0.t

.PHONY: promote
promote: test/0x0.t.err
	mv test/0x0.t.err test/0x0.t

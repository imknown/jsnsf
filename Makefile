test4.compiled.js: bufferedaudionode.js stepgeneratornode.js test4.js Makefile
	{ java -jar ~/Downloads/compiler.jar --js=bufferedaudionode.js --js=stepgeneratornode.js --js=test4.js --language_in=ES6_STRICT --language_out=ES5_STRICT --create_source_map=test4.srcmap --jscomp_warning=checkTypes --jscomp_warning=checkVars; echo "//# sourceMappingURL=test4.srcmap"; } >| test4.compiled.js

nes.compiled.js: clock.js mem.js apu/lengthcounter.js apu/envelope.js apu/pulse.js apu/apu.js cpu.js nsf.js stepgeneratornode.js bufferedaudionode.js nsfplayer.js Makefile
	{ java -jar ~/Downloads/compiler.jar --js=clock.js --js=mem.js --js=apu/lengthcounter.js --js=apu/envelope.js --js=apu/pulse.js --js=apu/apu.js --js=cpu.js --js=nsf.js --js=bufferedaudionode.js --js=stepgeneratornode.js --js=nsfplayer.js --language_in=ES6_STRICT --language_out=ES5_STRICT --create_source_map=nes.srcmap --jscomp_warning=checkTypes --jscomp_warning=checkVars; echo "//# sourceMappingURL=nes.srcmap"; } >| nes.compiled.js

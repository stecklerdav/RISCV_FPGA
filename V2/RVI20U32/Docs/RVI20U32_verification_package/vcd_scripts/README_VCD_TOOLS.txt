Herramientas para ver VCD/FST/FSDB:

Gratis / open-source:
1) GTKWave: rápido para VCD/FST. Comando: gtkwave test.vcd
2) Surfer: visor moderno de ondas, útil con VCD/FST.
3) Verilator + FST: genera FST más compacto que VCD; se abre con GTKWave.
4) xsim waveform viewer: integrado en Vivado; permite abrir .wdb mejor que VCD.

Profesionales/comerciales:
1) Siemens Questa/ModelSim: simulación y waveform debug.
2) Synopsys Verdi: debug ASIC/SoC, FSDB, tracing avanzado.
3) Cadence SimVision/Xcelium: debug profesional.
4) Aldec Riviera-PRO: simulación HDL profesional.
5) DVE/VCS: flujo Synopsys.

Recomendación para tu proyecto:
- En Vivado/xsim: usa WDB para debug interactivo y exporta VCD para compartir.
- En Linux: usa GTKWave para abrir VCD rápido.
- Si pasas a Verilator: genera FST, no VCD, porque pesa menos.

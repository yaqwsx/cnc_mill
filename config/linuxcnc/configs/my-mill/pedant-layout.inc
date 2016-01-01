[XHC_HB04_BUTTONS]
# use button names according to layout file LIB:xhc-hb04-layout{n}.cfg
# note: "start-pause" is connected for standard behavior
#        controlling halui.pause/halui.resume/halui.run

goto-zero   = halui.mdi-command-00
# synthesized per-axis buttons for goto-zero button:
goto-zero-x = ""
goto-zero-y = ""
goto-zero-z = ""
goto-zero-a = ""

start-pause = std_start_pause
rewind      = halui.program.step
# probe-input for simulating a probe:
probe-z     = halui.mdi-command-16
macro-3     = halui.mdi-command-03

half        = halui.spindle.stop
# synthesized per-axis buttons for half button:
half-x      = ""
half-y      = ""
half-z      = ""
half-a      = ""

zero        = ""
# synthesized per-axis buttons for zero button:
zero-x      = halui.mdi-command-12
zero-y      = halui.mdi-command-13
zero-z      = halui.mdi-command-14
zero-a      = halui.mdi-command-15

safe-z      = halui.mdi-command-10
home        = halui.home-all
macro-1     = halui.mdi-command-01
macro-2     = halui.mdi-command-02
spindle     = halui.spindle.start
step        = xhc-hb04.stepsize-down
mode        = ""
macro-6     = halui.mdi-command-06
macro-7     = halui.mdi-command-07
stop        = halui.program.stop
reset       = halui.estop.activate

[HALUI]
# MDI 0
MDI_COMMAND=G0 X0 Y0 Z0
# MDI 1
MDI_COMMAND=(debug, example: mdi-01)
# MDI 2
MDI_COMMAND=(debug, example: mdi-02)
# MDI 3 M110: clears notifications
MDI_COMMAND=M110
# MDI 4
MDI_COMMAND=(debug, example: mdi-04)
# MDI 5
MDI_COMMAND=(debug, example: mdi-05)
# MDI 6
MDI_COMMAND=(debug, example: mdi-06)
# MDI 7 M101: example print to stdout
MDI_COMMAND=M101
# MDI 8
MDI_COMMAND=(debug, example: mdi-08)
# MDI 9
MDI_COMMAND=(debug, example: mdi-09)
# MDI 10
MDI_COMMAND=(debug, example: mdi-10)
# MDI 11
MDI_COMMAND=(debug, example: mdi-11)
# MDI 12
MDI_COMMAND= G10 L20 P0 X0
# MDI 13
MDI_COMMAND= G10 L20 P0 Y0
# MDI 14
MDI_COMMAND= G10 L20 P0 Z0
# MDI 15
MDI_COMMAND= G10 L20 P0 C0
# MDI 16 - Probe tool length
MDI_COMMAND= O<tool_len> call

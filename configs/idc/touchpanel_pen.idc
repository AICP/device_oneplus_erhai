# Pen Pressure Fix for OnePlus Pad 3
# Scales pressure from 65536 to 1 
# for some reason without a .idc the pressure goes from 0-4 in android but with a .idc it goes from 0-65536
# not super sure why but it works so I'm not questioning it
# Created for AICP/LineageOS on OnePlus Pad 3

# Device properties
device.internal = 1
touch.deviceType = stylus
touch.orientationAware = 1

# Pressure calibration
# NT36536 reports 0-65536, Android expects 0-1
touch.pressure.calibration = physical
touch.pressure.scale = 0.000015305
touch.pressure.bias = 0

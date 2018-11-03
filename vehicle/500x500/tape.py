import math
import sys
d=125
x=float(sys.argv[1])
y=float(sys.argv[2])/2
	#5m:	22.73  30.69  38.65  46.6  62.52
	#xl:	18.89  23.75  25.36  28.61  31.83  39.92  48  64.17
rad=2*math.acos((x-y)/d)
aaa=2*math.sqrt(d*d-(x-y)**2) + x*(2*math.pi-rad) + y*rad
print(rad)
print(aaa)

x = 17

while True :
	print(x, (x>>2) & 15)
	input()
	x = (5*x+3) & 255

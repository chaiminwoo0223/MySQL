# 위젯 활용
from tkinter import *

root = Tk()

button1 = Button(root, text="혼공1")
button2 = Button(root, text="혼공2")
button3 = Button(root, text="혼공3")

button1.pack(side=LEFT) # LEFT, RIGHT, TOP, BOTTOM
button2.pack(side=LEFT) # LEFT, RIGHT, TOP, BOTTOM
button3.pack(side=LEFT) # LEFT, RIGHT, TOP, BOTTOM

root.mainloop()

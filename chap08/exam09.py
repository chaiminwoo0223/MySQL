# 프레임, 엔트리, 리스트 박스
from tkinter import *

root = Tk()
root.geometry("200x500")

# 프레임: 화면을 여러 구역으로 나눌 때 사용
upFrame = Frame(root)
upFrame.pack()
downFrame = Frame(root)
downFrame.pack()

# 엔트리: 입력 상자를 표현
editBox = Entry(upFrame, width=10)
editBox.pack(padx=20, pady=20)

# 리스트 박스: 목록을 표현
listBox = Listbox(downFrame, bg="yellow")
listBox.pack()

listBox.insert(END, "하나")
listBox.insert(END, "둘")
listBox.insert(END, "셋")

root.mainloop()

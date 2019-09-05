#comment1
def func():
  i = 1
def main():
  #comment2
  func()
  string = "#comment1{1}def func():{1}  i = 1{1}def main():{1}  #comment2{1}  func(){1}  string = {2}{0}{2}{1}  print(string.format(string, chr(10), chr(34))){1}main()"
  print(string.format(string, chr(10), chr(34)))
main()

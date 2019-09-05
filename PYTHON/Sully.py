import os
def main():
  s = "import os{1}def main():{1}  s = {2}{0}{2}{1}  i = {3}{1}  if not __debug__:{1}    i -= 1{1}  if i < 0:{1}    return{1}  with open({2}Sully_{4}{5}.py{2}.format(i), {2}w{2}) as f:{1}    f.write(s.format(s, chr(10), chr(34), i, chr(123), chr(125))){1}  os.system({2}python -O Sully_{4}{5}.py{2}.format(i)){1}main(){1}"
  i = 5
  if not __debug__:
    i -= 1
  if i < 0:
    return
  with open("Sully_{}.py".format(i), "w") as f:
    f.write(s.format(s, chr(10), chr(34), i, chr(123), chr(125)))
  os.system("python -O Sully_{}.py".format(i))
main()

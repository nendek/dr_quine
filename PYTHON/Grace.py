#comment
s = "#comment{1}s = {2}{0}{2}{1}def write_s(f):{1}  f.write(s.format(s, chr(10), chr(34))){1}def main():{1}  with open({2}Grace_kid.py{2}, {2}w{2}) as f:{1}    write_s(f){1}main(){1}"
def write_s(f):
  f.write(s.format(s, chr(10), chr(34)))
def main():
  with open("Grace_kid.py", "w") as f:
    write_s(f)
main()

;array declaration
include 'EMU8086.INC'
.model small
.stack 100h
.data 
      number db 0,1 2,3,4,5,6
      number2 db 10 dub(?)
      number3 db 10 dub(0)
      
      tst db 5 ,4,3 dup(2,3 dup(4));4 3 2 4 4 4 2 4 4 4 2 4 4 4
      

.code
main proc
    


end main
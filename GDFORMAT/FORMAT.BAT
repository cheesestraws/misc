rem build format

\tools\cp68 format.c format.i
\tools\c068 format.i format.1 format.2 format.3 -f 
\tools\c168 format.1 format.2 format.s 
era  format.1
era format.2
\tools\as68 -l -s \tools\ -u format.s 
era  format.s

\tools\link68 format.rel = format,mini
\tools\relmod format.rel format.prg


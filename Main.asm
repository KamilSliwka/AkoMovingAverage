.686
.model flat
public _programowanie_sredniej_kroczacej

.data
   wartosc dd 0.6;wartosc graniczna
.code
_programowanie_sredniej_kroczacej proc
push ebp
mov ebp,esp
push ebx
push edx
push esi
push edi
mov eax,[ebp+8];tablica
mov ebx,[ebp+12];k
mov ecx,[ebp+16];m
sub ebx,ecx
inc ebx; ile max sredniech bedzie
mov edi,ebx
mov edx,-1
finit
fldz
mainptl:;glowna petla programu

inc edx
mov ecx,[ebp+16];m
ptl:;petla liczaca srednia z kolejnych 3 liczb
mov esi,[eax+4*edx]
inc edx
push esi
fld dword ptr[esp]
add esp,4
fadd ;suma

loop ptl

fild dword ptr [ebp +16]
fdiv;srednia
cmp ebx,edi
jz next
fsub st(1),st(0)
fxch
fabs
fld dword ptr wartosc
fcomi st(0),st(1);sprawdznie warunku jesli roznica
;bezwzgledna dwuch kolejnych srednich mniejsza od 0.6 jako 
;wynik zwaramy ostatnia srednia
fstp st(0)
fstp st(0)
ja koniec
next:
fldz
sub edx,[ebp+16];m
dec ebx
cmp ebx,0
jnz mainptl
fstp st(0);rezultat na wieszcholku stosu koprocesora
koniec:

inc eax
pop edi
pop esi
pop edx
pop ebx
pop ebp
ret
_programowanie_sredniej_kroczacej endp 
END



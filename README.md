# julia-projects
tutorial za juliu: https://www.youtube.com/watch?v=uiQpwMQZBTA&list=LL&index=1

UPUTE KAKO POKRENUTI PROGRAM
1. Instaliraj juli-u i pokreni (ili u terminalu pokreniti sa komandom julia)
2. Pri pokretanja programa potrebno je dodati
   include("C:/Users/User/Documents/WorkSpace/julia projects/diofantoveJednacine.jl")
     unutar include je adresa programa
3. Ako bi htjeli editovati program potrebno je instalirati VS code i juli-a ekstenziju poslije toga potrebno je ponovno instalirati juliu (obicnu) i spojiti path na VS codu (bukvalno adresu prepisati gdje smo instalirali julia.exe)
4. Kada se pokrene program potrebno je pozvati edekvatno funkcije sa parametrima ako su potrebni
   npr. julia> funk(1,2,3)
   Inace ce se program citav izvrsiti

UPUTE ZA DiofantoveJednacine.jl
  //PROGRAM NIJE ZAVRSEN ALI NEKE STVARI IPAK RADE
1. LDF funkcija se koristi za rjesavanje linearnih diofantovi jednacina
   LDF(a,b,c) gdje je aX + bY = c
   funkcija radi ali je potrebno je reducirati kada je NZD(a,b)>1
2. LK funkcija se koristi za rjesavanje linearnih kongurencija uz pomoc LDF funkcije
   LK(a,k,m) gdje je a*X ≡ k (mod m)
   funkcija radi ali ima isti problrm kao i LDF (mozda se samo skrati a ali ne m)
3. SLK funkcija se koristi za rjesavanje sistema linearnih kongurencija
   SLK(map) gdje je map  niz mapa od 3 elementa [(a,b,c),(a,b,c),...]
   ova funkcija ne daje tacne rezultate trenutno je jos pisem...
    

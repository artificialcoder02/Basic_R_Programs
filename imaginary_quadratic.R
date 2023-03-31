result<-function(a,b,c){
  if (delta(a,b,c)>0){
    x_1=(-b+sqrt(delta(a,b,c)))/(2*a)
    x_2=(-b-sqrt(delta(a,b,c)))/(2*a)
    print("The real roots of the equation are:")
    result=c(x_1,x_2)
    
  }
  else if(delta(a,b,c)==0){
    x=-b/(2*a)
  }
  else {"There are no real roots."}
}

complicated<-function(a,b,c){
  if(delta(a,b,c))
  #-b/2a + i  square root(D)/2a
  d=b^2 - 4*a*c 
  complex_1= -b/(2*a)
  complex_2=sqrt(d)/2*a
  print(complex_1+"i"+complex2)
}

#constructing delta function
delta<-function(a,b,c){
  b^2-4*a*c
}

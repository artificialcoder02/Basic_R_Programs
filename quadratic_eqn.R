result<-function(a,b,c){
  if (delta(a,b,c)>0){
    x_1=(-b+sqrt(delta(a,b,c)))/(2*a)
    x_2=(-b-sqrt(delta(a,b,c)))/(2*a)
    result=c(x_1,x_2)
  }
  else if(delta(a,b,c)==0){
    x=-b/(2*a)
  }
  else {"There are no real roots."}
}

#constructing delta function
delta<-function(a,b,c){
  b^2-4*a*c
}

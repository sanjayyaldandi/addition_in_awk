{
  split($0,addition,"")

  for(i=1;i<=length(addition);i++){
    total_addition[i]+= addition[i]
  }
}
END{
  extra_digit=length(total_addition)
  for(j=extra_digit;j>=1;j--){
    total_addition[j-1]+=int(total_addition[j]/10)
  }

  printf total_addition[1] 
  for(j=2;j<=length(addition);j++){
    printf total_addition[j]%10
  }
}

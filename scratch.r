```{r}

prComp <- prcomp(na.omit(train_data[,sapply(train_data,is.numeric)]))

prComp <- prcomp(train_data)
summary(prComp)
plot(prComp, type="lines")

```


transform(train_data,
          win_ind = ave(new_window=="yes", FUN = function(x) {
            cumsum(x) }))


pml_write_files = function(x){
  n = length(x)
  for(i in 1:n){
    filename = paste0("problem_id_",i,".txt")
    write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}
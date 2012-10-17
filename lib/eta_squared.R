eta.2 = function(aov.mdl, ret.labels = FALSE){
  eta.2vector = c()
  labels = c()
  for (table in summary(aov.mdl)){   #each block of factors
    SS.vector = table[[1]]$"Sum Sq"  #table is a list with 1 entry, but you have to use [[1]] anyway
    last = length(SS.vector)
    labels = c(labels, row.names(table[[1]])[-last])   #all but last (error term)
    for (SS in SS.vector[-last]) { #all but last entry (error term)
      new.etaval = SS / (SS + SS.vector[last])
      eta.2vector = c(eta.2vector, new.etaval)
    }
  }
  if (ret.labels) return(data.frame(eta.2 = eta.2vector, row.names = labels))
  return(eta.2vector)
}


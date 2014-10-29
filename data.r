coronary.dat <- read.table('coronary.txt', header=T)
rhc.dat <- read.csv('rhc-small.txt', header=T)
rhc_small.dat <- rhc.dat[sample(1:dim(rhc.dat)[1], 1000),]

observed <- table(rhc.dat)

graph <- matrix(c(0, 0, 1, 0, 0, 0, 0, 1, 0, 1,
                  0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
                  1, 0, 0, 1, 0, 0, 0, 0, 1, 1,
                  0, 0, 1, 0, 0, 1, 0, 0, 0, 0,
                  0, 0, 0, 0, 0, 0, 1, 0, 1, 1,

                  0, 0, 0, 1, 0, 0, 1, 1, 1, 0,
                  0, 1, 0, 0, 1, 1, 0, 0, 0, 0,
                  1, 1, 0, 0, 0, 1, 0, 0, 0, 0,
                  0, 1, 1, 0, 1, 1, 0, 0, 0, 0,
                  1, 1, 1, 0, 1, 0, 0, 0, 0, 0), 10)


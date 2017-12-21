library(foreign)
library(readr)
df <- read_csv("~/Documents/GitHub/Quantitative Economics/edata.csv")
head(df)
coplot(Total ~ year|city, type="l", data=df)
require(ggplot2)

agri <- ggplot(df, aes(x=Agriculture, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  guides(col = guide_legend(nrow = 5)) + 
  theme(legend.position="none")


con <- ggplot(df, aes(x=Construction, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

man <- ggplot(df, aes(x=Manufacturing, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

wsale <- ggplot(df, aes(x=Wholesale, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

retail <- ggplot(df, aes(x=Retail, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

trans <- ggplot(df, aes(x=Transportation, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

info <- ggplot(df, aes(x=Information, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")
FIRE <- ggplot(df, aes(x=FIRE, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")

ggarrange(agri,con,man,wsale,ncol = 2)
ggarrange(retail,trans,info,FIRE,ncol = 2)

npser <- ggplot(df, aes(x=Other_non_public_Services, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")
edu <- ggplot(df, aes(x=	Educational, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")
arts <- ggplot(df, aes(x=	Arts, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")
names(df) <- gsub(" ","_",names(df))
names(df) <- gsub("-","_",names(df))
pser <- ggplot(df, aes(x=	Public_Services, y=Total, color=city)) +
  geom_point() + xlim(0, 50000) + ylim(100000, 500000) +
  theme(legend.position="none")
ggarrange(edu,arts,npser,pser,ncol = 2)

techonology <- ggplot(df, aes(x=STEM, y=Total, color=city)) +
  geom_point() + xlim(0, 100000) + ylim(100000, 500000) + geom_smooth(method=glm)+
  guides(col = guide_legend(nrow = 10)) 
techonology


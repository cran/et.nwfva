## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE--------------------------------------------------------
library(et.nwfva)

## ----et_bonitaet--------------------------------------------------------------
# Bonitätsschätzung: Ausgabe der relativen Ertragsklasse
et_bonitaet(art="Buche", alter=70, hoehe=29.1, hoehe_typ="ober")

## ----et_bontrans--------------------------------------------------------------
# Umrechnung von rel. Ertragsklasse in abs. Oberhöhenbonität
et_bontrans("bu", bon=0.18, richtung="rel_zu_abs")

## ----tafel-Interpolation------------------------------------------------------
et_tafel(art="Dgl", alter=37, bon=0.3)

## ----tafel_extrapolation------------------------------------------------------
et_tafel(art="Dgl", alter=140, bon=1.0)

## ----Beispiel_Abbildung, fig.width=7, fig.height=5----------------------------

# Beispielhafte Abbildung des Zuwachses über dem Alter 
# laut Buchen-Ertragstafel für die -I. bis III. Ekl.

bu <- et_tafel(art="Bu")

plot(0, 0, type='n', xlim=c(20, 150),ylim=c(0, 20),
     xlab="Alter [a]", ylab="iV [m³/ha/a]")

grid(nx=NULL, ny=NULL, col="lightgray", lty="dotted")

lines(iV ~ Alter, data=bu[bu$Ekl == -1, ], col="black", lwd=2)
lines(iV ~ Alter, data=bu[bu$Ekl == 0, ], col="tan4",  lwd=2)
lines(iV ~ Alter, data=bu[bu$Ekl == 1, ], col="tan3",  lwd=2)
lines(iV ~ Alter, data=bu[bu$Ekl == 2, ], col="tan2",  lwd=2)
lines(iV ~ Alter, data=bu[bu$Ekl == 3, ], col="tan1",  lwd=2)

legend("bottomright", inset=0.01, box.lty=0,
       legend=c("-1. Ekl","0. Ekl", "1. Ekl", "2. Ekl","3. Ekl"),
       col=c("black","tan4", "tan3", "tan2", "tan1"), 
       lty=1, lwd=2, cex=0.8)


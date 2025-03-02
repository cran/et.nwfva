## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = FALSE,
  fig.width=8, fig.height=5
)

## ----setup--------------------------------------------------------------------
library(et.nwfva)

plotte_bonfaecher <- function(art, hoehe_typ, max_alter=170, step_alter=5, ekls=NA){
  
  et <- et_tafel(art)
  if(any(is.na(ekls)))
    ekls <- sort(unique(et$Ekl))
  
  # Matrix mit Hg für alle Ekl für 5-150 Jahre
  df <- expand.grid(alter=c(seq(0, 18, 2), seq(20, max_alter, step_alter)), ekl=ekls)
  
  df$h_funk <- suppressWarnings(suppressMessages( 
    et_hoehe(art, df$alter, df$ekl, bon_typ="relativ", hoehe_typ, methode="funk")))
  
  df$h_klass <- NA
  df$h_klass[df$ekl >= -2 & df$ekl <= 4] <- suppressWarnings(suppressMessages( 
    et_hoehe(art, 
             alter=df$alter[df$ekl >= -2 & df$ekl <= 4], 
             bon=df$ekl[df$ekl >= -2 & df$ekl <= 4], 
             bon_typ="relativ", hoehe_typ, methode="klass")))
  
  max_h <- max(df$h_klass, df$h_funk, na.rm=TRUE)
  
  # plot
  op <- par(mar=c(2.5,2.5,0.5,0.5), mgp=c(1.5,0.5,0), tcl=-0.3)
  
  plot(0,0, type="n",  xaxt='n', yaxt='n',
       xlim=c(0, max_alter), ylim=c(0, max_h),
       xlab="Alter (a)", ylab="Höhe (m)")
  
  axis(side=1, at=seq(10, max_alter, 20), labels=FALSE, lwd=0, lwd.ticks=1, tcl=par('tcl')*2/3)
  axis(side=1, at=seq(0, max_alter, 20), gap.axis=0.1, lwd=0, lwd.ticks=1)
  axis(side=2, at=seq(5, max_h, 10), labels=FALSE, lwd=0, lwd.ticks=1, tcl=par('tcl')*2/3)
  axis(side=2, at=seq(0, max_h, 10), gap.axis=0.1, lwd=0, lwd.ticks=1)
  
  matlines(x=unique(df$alter), y=matrix(df$h_funk, ncol=length(ekls)), col="#3465a4", lty=1)
  matlines(x=unique(df$alter), y=matrix(df$h_klass, ncol=length(ekls)), col="#73d216", lty=1)
  matpoints(x=et$Alter, y=(if(hoehe_typ=="mittel") et$Hg else et$H100), 
            col='gray10', pch=1, cex=0.5, lwd=0.8)
  
  mtext(paste0("Bestandes", hoehe_typ, "höhen\n", art, ", ",
               min(ekls), ". bis ", max(ekls), ". Ekl."), side=3, line=-2.1, adj=0.02)
  legend("bottomright", inset=0.01, bty="o", box.col=NA,
         legend = c("Tafelwerte",
                    "klass. Interpolation", 
                    "funkt. Interpolation"),
         col=c("gray10", "#73d216", "#3465a4"), 
         pch=c(1, NA, NA), cex=0.8, lwd=c(1,2,2), lty=c(NA, 1, 1))
  
  par(op)
}

## ----Ei_H100------------------------------------------------------------------
plotte_bonfaecher(art="Eiche", hoehe_typ="ober", max_alter=230, ekls=-3:7)

## ----Ei_Hg--------------------------------------------------------------------
plotte_bonfaecher(art="Eiche", hoehe_typ="mittel", max_alter=230, ekls=-3:7)

## ----Bu_H100------------------------------------------------------------------
plotte_bonfaecher(art="Buche", hoehe_typ="ober", max_alter=190, ekls=-3:7)

## ----Bu_Hg--------------------------------------------------------------------
plotte_bonfaecher(art="Buche", hoehe_typ="mittel", max_alter=190, ekls=-3:7)

## ----Fi_H100------------------------------------------------------------------
plotte_bonfaecher(art="Fichte", hoehe_typ="ober", max_alter=170, ekls=-3:7)

## ----Fi_Hg--------------------------------------------------------------------
plotte_bonfaecher(art="Fichte", hoehe_typ="mittel", max_alter=170, ekls=-3:7)

## ----Dgl_H100-----------------------------------------------------------------
plotte_bonfaecher(art="Douglasie", hoehe_typ="ober", max_alter=170, ekls=-3:7)

## ----Dgl_Hg-------------------------------------------------------------------
plotte_bonfaecher(art="Douglasie", hoehe_typ="mittel", max_alter=170, ekls=-3:7)

## ----Ki_H100------------------------------------------------------------------
plotte_bonfaecher(art="Kiefer", hoehe_typ="ober", max_alter=170, ekls=-3:7)

## ----Ki_Hg--------------------------------------------------------------------
plotte_bonfaecher(art="Kiefer", hoehe_typ="mittel", max_alter=170, ekls=-3:7)


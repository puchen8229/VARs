% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/VARs.R
\name{VARest}
\alias{VARest}
\title{Estimation of VAR(p)}
\usage{
VARest(res)
}
\arguments{
\item{res}{:a list containing the components which are the output of VARData including as least: n, p, type, Y and optionally X and type.}
}
\value{
res  :a list like the input, but filled with estimated parameter values, AIC, BIC and LH
}
\description{
This function estimates the unknown parameters of a specified VAR(p) model based on provided data.
}
\examples{
res_d = VARData(n=2,p=2,T=100,type="const")  
res_e = VARest(res_d) 
summary(res_e$varp)
IRF = irf(res_e$varp,nstep=20)
plot(IRF)

res_d = VARData(n=2,p=2,T=100,Co=matrix(c(0,0,1,1),2,2),type="exog0",X=c(1:100))
str(res_d)
res_e = VARest(res=res_d)
summary(res_e$varp)
IRF = irf(res_e$varp,nstep=20,boot=FALSE)
plot(IRF)



}

if(FALSE) {
    library(devtools)
    library(Rcpp)

    tic <- Sys.time()
    setwd("/home/rgiordan/Documents/git_repos/glmGamPoi")
    Rcpp::compileAttributes(".")
    devtools::install_local(".", force=TRUE, upgrade="never")
    tic <- Sys.time() - tic
    print(tic)
}


library(glmGamPoi)

counts <- rnbinom(n = 10, mu = 5, size = 1/0.7)

# design = ~ 1 means that an intercept-only model is fit
fit <- glm_gp(counts, design = ~ 1)
fit

# Internally fit is just a list:
as.list(fit)[1:2]

glmGamPoi::fitBeta_diagonal_fisher_scoring
glmGamPoi::jingleJangle


glmGamPoi::fisher_scoring_qr_step_export

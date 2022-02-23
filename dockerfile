FROM rocker/verse:latest

RUN R -e "install.packages('profvis')"
RUN R -e "install.packages('R.utils')"
RUN R -e "install.packages('styler')"
RUN R -e "install.packages('rjson')"

RUN R -e "install.packages('BiocManager')"
RUN R -e "BiocManager::install('scater')"
RUN R -e "BiocManager::install('DESeq2')"

RUN R -e "install.packages('uwot')"
RUN R -e "install.packages('Seurat')"
RUN R -e "install.packages('sigmoid')"
RUN R -e "install.packages('minpack.lm')"
RUN R -e "install.packages('nls2')"
RUN R -e "install.packages('foreach')"
RUN R -e "install.packages('doParallel')"
RUN R -e "install.packages('doMC')"
RUN R -e "install.packages('logger')"
RUN R -e "install.packages('ggpubr')"

COPY docker-setup.sh .
RUN chmod +x docker-setup.sh
RUN ./docker-setup.sh

RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('roxygen2')"
RUN R -e "install.packages('testhat')"
RUN R -e "install.packages('knitr')"
RUN R -e "install.packages('formatR')"
RUN R -e "install.packages('renv')"
RUN R -e "install.packages('styler')"
RUN R -e "install.packages('lintr')"
RUN R -e "install.packages('rmarkdown')"
RUN R -e "install.packages('markdown')"
RUN R -e "install.packages('covr')"
RUN R -e "install.packages('covr')"

RUN R -e "BiocManager::install('splatter')"

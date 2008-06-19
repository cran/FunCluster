\name{FunCluster.R-package}
\alias{FunCluster.R-package}
\docType{package}
\title{Functional Profiling of Microarray Expression Data}
\description{
          FunCluster performs a functional analysis of microarray expression data based on Gene Ontology
          & KEGG annotations. FunCluster is designed to build functional classes of putatively co-regulated
	  biological processes through a specially designed clustering procedure relying on expression
	  data and functional annotations.
}
\details{
          Together with the FunCluster algorithm this package provide also:\cr
	            1. GO and KEGG annotations (as of June 2008) automatically extracted from their respective web resources\cr\cr
	            2. The routine for the automated extraction and update of the functional annotations from their respective
	            		web resources. The use of this routine is simple: \code{annotations(date.annot = "")}. Under common
	            		circumstances these routine will provide up-to-date annotations, stored into environmental variables,
	            		directly formatted for FunCluster's use. Some errors may be seen when using this routine related to a
	            		lack of availability of the GO annotations for the current month. In case of extraction errors, 
	            		explained most usually by a delay in updating GO web servers, the release date can be expressly 
	            		indicated (see \code{\link{annotations}}).\cr\cr
	            3. The two test data sets used for the JBCB paper (see examples below). The first data set is related to the 
	            		dichotomous functional analysis of the genes specifically expressed within adipocytes and stroma 
	            		vascular fraction (SVF) cells, extracted from adipose tissue of morbidly obese subjects (see 
	            		submitted paper and cited reference for further details). Two lists of transcripts significantly
	            		expressed within adipocytes and SVF cells respectively are provided together with the list of all
	            		initial transcripts available for the analysis (necessary for the accurate computation of transcript
	            		enrichment during automated annotation of transcript expression data performed by FunCluster). 
	            		The second data set is structured in a similar way and is containing the hyperinsulinemic muscle
	            		clamp expression data. \cr
	            		
	            The format of the data files should be respected in order to perform a successful analysis. All the files are 
	            		tab separated text files which can be easily obtained from Excel data. The only transcript 
	            		identification system acceptable for FunCluster analysis is EntrezGene GeneID's. Please see more 
	            		details on this choice in the JBCB paper. The transcript expression data within the tab
	            		separated text files is organized within rows, one for each transcript, and columns with the 
	            		first one containing the transcript identifiers for each transcript and the rest of them 
	            		containing the expression level of that transcript in each of the available microarray samples. 
	            		See test data and JBCB paper for more details.\cr
	  
	            The results of the FunCluster analysis of transcript expression data are stored as tab separated text files in 
	            		the "Results" subfolder of the working folder. For each type of available biological annotations 
	            		and for each list of transcript expression data to be analyzed (one or two), FunCluster provides 
	            		a ranked list with the significant functional clusters observed, stored within a separate text file. 
	            		Detailed findings on the terminological composition and transcript enrichment significance of the 
	            		resulting functional clusters are provided. In order to correctly access results files the best 
	            		approach is to use Microsoft Excel XP or later (English version) as these files were specifically
	            		formatted for Excel use. Other tabular data processing software can also be used to read these files,
	            		although accessibility will be less optimal. Some difficulties in correctly accessing results files
	            		may be observed with older versions of Microsoft Excel (prior to XP version), as well as with Excel 
	            		versions in other languages than English.
}
\author{
          Corneliu Henegar \email{corneliu@henegar.info}
}
\references{
          1. Henegar C, Cancello R, Rome S, Vidal H, Clement K, Zucker JD. Clustering biological annotations and gene 
	            	expression data to identify putatively co-regulated biological processes. J Bioinform Comput Biol.
	            	2006 Aug;4(4) :833-52.
                    
          2. Cancello R, Henegar C, Viguerie N, Taleb S, Poitou C, Rouault C, Coupaye M, Pelloux V, Hugol D, Bouillot JL, 
          		Bouloumie A, Barbatelli G, Cinti S, Svensson PA, Barsh GS, Zucker JD, Basdevant A, Langin D, 
          		Clement K. Reduction of macrophage infiltration and chemoattractant gene expression changes in 
          		white adipose tissue of morbidly obese subjects after surgery-induced weight loss. 
          		Diabetes 2005; 54(8):2277-86.

          3. FunCluster website: \url{http://corneliu.henegar.info/FunCluster.htm}
}
\keyword{ cluster }

\seealso{
            \code{\link{cluster}}.
}
\examples{
          \dontrun{
          ## most common use
          FunCluster(go.direct = FALSE, alpha = 0.05, clusterm = "cc",
          		      org = "HS", location = FALSE, compare = 
          		      "common.correl.genes", corr.th = 0.85, 
          		      corr.met = "greedy", two.lists = TRUE, 
          		      restrict = TRUE)
          
          ## when only GO direct annotations are to be used and detailed 
          findings are needed
          FunCluster(go.direct = TRUE, alpha = 0.05, clusterm = "cc",
          		      org = "HS", location = FALSE, compare = 
          		      "common.correl.genes", corr.th = 0.85, 
          		      corr.met = "greedy", two.lists = TRUE, 
          		      restrict = TRUE, details = TRUE)
          
          ## hierarchical agglomerative clustering and Silhouette computations 
          can be used for the preliminary step of building clusters of 
          co-expressed transcripts
          FunCluster(go.direct = TRUE, alpha = 0.05, clusterm = "cc",
          		      org = "HS", location = FALSE, compare = 
          		      "common.correl.genes", corr.th = 0.85, 
          		      corr.met = "hierarchical", two.lists = TRUE, 
          		      restrict = TRUE)

          ## use only common annotated transcripts for the annotation clustering  
          FunCluster(go.direct = FALSE, alpha = 0.05, clusterm = "cc",
          		      org = "HS", location = FALSE, compare = 
          		      "common. genes",
          		      two.lists = TRUE, restrict = TRUE)

          ## the following example forces the use of a previous GO release 
          (e.g. January 2006) for updating annotations
          annotations(date.annot = "200601")
          }
}

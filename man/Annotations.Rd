  \name{Annotations}
          \alias{annotations}
          \title{Functional Profiling of Microarray RNA Expression Data}
          \description{
            This routine belongs to the package FunCluster and performs an automated extraction 
            and update of the Gene Ontology & KEGG annotations which are needed for FunCluster analysis. 
          }
          \usage{
          annotations(date.annot = "")
          }
          \arguments{
            \item{date.annot}{allows to specify the GO release to be used for annotations update.
            			It has no effect on KEGG annotations.}
          }
          \details{For details concerning FunCluster please see FunCluster help or man page \code{help(FunCluster)}.
          		The "Annotations" routine is allowing the automated extraction and update of the functional
          		annotations from their respective web resources. Under common circumstances these routine will
          		provide up-to-date annotations, stored into environmental variables and directly formatted for
          		FunCluster use. Some errors may be seen when using this routine, related to the availability of
          		GO annotations for the current month. In case of extraction errors, explained most usually by a
          		delay in updating GO web servers, the date of the GO release to be used can be expressly indicated
          		through the parameter \code{annot.date} (see example below). The transcript identification system
          		used for FunCluster analysis is EntrezGene GeneID's. Please see more details on this choice within
          		the JBCB paper.\cr
          		
            		Important note for Microsoft Windows users: in order to use this routine you will need additional
            		software for handling TAR and GZIP archives. Such software is available for Windows under the 
            		GNU license.\cr
            		
            		For TAR packages you can go to: \cr
            		\url{http://gnuwin32.sourceforge.net/packages/tar.htm}. 
            		Please do not forget to place the TAR executable and its dependencies (DLL's) 
            		somewhere into the PATH (like "C:/Windows" for example).
            		For GZIP you can go to: \cr
            		\url{http://gnuwin32.sourceforge.net/packages/gzip.htm}.
            		The same observation as for the TAR executables and dependencies applies also here.
            }
          \references{
          1. Henegar C, Cancello R, Rome S, Vidal H, Clement K, Zucker JD. Clustering biological annotations and gene 
          		expression data to identify putatively co-regulated biological processes. J Bioinform Comput Biol.
          		2006 Aug; 4(4) (in press).
          
          2. Cancello R, Henegar C, Viguerie N, Taleb S, Poitou C, Rouault C, Coupaye M, Pelloux V, Hugol D, Bouillot 
          		JL, Bouloumie A, Barbatelli G, Cinti S, Svensson PA, Barsh GS, Zucker JD, Basdevant A, Langin D,
          		Clement K. Reduction of macrophage infiltration and chemoattractant gene expression changes in 
          		white adipose tissue of morbidly obese subjects after surgery-induced weight loss. 
          		Diabetes 2005; 54(8):2277-86.

          3. FunCluster website: \url{http://corneliu.henegar.info/FunCluster.htm}
          }
          \note{
          This package is related to a paper submitted to the Journal of Bioinformatics and Computational Biology: 
          	Henegar C, Cancello R, Rome S, Vidal H, Clement K, Zucker JD. Clustering biological annotations and 
          	gene expression data to identify putatively co-regulated biological processes.
          }
          \seealso{
            \code{\link{FunCluster}}.
          }
          \examples{
          \dontrun{
          ## the following example forces the use of a previous GO release 
          (e.g. January 2006) for updating annotations;
          KEGG annotations are not affected by this parameter.
          annotations(date.annot = "200601")
          }}
          \keyword{cluster}

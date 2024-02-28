%\NeedsTexFormat{LaTeX2e}
\ProvidesClass{template_naveen}[2011/09/18 Insti Standard Template CV]
%\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
%\setlength{\textwidth}{6.5in}
%\setlength{\textheight}{8in}
%Loads the article class as the base template for further changes
\LoadClass[a4paper]{article}
%Following are all the packages required for this class file
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage[hmargin=0.5in, vmargin=0.3in]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{multicol}
\RequirePackage{array}
\usepackage{fontawesome5}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[letterspace=50]{microtype}
\usepackage{color, colortbl, xcolor}
\usepackage{hyperref}
\usepackage{float}
\usepackage{varwidth}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
    pdfborder={0 0 1},
    pdfborderstyle={/S/U/W 1},
    linkbordercolor=blue
    }
\RequirePackage{tabularx}
%\Requirepackage[linewidth=1pt]{mdframed}
\definecolor{pg1}{rgb}{0.65,0.82,0.81}
\definecolor{gray}{rgb}{0.8,0.8,0.8}
%Define fields that the user can set

\newcommand{\colorsection}[1]{%
    \vspace{0.8em}
    {\large \textbf{\text #1}}
    
%         \makebox[\linewidth][c]{\makebox[\dimexpr 0.95\textwidth+4em\relax][c]{%
%     \hrulefill\hspace{1em}\raisebox{-.65ex}{\begin{varwidth}{\dimexpr \textwidth-2em\relax}\centering\large\scshape\textbf{#1}\end{varwidth}}\hspace*{1em}\hrulefill}}
% % 	\colorbox{pg1}{\parbox{\textwidth}{\scshape \large #1 \strut}}
%     \vspace{0.1em}
}
	
\newcommand{\notopcolorsection}[1]{%
		
	\colorbox{pg1}{\parbox{\textwidth}{\scshape \large #1 \strut}}
	\hrule}
\makeatletter
\newcommand{\RollNumber}[1]{\def \@RollNumber {#1}}
\newcommand{\UserID}[1]{\def \@UserID {#1}}
\newcommand{\RegisterNumber}[1]{\def \@RegisterNumber {#1}}
% \newcommand{\Email}[1]{\def \@Email {  \href{mailto:#1}{\nolinkurl{#1}}      } } %%dhuredit  
\newcommand{\CourseVar}[1]{\def \@CourseVar {#1}}
\newcommand{\profile}[1]{\def \@profile {#1}}
\RollNumber{}
\UserID{}
\RegisterNumber{}
\CourseVar{}
\profile{}
\makeatother

%Defines how the title will look
\makeatletter
\def \maketitle{% 
	\thispagestyle{empty}
	\pagestyle{empty}
	\begin{minipage}[0.99\textwidth]{0.98\textwidth}
		\centering \vspace{-0.3em}
		 {\text{\Large \textbf{\@author}}
		\vspace{0.2em}}

        {\normalsize
        % \href{mailto:gnaveen1509@gmail.com}{gnaveen1509@gmail.com} $\vert$ +1 (945) 527 5193 $\vert$ 7220 McCallum Blvd, Apt 503, Dallas, TX 75252
        }
  
		{\normalsize \href{mailto:gnaveen1509@gmail.com}{gnaveen1509@gmail.com} $\vert$ +1 (945) 527 5193 $\vert$ \href{https://www.github.com/naveen015}{github.com/naveen015} $\vert$ \href{https://www.linkedin.com/in/naveen015/}{linkedin.com/in/naveen015}}
		\vspace{0.2em}
	\end{minipage}
	%\\[.1em] 
	  
	\vspace{-0.5em} 
}
\makeatother

%Define command to use github logo.
\makeatletter
\newcommand{\github}[1]{%
   \href{#1}{\faGithubSquare}%
}
\makeatother
%turnoff hyperlink
\newcommand*{\nolink}[1]{%
  \begin{NoHyper}#1\end{NoHyper}%
}

%Define lengths that might be used later on in the document
\newlength{\EduTableOne}
\newlength{\EduTableTwo}
\newlength{\EduTableThree}
\newlength{\EduTableFour}
\newlength{\EduTableFive}

%\setlength{\fboxsep}{1pt}%
\setlength{\fboxrule}{0.1pt}%

%Create a new variable TwoColumn to check for two-column format
\newif\ifLeftTwoColumn
\newif\ifRightTwoColumn
\newif\ifTwoColumn
\newif\ifCourse

%Set paragraph indent and lengths of previously defined variables
\setlength{\parindent}{0em}
\settowidth{\EduTableOne}{Dual Degree in Mechanical Engineering}
\settowidth{\EduTableTwo}{Jawahar Higher Secondary School, Neyveli}
\settowidth{\EduTableThree}{\%/CGPA}
\settowidth{\EduTableFour}{Completion}
\settowidth{\EduTableFive}{Rank}

%Reformat section, subsection and subsubsection as needed
\titleformat{\section}{\large\scshape\raggedright\lsstyle}{}{0em}{}[\titleline{\titlerule}]
\titleformat{\subsection}{\large\raggedright}{}{0em}{}[]
%\titleformat{\subsection}{\normalsize\bf\scshape\raggedright}{}{.5em}{}
\titleformat{\minisection}{\large\raggedright}{}{0em}{}[]
\titleformat{\subsubsection}[runin]{\bf\large\raggedright}{$\vcenter{\hbox{{\tiny$\bullet$}}}$}{0em}{}

%Change the spacing options for section, subsection and subsubsection
%The first parameter specifies the gap from the margin in the default case
%and the indentation just before the title for runin
%The second parameter specifies the vertical space before the title
%The third parameter specifies the separation between title and text
\titlespacing{\section}{0em}{0.25em}{0.15em}
\titlespacing{\minisection}{0em}{0.25em}{0.15em}
\titlespacing{\subsection}{0em}{.25em}{.15em}
\titlespacing{\subsubsection}{0pt}{0em}{0em}



%Defines a new environment called Education that is dedicated for 
%creating the table for filling in details about education. The command
%\EduDetails must be used in order to enter stuff in here
\newenvironment{EducationTable}{%%
	\begin{tabular*}{0.99\textwidth}{l @{\extracolsep{\fill}} c  c r}%p{\EduTableOne} @{\extracolsep{\fill}} p{\EduTableTwo} p{\EduTableThree} p{\EduTableFour} p{\EduTableFive}
		{\scshape\lsstyle\textbf{Program}} & {\scshape\lsstyle\textbf{Institution}} & {\scshape\lsstyle \textbf{\%/CGPA}} & {\scshape\lsstyle \textbf{Completion}}\\%[0.1em] %
		}
		{
			\end{tabular*}%
		}
		      
		%Create a new environment specifically for course related content
		
		\newenvironment{Course}{%
			\TwoColumntrue
			\vspace{-1em}
			\begin{multicols}{2}
				\raggedright
				}
				{
					\end{multicols}
					\TwoColumnfalse
				}
				%\newenvironment{Course}[1]{%
				%  \LeftTwoColumntrue
				%  \RightTwoColumnfalse
				%  \Coursetrue
				%  \section{#1}
				%%  \begin{tabular*}{.8\textwidth}{p{0.4\textwidth} p{0.4\textwidth}}
				%}
				%{\end{tabular*}
				%\RightTwoColumntrue
				%\LeftTwoColumnfalse
				%\Coursefalse
				%}
				
				
%Define new commands
%Define a new dated section type (NOT needed for IITM format)
\newcommand{\minisection}{}
\newcommand{\datedsection}[2]{%
	%\vspace{-0.5em}  
	\subsection[#1]{\normalsize #1 \hfill \textbf{#2}}
	\vspace{-0.5em}
}

\newcommand{\datedminisection}[2]{%
	%\vspace{-0.5em}  
	\minisection{\normalsize  #1 \hfill \textbf{#2}}
        \vspace{-0.4em}
}

%Define a new dated subsection that can be used for filling in project 
%durations etc.
\newcommand{\datedsubsection}[2]{%
	\subsubsection[#1]{#1 \hfill #2}%
}

\newcommand{\multitable}[2]{%
	%\subsubsection[#1]{#1 \hfill #2}%
	%\fbox{
	\vspace{0em}
	\begin{minipage}[\textwidth]{0.16\textwidth}
		\raggedright  
			
		{ \bf \normalsize #1 }
			
	\end{minipage}
	\hspace{0.0001\textwidth}
	\begin{minipage}[\textwidth]{0.83\textwidth}
		{ \vspace{0.15em} \raggedright \normalsize #2 }
	\end{minipage}
	%}
	  
	%  \\[0.1em] \titlerule
	 
} 

\newcommand{\leadershipexp}[2]{
	\begin{minipage}[\textwidth]{0.11\textwidth}
		\raggedright  
			
		{ \bf \normalsize #1 }
			
	\end{minipage}
	\hspace{0.0001\textwidth}
	\begin{minipage}[\textwidth]{0.88\textwidth}
        \vspace{-0.3em}
		{ \raggedright \small #2 }
	\end{minipage}

    \vspace{0.5em}
}

\newcommand{\skilltable}[2]{%
	%\subsubsection[#1]{#1 \hfill #2}%
	%\fbox{
	\vspace{0em}
	\begin{minipage}[\textwidth]{0.33\textwidth}
		\raggedright  
			
		{ \normalsize #1 }
			
	\end{minipage}
	\hspace{0.001\textwidth}
	\begin{minipage}[\textwidth]{0.65\textwidth}
		\raggedleft
		{ \raggedright #2 }
	\end{minipage}
	%}
	  
	%  \\[0.1em] \titlerule
	 
}

\newcommand{\multitablenl}[2]{%
	%\subsubsection[#1]{#1 \hfill #2}%
	\fbox{  
		\vspace{0.1em}
		\begin{minipage}[\textwidth]{0.12\textwidth}
			\raggedright  
				
			{  \bf #1 }
				
		\end{minipage}
		\hspace{0.001\textwidth}
		\begin{minipage}[\textwidth]{0.86\textwidth}
			\raggedleft
			{ \raggedright #2 }
		\end{minipage}
	}
	 
}
%Define a new command called \Point which will take care of indentation and 
%allow you to fill in stuff inside a subsection
\newcommand{\Point}[1]{%
    \vspace{0.1em}
	\subsubsection{\tiny}%
	\raggedright
	\hangindent=0em\hangafter=1\noindent%
	\ifTwoColumn
	\parbox[t]{\textwidth}{\normalsize #1}
	\else{\hspace{0.1em}\normalsize #1}%
	\fi
	\par%
	\vspace{-0.4em}%
}
\newcommand{\subPoint}[1]{% 
	\subsubsection{\tiny}%
	\raggedright
	\hangindent=0em\hangafter=1\noindent%
	\ifTwoColumn
	\parbox[t]{\textwidth}{#1}
	\else{\hspace{0.1em} #1}%
	\fi
	\par%
}
\newcommand{\dPoint}[2]{%
	\subsubsection{}%
	\raggedright
	\hangindent=0em\hangafter=1\noindent%
	\ifTwoColumn
	\parbox[t]{.4\textwidth}{#1 \hfill #2}
	\else{\hspace{0.1em} #1\hfill#2}%
	\fi
	\par%
}
%\newcommand{\Point}[1]{%
%  %\subsubsection{}
%  \ifCourse
%    \ifLeftTwoColumn
%      
%      \begin{minipage}{.4\textwidth}
%	\subsubsection{} #1
%      \end{minipage}
%      \RightTwoColumntrue
%      \LeftTwoColumnfalse
%    %\fi
%    %\ifRightTwoColumn%
%    \else
%      \begin{minipage}{.4\textwidth}
%	\subsubsection{} #1
%      \end{minipage}
%      \RightTwoColumnfalse
%      \LeftTwoColumntrue
%    \fi
%  \else
%    \subsubsection{} 
%    \hangindent=3.45em\hangafter=1\noindent%
%    #1
%  \fi
%}


%Define the \EduDetails command that must be used inside an Education
%environment defined above
\newcommand{\EduDetails}[4]{%
	 {#1}  & {#2}  & {#3}  & {#4}\\[0.1em] %
}

\newcommand{\EduDetailsminor}[2]{
    {#1} & {#2}\\[0.1em] %
}
				


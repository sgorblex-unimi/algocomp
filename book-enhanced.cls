\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{book-enhanced}[Tweaks to book class by Alessandro "Sgorblex" Clerici Lorenzini]

\newif\if@compact
\DeclareOption{compact}{\@compacttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}

\RequirePackage[base]{babel}
\RequirePackage{graphics}

\RequirePackage{geometry}
\if@compact
	\geometry{
		paperheight=\dimexpr\textheight+8mm\relax,
		paperwidth=\dimexpr\textwidth+2mm\relax,
		left=1mm,
		top=4mm,
		right=1mm,
		bottom=4mm
	}
\else
	\geometry{includehead}
	\pagestyle{headings}
\fi

% override text parameters
\renewcommand{\baselinestretch}{1.1}

% front matter
\newcommand{\subtitle}[1]{\newcommand{\@subtitle}{#1}}
\newcommand{\logo}[1]{\newcommand{\@logo}{#1}}
\newcommand{\university}[1]{\newcommand{\@university}{#1}}
\newcommand{\dept}[1]{\newcommand{\@dept}{#1}}

\date{}
\renewcommand{\maketitle}{
	\begin{titlepage}
		\centering
		\vspace*{3cm}
		{\Huge \@title}

		\vspace*{0.5cm}

		{\Large \@subtitle}

		\vspace*{2.5cm}

		{\Large \@author}

		\vspace*{2cm}

		\ifdefined \@university
			{\large \@university}
		\fi

		\ifdefined \@dept
			{\large \@dept}
		\fi

		\ifx\@date\empty
			{v. \the\year.\the\month.\the\day}
		\else
			\@date
		\fi

		\vspace*{2cm}
		\ifdefined \@logo
		\begin{center}
			\input{\@logo}
		\end{center}
		\vfill
		\fi
		{\small Distribuito con licenza CC-BY-NC-SA}
	\end{titlepage}
}
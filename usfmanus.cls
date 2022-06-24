 %%
%% This is file `usfmanus.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% usfmanus.dtx  (with options: `class')
%%
%% IMPORTANT NOTICE:
%%
%% For the copyright see the source file.
%%
%% You are *not* allowed to modify this file.
%%
%% You are *not* allowed to distribute this file.
%% For distribution of the original source see the terms
%% for copying and modification in the file usfmanus.dtx.
%%

%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%

%Added by Ling Xu
%\usepackage{nomencl}
%\makenomenclature
%Added by Ling Xu ended



\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{usfmanus}[1999/11/12 v1999.6 ^^J
University of South Florida Manuscript Class]

\RequirePackage{setspace}

\def\thepage{\roman{page}}

\newcommand\@ptsize{}
\newif\if@frontmatter
\newif\if@copyrightpage
\@copyrightpagefalse
\newif\if@openbib
\@openbibfalse
\newif\ifvitarequired \vitarequiredfalse
\newif\if@final \@finaltrue
\newif\ifdiss \dissfalse

\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{draft}{\setlength\overfullrule{5pt}\@finalfalse}
\DeclareOption{final}{\setlength\overfullrule{0pt}\@frontmattertrue\@finaltrue}
\DeclareOption{copyright}{\@copyrightpagetrue}
\DeclareOption{frontmatter}{\@frontmattertrue}
\DeclareOption{nofrontmatter}{\@frontmatterfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{\@openbibtrue}
\DeclareOption{thesis}{
  \newcommand\reporttypeshort{thesis}
  \newcommand\reporttypelong{Master's Thesis}
}
\DeclareOption{dissertation}{
  \newcommand\reporttypeshort{dissertation}
  \newcommand\reporttypelong{Ph.D. Dissertation}
  \vitarequiredtrue % create vitapage
  \disstrue
}
\DeclareOption{vita}{
  \vitarequiredtrue % create vitapage even for MS
}
\ExecuteOptions{10pt,final,frontmatter}
\ProcessOptions

\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\pdfpageheight 11in
\pdfpagewidth 8.5in

%\paperheight 11in
%\paperwidth 8.5in
\voffset 0pt
\topmargin 0pt
\headheight 0pt
\headsep 0pt
\textheight 9.0in

\oddsidemargin 0in
\evensidemargin 0in
\marginparwidth 0.0in
\textwidth 6.5in%5.95in
\widowpenalty \@MM
\clubpenalty \@MM

\def\ps@headings{%
  \let\@oddfoot\@empty
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\markboth
  \def\chaptermark##1{%
    \markright {\uppercase{\ifnum \c@secnumdepth >\m@ne
        \@chapapp\ \thechapter. \ \fi
        ##1}}}}
\def\ps@myheadings{%
  \let\@oddfoot\@empty\let\@evenfoot\@empty
  \def\@evenhead{\thepage\hfil\slshape\leftmark}%
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\@gobbletwo
  \let\chaptermark\@gobble
  \let\sectionmark\@gobble}
\pagestyle{plain}

\newcommand\chaptermark[1]{}
\setcounter {secnumdepth}{4}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thechapter       {\arabic{chapter}}
\renewcommand\thesection       {\thechapter.\arabic{section}}
\renewcommand\thesubsection    {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\renewcommand\theparagraph     {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph  {\theparagraph.\arabic{subparagraph}}

%Edited by Anas Almunif(2019)
\newcommand\@chapapp{\chaptername}
\newcommand\chapter{%
  \clearpage
  \singlespacing
  \thispagestyle{plain}
  \global\@topnum\z@
  %\@afterindentfalse
  \@afterindenttrue
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter. #1}%
  % 1999.6 Period after chapter number removed in TOC.  HJG
  \addcontentsline{toc}{chapter}{\protect\numberline{%
        {\@chapapp\space\thechapter:}}{\hspace{-4ex}#1}}% %no uppercase (A.A) \uppercase{\@chapapp\space\thechapter}}\uppercase{#1}} and \hspace{-4ex} added
  \chaptermark{#1}%
  \@makechapterhead{#2}%
  \@afterheading}
\def\@makechapterhead#1{%
  \vspace*{0.8in}%
  {\centering
    \ifnum \c@secnumdepth >\m@ne
      \bfseries \@chapapp\space\thechapter:  %colon added in chapter name
    \fi
    \vspace*{10\p@}
    \bfseries{#1}
    \par\nobreak 
    \vspace*{20\p@}}
  % HJG: The following line controls spacing in the chapters
  \if@final
        \doublespacing
  \else
    \onehalfspacing
  \fi}
\def\@schapter#1{%
  \addcontentsline{toc}{chapter}{\protect\numberline{{#1}}}%   %No uppercase \uppercase{#1}(A.A)
  \@makeschapterhead{#1}%
  \@afterheading}
\def\@makeschapterhead#1{%
  \vspace*{10\p@}
  {\centering 
    \bfseries#1
    \par\nobreak
    \vspace*{20\p@}}}

%Edited by Anas Almunif (2019)
\newcommand\section{\@startsection {section}{1}{\z@}%
  {3.25ex \@plus -1ex \@minus -.2ex}%
  {2.3ex \@plus.2ex}%
  {\reset@font\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {3.25ex\@plus -1ex \@minus -.2ex}%
  {1.5ex \@plus .2ex}%
  {\reset@font}} %removed centering MWP %Not bolded 
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {3.25ex\@plus -1ex \@minus -.2ex}
  {1.5ex\@plus .2ex}
  {\reset@font\normalsize\itshape}} %Italic instead of \bfseries 
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {1.5ex\@plus .2ex}%{-1em}%
  {\reset@font\underline}}%\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
  {3.25ex \@plus1ex \@minus .2ex}%
  {-1em}%
  {\reset@font\normalsize\bfseries}}

\setlength\leftmargini  {2.5em}
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}

\setlength\leftmargin    {\leftmargini}
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}

\newenvironment{description}
{\list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\descriptionlabel}}
{\endlist}
\newcommand\descriptionlabel[1]{\hspace\labelsep
  \normalfont\bfseries #1}
\newenvironment{verse}
{\let\\=\@centercr
  \list{}{\itemsep      \z@
    \itemindent   -1.5em%
    \listparindent\itemindent
    \rightmargin  \leftmargin
    \advance\leftmargin 1.5em}%
\item[]}
{\endlist}
\newenvironment{quotation}
{\list{}{\listparindent 1.5em%
    \itemindent    \listparindent
    \rightmargin   \leftmargin
    \parsep        \z@ \@plus\p@}%
\item[]}
{\endlist}
\newenvironment{quote}
{\list{}{\rightmargin\leftmargin}%
\item[]}
{\endlist}
\newlength{\appendixheadheight}\setlength{\appendixheadheight}{23\p@}
\newlength{\appendixheadsep}   \setlength{\appendixheadsep}{20\p@}

\newcommand\appendix{%
  \setcounter{chapter}{0}
   \setcounter{section}{0}
  %\setcounter{section}[chapter]
  %\newcounter {subsection}[section]
%\newcounter {subsubsection}[subsection]
  %\renewcommand\thechapter{\Alph{chapter}}
  %\renewcommand\thesection{\Alph{section}}
\renewcommand\thesection       {\thechapter.\Alph{section}}
\renewcommand\thesubsection    {\thesection.\Alph{subsection}}
\renewcommand\thesubsubsection {\thesubsection.\Alph{subsubsection}}
  \newpage
  %\par\null\vfill
  %\vspace*{-0.45in}
  \vspace*{0.675in}
  \def\@appname{\appendicesname}
  \textbf{\hfill\@appname\hfill}
  %\par\vfill\par
  \addcontentsline{toc}{chapter}{\protect\numberline{%
      \uppercase{\@appname}}}
  \let\chapter=\appendixchapter
  \addtolength{\textheight}{-\appendixheadheight}
  \addtolength{\textheight}{-\appendixheadsep}}

\newcommand{\appendixchapter}[1]{%
  \clearpage
  \refstepcounter{chapter}
  \doublespacing
  \addcontentsline{toc}{appendix}{%
    \protect\numberline{%
      \appendixchaptername\space\thechapter}%
      %\hspace*{-0.25in}
    \ignorespaces{#1}}
      %\doublespacing
  \@makeappendixhead{#1}}
  %\addcontentsline{toc}{section}{\protect\numberline{}Section 1}

\newsavebox{\appendixfirsthead}
\def\ps@appendixchapterfirstpage{\relax}
\def\@makeappendixhead#1{%
  \setlength{\headheight}{\appendixheadheight}
  \setlength{\headsep}{\appendixheadsep}
  \renewcommand{\ps@appendixchapterfirstpage}{%
    \renewcommand{\@oddhead}{%
      \protect\parbox[b][\appendixheadheight][t]{\textwidth}{%
        \def\baselinestretch{1}\normalsize
        \protect %\centering % commented out centering MWP
        \textbf{\appendixchaptername\space\thechapter} %\\ commented break MWP
        \textbf{#1}}}%
    \renewcommand{\@evenhead}{\@oddhead}%
    \renewcommand{\@evenfoot}{\hfil\thepage\hfil}%
    \renewcommand{\@oddfoot}{\@evenfoot}}
  \renewcommand{\ps@plain}{%
    \renewcommand{\@oddhead}{%
      \protect\parbox[b][\appendixheadheight][t]{\textwidth}{%
        \def\baselinestretch{1}\normalsize
        \protect % \centering % commented centering MWP
                % 1999.6: "CONTINUED" changed to mixed case. HJG
        \textbf{\appendixchaptername\space\thechapter\space(Continued)}}}
    \renewcommand{\@evenhead}{\@oddhead}%
    \renewcommand{\@evenfoot}{\hfil\thepage\hfil}%
    \renewcommand{\@oddfoot}{\@evenfoot}}
  \pagestyle{plain}
  \thispagestyle{appendixchapterfirstpage}}

\def\caption{\refstepcounter\@captype \@dblarg{\@caption\@captype}}
\long\def\@caption#1[#2]#3{%
  \par\addcontentsline{\csname ext@#1\endcsname}{#1}%
  {\protect\numberline{\csname #1name\endcsname\space\csname
      %the#1\endcsname\figurenamesep\ }{\ignorespaces #2}}
      the#1\endcsname\ }{\ignorespaces #2}}
  \addtocontents{\csname ext@#1\endcsname}{\protect\vspace{10\p@}}
  \begingroup \@parboxrestore \normalsize
  \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{5\p@} %10\p@}
\setlength\belowcaptionskip{5\p@} %0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1\figurenamesep\ #2}%
  %\sbox\@tempboxa{#1\ #2}%
  \ifdim \wd\@tempboxa >\hsize
  #1\figurenamesep\ #2\par
  %#1\ #2\par
  \else
  \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\newcounter{figure}[chapter]
%\renewcommand\thefigure{\@arabic\c@figure}
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}{\@float{figure}}{\end@float}
\newenvironment{figure*}{\@dblfloat{figure}{\end@dblfloat}}

\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
%\@addtoreset {equation}{chapter}
%\renewcommand\theequation{\arabic{equation}}

\newcounter{table}[chapter]
%\renewcommand\thetable{\@arabic\c@table}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\newcommand\@pnumwidth{2.55em}
\newcommand\@tocrmarg {2.55em}
\newcommand\@dotsep{400}
\setcounter{tocdepth}{4}
\newcommand\tableofcontents{%
  \clearpage\singlespace
  \vspace*{0.65in} %Edited by Anas Almunif(2019), \vspace*{0.65in} added 
  \pagenumbering{roman}
  \global\@topnum\z@
  \@afterindentfalse
  \@makeschapterhead{\contentsname}
  \@afterheading
  \pagestyle{plain}
  \@starttoc{toc}}
\newcommand\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{3em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \bfseries #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}
    \endgroup
  \fi}
\newcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{7em}%8em}%
   %\hskip0.8\@tempdima
   %\hskip0.1\hangafter  
   \leftskip -2.3cm\relax  %this one can correctly indent the second line of chapter title in toc (A.A)
    \begingroup
      %\hyphenpenalty=10000\exhyphenpenalty=10000%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {#1}%
      \nobreak\hfil \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
      \endgroup
  \fi}
\newcommand\l@section      {\@dottedtocline{1}{0.5in}{2.3em}}
\newcommand\l@subsection   {\@dottedtocline{2}{1.0in}{3.2em}}
\newcommand\l@subsubsection{\@dottedtocline{3}{1.5in}{4.1em}}
\newcommand\l@paragraph    {\@dottedtocline{4}{2.0in}{5em}}
\newcommand\l@subparagraph {\@dottedtocline{5}{2.5in}{6em}}
\newcommand\l@appendix     {\@dottedtocline{1}{0.5in}{6.5em}}

\newcommand\listoffigures{%
 \chapter*{\vspace*{0.65in}\listfigurename       %Edited by Anas Almunif(2019)
    \@mkboth{\uppercase{\listfigurename}}{\uppercase{\listfigurename}}}%
  \vspace*{11\p@}
  \pagestyle{plain}
  \textwidth 6.5in
  \@starttoc{lof}}%
\newcommand\l@figure{\@dottedtocline{1}{0pt}{6em}} %5em}}
%\addtocontents{lof}{\linespread{2}\selectfont}


\newcommand\listoftables{%
  \chapter*{\vspace*{0.65in}\listtablename %Edited by Anas Almunif(2019), \vspace*{0.65in} added 
    \@mkboth{\uppercase{\listtablename}}{\uppercase{\listtablename}}}%
  %\vspace*{11\p@}
  \pagestyle{plain}
  \@starttoc{lot}}%
\let\l@table\l@figure

\newdimen\bibindent
\bibindent=1.4em %changed MWP from 1.5em
\newenvironment{thebibliography}[1]
{\chapter*{\vspace*{0.65in}\bibname %Edited by Anas Almunif(2019), \vspace*{0.65in} added
    \@mkboth{\uppercase{\bibname}}{\uppercase{\bibname}}}%
  \vspace*{\baselineskip}
  \list{\@biblabel{\arabic{enumiv}}}%
  {\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \if@openbib
    \advance\leftmargin\bibindent
    \itemindent -\bibindent
    \listparindent \itemindent
    \parsep \z@
    \fi
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\arabic{enumiv}}}%
  \if@openbib
  \renewcommand\newblock{\par}
  \else
  \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
  \fi
  \sloppy\clubpenalty4000\widowpenalty4000%
  \sfcode`\.=\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}
\newcommand\newblock{}

\if@final%
  \def\missingalert#1{\ClassError{usfmanus}{#1}{%
      Use the appropriate class command to provide the necessary
      \MessageBreak information.  See the usfsampt.tex and
      usfsampd.tex\MessageBreak files for examples.  You may use empty
      definitions, e.g.\MessageBreak \protect\title{}, or use the
      draft class option.  Otherwise, just try \MessageBreak pressing
      <return>.}}
\else%
  \def\missingalert#1{\ClassWarningNoLine{usfmanus}{#1}}
\fi
\def\title#1{\def\@title{{#1}}}
\def\@title{\missingalert{No \noexpand\title given}}
\def\author#1{\def\@author{#1}}
\def\@author{\missingalert{No \noexpand\author given}}
\def\degree#1{\def\@degree{#1}}
\def\@degree{\missingalert{No \noexpand\degree given}}
\def\department#1{\def\@department{#1}}
\def\keywords#1{\def\@keywords{#1}}
\def\@department{\missingalert{No \noexpand\department given}}
\def\college#1{\def\@college{#1}}
\def\@college{\missingalert{No \noexpand\college given}}
\def\graddate#1{\def\@graddate{#1}}
\def\@graddate{\missingalert{No \noexpand\graddate given}}
\def\presentdate#1{\def\@presentdate{#1}}
\def\@presentdate{\missingalert{No \noexpand\presentdate given}}
\def\copyrightyear#1{\def\@copyrightyear{#1}}
\def\@copyrightyear{\missingalert{No \noexpand\copyrightyear given}}
\def\majorprofessor#1{\def\@majorprofessor{#1}}
\def\@majorprofessor{\missingalert{No \noexpand\majorprofessor given}}
\def\majorproftitle#1{\def\@majorproftitle{#1}}
\def\@majorproftitle{\missingalert{No \noexpand\majorproftitle given}}
\def\members#1{\def\@members{#1}}
\def\@members{\missingalert{No \noexpand\members given}}
\long\def\dedication#1{\long\def\@dedication{#1}}
\long\def\acknowledgments#1{\long\def\@acknowledgments{#1}}
%Added by Ling Xu
\long\def\LOA#1{\long\def\@LOA{#1}}
%Added by Ling Xu ended
\ifvitarequired
  \long\def\vita#1{\long\def\@vita{#1}}
  \def\@vita{\missingalert{\No \noexpand\vita given}}
\fi

\long\def\abstract#1{%
  \long\def\@abstract{#1}}

  %\ifnum\@wordcount>350
\def\@abstract{\missingalert{No \noexpand\abstract given}}



\def\@mylists{\relax}
\def\mylists#1{\def\@mylists{#1}}
\def\makefrontmatter{%
%  \approvalpage
  \titlepage
%  \copyrightpage
  \dedicationpage
  \acknowledgmentspage
  \ifdiss
   \textheight 8.55in%9.0in
  \fi
  \tableofcontents
  \listoftables
  \listoffigures
%Added by Ling Xu
  \LOApage
%Added by Ling Xu ended
  \@mylists
  %\abstracttitlepage
  \abstractpage}

\def\abstractpage{%
  \newpage
  \raggedbottom
  \thispagestyle{plain}
  \addcontentsline{toc}{chapter}{\abstractname}
  %\@makeschapterhead{\@title}
  %\vspace*{-0.2\baselineskip}
  %\begin{center}
  {\centering
  %\MakeUppercase{\@author} \\
  % {\bf \@author} \\
   %\vspace*{2\baselineskip}
     \vspace*{0.825in}
   {\bf \abstractname } \\
   \vspace*{0.15in}
   %\vspace*{\baselineskip}
  }
  %\end{center}
  \fussy
  \begin{doublespace}
    %\noindent
    \indent
    \@abstract\nopagebreak\par
    \raggedbottom
  \end{doublespace}
  \raggedbottom}



\def\titlepage{%
  \countands{\@majorprofessor}
  \majorcount\andcount
  \advance\majorcount by 1
  \ifnum\majorcount<2 \def\@majorprofname{\majorname}
  \else \def\@majorprofname{\comajorname} \fi
  \countands{\@members}
  \membercount\andcount
  \advance\membercount by 1
  \totalmembers\majorcount
  \advance\totalmembers by \membercount
  \newpage
  \let\tempheight=\textheight
  %\vsize 9in
  \thispagestyle{empty}
  %\null\vfill
  \vspace*{0.83in} % Need to be changed to center the page vertically
  {
    \centering%
    %\vspace*{5\baselineskip}
    \begin{doublespace}\@title\end{doublespace}
    \vspace*{2.4\baselineskip} 
    by \\
    \vspace*{3\baselineskip}
    \@author\\
    %MakeUppercase{\@author} \\
    \vspace*{4\baselineskip}
    A \reporttypeshort\ submitted in partial fulfillment\\
    of the requirements for the degree of\\
    \@degree \\
    Department of \@department \\
    College of \@college \\
    University of South Florida \\
    \vspace*{3\baselineskip}
    %\vspace*{0.2in}
    \def\and{\\\@majorprofname:\ }
    \@majorprofname:\ \@majorprofessor
    \def\and{\ \\}\and\@members \\
    \vspace*{2\baselineskip}
    Date of Approval: \\
    \@presentdate
    \vspace*{3\baselineskip}	

     
      %\begin{singlespace}
  %\hspace{3.25ex}
  %Keywords:\ 
  %\@keywords
  %\end{doublespace}
    
   Keywords:\ \@keywords \\
   }
   \vspace*{.32\baselineskip}
   \begin{center}
      Copyright \copyright\ \@copyrightyear, \@author
   \end{center}
   \vfill
}


\def\approvalpage{%
  \countands{\@majorprofessor}
  \majorcount\andcount
  \advance\majorcount by 1
  \ifnum\majorcount<2 \def\@majorprofname{\majorname}
  \else \def\@majorprofname{\comajorname} \fi
  \countands{\@members}
  \membercount\andcount
  \advance\membercount by 1
  \totalmembers\majorcount
  \advance\totalmembers by \membercount
  \newpage
  \let\tempheight=\textheight
  \vsize 10in
  \singlespace
  \thispagestyle{empty}
%  \ifnum\totalmembers<6 \vspace*{0.8in}
%  \else \vspace*{0.25in} \fi
  \vspace*{0.06in}
  {\centering%
    Office of Graduate Studies\\ % changed MWP
    University of South Florida\\
    Tampa, Florida \\
    \vspace*{2\baselineskip}
    \hbox to 4.1in{\hfil\shortstack{\vrule width 2.2in height 0.4pt}}
    \vspace{0.15in}
    CERTIFICATE OF APPROVAL \\
    \vspace{0.05in}
    \hbox to 4.1in{\hfil\shortstack{\vrule width 2.2in height 0.4pt}}
    \vspace*{2\baselineskip}
    This is to certify that the \reporttypeshort\ of \\
    \vspace*{2\baselineskip}
    \MakeUppercase{\@author}\\
    \vspace*{2\baselineskip}
    in the graduate degree program of \\ \@department\ \\
    was approved on \@presentdate\\ % updated MWP
    for the \@degree\ degree. \\}
  \vspace*{2\baselineskip}
  \noindent Examining Committee:
  \def\and{\par\hrulefill\\[-0.25\baselineskip]\@majorprofname:\space}
  \begin{list}{}{%
      \topsep
      \ifnum\totalmembers<5 2\baselineskip
      \else 1.5\baselineskip \fi
      \parskip 0pt%
      \parsep
      \ifnum\totalmembers<5 2\baselineskip
      \else 1.5\baselineskip \fi
      \leftmargin 1.25in%
      \rightmargin 1.25in}\item[]%
    \and\@majorprofessor
    \def\and{\par\hrulefill\\[-0.25\baselineskip]\membername:\space}
    \and\@members
    \end{list}
%%% jmin
  \noindent Committee Verification:
  \def\and{\par\hrulefill\\[-0.25\baselineskip]Associate Dean\space}
  \begin{list}{}{%
      \topsep
      1.5\baselineskip
      \parskip 0pt%
      \parsep
      1.5\baselineskip
      \leftmargin 1.25in%
      \rightmargin 1.25in}\item[]%
    \and
    \end{list}
%%%
  \newpage\vsize\tempheight}
\newcount\andcount
\newcount\totalmembers
\newcount\majorcount
\newcount\membercount

\def\countands#1{\andcount=0 \expandafter\countand #1\end}
\def\countand#1{%
  \ifx#1\end%
    \let\next=\relax%
  \else%
    \let\next=\countand%
    \ifx#1\and%
      \advance\andcount by 1%
    \fi%
  \fi%
  \next}

\def\abstracttitlepage{%
  \newpage
  \thispagestyle{plain}
  \addcontentsline{toc}{chapter}{\abstractname}
  \vspace*{0.8in}
  \vspace*{0.25in}
  {\centering%
    \begin{doublespace}\@title\end{doublespace}
    \vspace*{3\baselineskip}
    by\\
    \vspace*{3\baselineskip}
    \MakeUppercase{\@author}\\
    \vspace*{3\baselineskip}
    \textit{An Abstract}\\
    \vspace*{3\baselineskip}
    of a \reporttypeshort\ submitted in partial fulfillment\\ % updated MWP
    of the requirements for the degree of \\
    \@degree \\
    Department of \@department\\
    College of \@college\\
    University of South Florida \\
    \vspace*{3\baselineskip}
    Date of Approval: \\
    \@presentdate\\
    \vspace*{3\baselineskip}
    \def\and{\\\@majorprofname:\ }
    \@majorprofname:\ \@majorprofessor\\
    \newpage}}%\hspace{0.0ex}}

\newlength{\siglinelength}
\newlength{\@majorproftitlelength}
\newlength{\@majorprofnamelength}
\def\abstractsignatures{%
  \settowidth{\@majorprofnamelength}{\@majorprofname:\ %
    \@majorprofessor}%
  \settowidth{\@majorproftitlelength}{\@majorproftitle \hspace{0.6cm}} % updated MWP
  \ifdim\@majorproftitlelength>\@majorprofnamelength%
  \siglinelength\@majorproftitlelength%
  \else%
  \siglinelength\@majorprofnamelength%
  \fi%
  \noindent\parbox{\textwidth}{%
    \singlespace\vspace*{2\baselineskip}
        % Spacing after signature line reduced v1999.4, HJG.
    Abstract Approved: \hrulefill \vspace*{-0.75\baselineskip}
    \begin{flushright}
      \def\and{\@majorprofname:\ }
      \parbox{\siglinelength}{\and\@majorprofessor \\
        \@majorproftitle
        \\[\baselineskip]
        Date Approved: \hrulefill}
    \end{flushright}}}
\def\copyrightpage{%
  \if@copyrightpage%
  \clearpage
  \thispagestyle{empty}
  \null\vfill
  \vspace*{-0.25in}
  \begin{center}
    \copyright\ Copyright by\ \@author\ \@copyrightyear \\
    All rights reserved
  \end{center}
  \vfill
  \fi}
\def\dedicationpage{%
  \ifx\@dedication\@undefined
  \else
  \clearpage\thispagestyle{empty}
  \vspace*{0.625in}
  %\null\vfill
  \begin{center}
  {\bf Dedication}
  \end{center}
  %\begin{center}           % saleh deleted
  \begin{doublespace}
    \@dedication
  \end{doublespace}
  %\end{center}              % saleh deleted
  \vfill
  \fi}
\def\acknowledgmentspage{%
  \ifx\@acknowledgments\@undefined
  \else
  \clearpage\pagestyle{empty}
  \vspace*{0.625in}
 % \null\vfill
  %\vspace*{-0.4in}
  \begin{center}
  {\bf Acknowledgments}
  \end{center}
  \begin{doublespace}
  %\hspace{3.25ex}            % saleh deleted
  \@acknowledgments
  \end{doublespace}
  \vfill
  \fi}


%Added by Ling Xu
\def\LOApage{%
  \ifx\@LOA\@undefined
  \else
  %\clearpage
  \thispagestyle{plain}
  \vspace*{0.625in}
  %\null\vfill
  \begin{center}
  \renewcommand{\nomname}{LIST OF ABBREVIATIONS}
  \printnomenclature[3cm]
  %{\bf LIST OF ABBREVIATIONS}
  %\end{center}
  %\begin{center}
  %\begin{doublespace}
    \@LOA
  %\end{doublespace}
  \end{center}
  %\vfill
  \fi}
%Added by Ling Xu ended



\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}
\@addtoreset{footnote}{chapter}
\long\def\@makefntext#1{%
    \parindent 1em%
    \noindent
    \hbox to 1.8em{\hss\@makefnmark}#1}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
\newcommand{\pmit}{\@fontswitch{\relax}{\mathnormal}}

%Edited by Anas Almunif(2019)
\newcommand\contentsname{Table of Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{References}
\newcommand\indexname{INDEX}
\newcommand\dedicationname{Dedication}
\newcommand\acknowledgmentsname{Acknowledgments}
%Added by Ling Xu
\newcommand\LOAname{LIST OF ABBREVIATIONS}
%Added by Ling Xu ended
%Edited by Anas Almunif(2019)
\newcommand\figurename{Figure}
\newcommand\figurenamesep{.}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\appendicesname{APPENDICES}
\newcommand\appendixchaptername{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\newcommand\vitaname{About the Author}
\newcommand\majorname{Major Professor}
\newcommand\comajorname{Co-Major Professor}
\newcommand\membername{Member}

%Edited by Anas Almunif(2019)

\def\vitapage{ % Vita page layout
  \newpage
  \textheight 9.0in
  \thispagestyle{empty}
  \vspace*{0.75in}     %Edited by Anas Almunif(2019), added 
  %\null\vfill
  %\vspace*{-1.1in}
  \vspace*{-0.125in}
  \typeout{\vitaname.}
  \addtocontents{toc}{\protect\contentsline{chapter}%
    {\vitaname}{End Page}}
  \begin{center}
  {\bf About the Author} %added 10/2/2000 MWP
  \end{center}
  \begin{doublespace}
  \hspace{3.25ex}
  %\vspace*{0.05in}
   \raggedbottom\noindent\@vita
   \end{doublespace}
  \vfill
  \newpage
}

\AtBeginDocument{
  % next four lines add the sheet numbering to page numbering
  \countdef\c@sheet=1
  \def\thesheet{\@arabic\c@sheet}
  \def\cl@page{\stepcounter{sheet}}
  \setcounter{sheet}{1}
  \if@frontmatter\makefrontmatter\clearpage\fi
  \setcounter{page}{1}
  \def\thepage{\arabic{page}}
  \raggedbottom}

\AtEndDocument{
  \ifvitarequired \vitapage \fi
}

\endinput
%%
%% End of file `usfmanus.cls'.

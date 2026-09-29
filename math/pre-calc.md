---
geometry:
  - top=0.4in
  - bottom=0.4in
  - left=0.4in
  - right=0.4in
fontsize: 10pt
documentclass: extarticle
linestretch: 0.95
header-includes: |
  \usepackage{amsmath,amssymb}
  \usepackage{mathptmx}
  \usepackage{relsize}
  \usepackage{multicol}
  \usepackage{enumitem}
  \usepackage{needspace}
  \usepackage{pgfplots}
  \pgfplotsset{compat=1.18}
  \usepgfplotslibrary{fillbetween}
  \usetikzlibrary{patterns,arrows.meta,positioning,calc}
  \usepackage{xcolor}
  \pagecolor[rgb]{0,0,0}
  \color[rgb]{1,1,1}
  \definecolor{uHi}{HTML}{5B9DB8}
  \definecolor{duHi}{HTML}{C68A52}
  \definecolor{keyHi}{HTML}{8BB87A}
  \definecolor{warnHi}{HTML}{CF8070}
  \definecolor{termHi}{HTML}{9BB6C7}
  \definecolor{titleHi}{HTML}{D8BE6E}
  \definecolor{numHi}{HTML}{B5CEA8}
  \definecolor{opHi}{HTML}{D4D4D4}
  \definecolor{funcHi}{HTML}{DCDCAA}
  \definecolor{varHi}{HTML}{9CDCFE}
  \definecolor{delimHi}{HTML}{DA70D6}
  \definecolor{wordHi}{HTML}{E8A55A}
  \definecolor{ansHi}{HTML}{4EC9B0}
  \newcommand{\ubox}[1]{\fcolorbox{uHi}{black}{\textcolor{uHi}{$#1$}}}
  \newcommand{\dubox}[1]{\fcolorbox{duHi}{black}{\textcolor{duHi}{$#1$}}}
  \newcommand{\stepbox}[2]{{\setlength{\fboxsep}{2.5pt}\noindent\fcolorbox{termHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{termHi}{\textbf{#1}}}\\[1pt]\small #2\end{minipage}}\par}}
  \newcommand{\stepdown}{\par\vspace{-1pt}{\centering\textcolor{termHi}{$\downarrow$}\par}\nopagebreak\vspace{-1pt}\nopagebreak}
  \renewcommand{\filbreak}{\needspace{4\baselineskip}}
  \newcommand{\keyres}[1]{\textcolor{ansHi}{#1}}
  \newcommand{\warn}[1]{\textcolor{warnHi}{#1}}
  \newcommand{\term}[1]{\textcolor{wordHi}{\textbf{#1}}}
  \let\origsection\section
  \renewcommand{\section}[1]{\origsection{{\color{white}#1}}}
  \let\origsubsection\subsection
  \renewcommand{\subsection}[1]{\origsubsection{{\color{white}#1}}}
  \let\origsubsubsection\subsubsection
  \renewcommand{\subsubsection}[1]{\origsubsubsection{{\itshape\color{white}#1}}}
  \setlist[itemize]{nosep, leftmargin=*, topsep=0pt, partopsep=0pt, itemsep=1pt}
  \setlist[enumerate]{nosep, leftmargin=*, topsep=0pt, partopsep=0pt, itemsep=1pt}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{1pt}
  \setlength{\columnsep}{12pt}
  \raggedright
  \everymath{\larger[1]}
  \pagestyle{empty}
---

```{=latex}
\makeatletter
% ---- math syntax highlighting (VS Code Dark Modern) ----
\newif\ifsyntaxon \syntaxontrue
\def\@synord#1#2{{\ifsyntaxon\color{#2}\fi#1}}
\def\synmk#1#2{%
  \expandafter\mathchardef\csname syng\string#1\endcsname=\numexpr\mathcode`#1-4096*(\mathcode`#1/4096)\relax
  \expandafter\edef\csname synmc\string#1\endcsname{\the\mathcode`#1}%
  \begingroup \lccode`\~=`#1\relax
    % preserve ALL capitals from \lowercase: \string#1 of an uppercase letter must not
    % be lowercased (else active B prints \syngb = lowercase glyph), and color names (varHi...) keep their H
    \lccode`\A=`\A\lccode`\B=`\B\lccode`\C=`\C\lccode`\D=`\D\lccode`\E=`\E\lccode`\F=`\F\lccode`\G=`\G\lccode`\H=`\H\lccode`\I=`\I\lccode`\J=`\J\lccode`\K=`\K\lccode`\L=`\L\lccode`\M=`\M\lccode`\N=`\N\lccode`\O=`\O\lccode`\P=`\P\lccode`\Q=`\Q\lccode`\R=`\R\lccode`\S=`\S\lccode`\T=`\T\lccode`\U=`\U\lccode`\V=`\V\lccode`\W=`\W\lccode`\X=`\X\lccode`\Y=`\Y\lccode`\Z=`\Z\relax
    \lowercase{\endgroup\expandafter\gdef\expandafter~\expandafter{\expandafter\@synord\expandafter{\csname syng\string#1\endcsname}{#2}}}%
  \mathcode`#1="8000\relax }
\def\synv#1{\synmk #1{varHi}}\def\synf#1{\synmk #1{funcHi}}
\synmk 0{numHi}\synmk 1{numHi}\synmk 2{numHi}\synmk 3{numHi}\synmk 4{numHi}\synmk 5{numHi}\synmk 6{numHi}\synmk 7{numHi}\synmk 8{numHi}\synmk 9{numHi}%
\synmk +{opHi}\synmk -{opHi}\synmk ={opHi}\synmk <{opHi}\synmk >{opHi}%
\synmk ({delimHi}\synmk ){delimHi}\synmk [{delimHi}\synmk ]{delimHi}\synmk |{delimHi}%
\synv a\synv b\synv c\synv d\synv e\synf f\synf g\synf h\synv i\synv j\synv k\synv l\synv m\synv n\synv o\synv p\synv q\synv r\synv s\synv t\synv u\synv v\synv w\synv x\synv y\synv z%
\synv A\synv B\synv C\synv D\synv E\synf F\synf G\synf H\synv I\synv J\synv K\synv L\synv M\synv N\synv O\synf P\synf Q\synv R\synv S\synv T\synv U\synv V\synv W\synv X\synv Y\synv Z%
% restore all letters to their normal (non-active) mathcode, locally
\def\syn@lettersoff{\mathcode`\a="7161\mathcode`\b="7162\mathcode`\c="7163\mathcode`\d="7164\mathcode`\e="7165\mathcode`\f="7166\mathcode`\g="7167\mathcode`\h="7168\mathcode`\i="7169\mathcode`\j="716A\mathcode`\k="716B\mathcode`\l="716C\mathcode`\m="716D\mathcode`\n="716E\mathcode`\o="716F\mathcode`\p="7170\mathcode`\q="7171\mathcode`\r="7172\mathcode`\s="7173\mathcode`\t="7174\mathcode`\u="7175\mathcode`\v="7176\mathcode`\w="7177\mathcode`\x="7178\mathcode`\y="7179\mathcode`\z="717A\mathcode`\A="7141\mathcode`\B="7142\mathcode`\C="7143\mathcode`\D="7144\mathcode`\E="7145\mathcode`\F="7146\mathcode`\G="7147\mathcode`\H="7148\mathcode`\I="7149\mathcode`\J="714A\mathcode`\K="714B\mathcode`\L="714C\mathcode`\M="714D\mathcode`\N="714E\mathcode`\O="714F\mathcode`\P="7150\mathcode`\Q="7151\mathcode`\R="7152\mathcode`\S="7153\mathcode`\T="7154\mathcode`\U="7155\mathcode`\V="7156\mathcode`\W="7157\mathcode`\X="7158\mathcode`\Y="7159\mathcode`\Z="715A}
\def\syncm#1#2{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{{\noexpand\ifsyntaxon\noexpand\color{#2}\noexpand\fi\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}
\def\syncmc#1#2#3{\expandafter\let\csname synm@\string#1\endcsname#1
  \protected\edef#1{\noexpand#3{\noexpand\textcolor{#2}{\noexpand\syn@lettersoff\expandafter\noexpand\csname synm@\string#1\endcsname}}}}
% math-alphabet commands must not let active letters override their font
\let\synm@mrm\mathrm \protected\def\mathrm#1{{\syn@lettersoff\synm@mrm{#1}}}
\let\synm@mbf\mathbf \protected\def\mathbf#1{{\syn@lettersoff\synm@mbf{#1}}}
\let\synm@mbb\mathbb \protected\def\mathbb#1{{\syn@lettersoff\synm@mbb{#1}}}
\let\synm@mcal\mathcal \protected\def\mathcal#1{{\syn@lettersoff\synm@mcal{#1}}}
\let\synm@msf\mathsf \protected\def\mathsf#1{{\syn@lettersoff\synm@msf{#1}}}
\let\synm@mit\mathit \protected\def\mathit#1{{\syn@lettersoff\synm@mit{#1}}}
\syncm\sin{funcHi}\syncm\cos{funcHi}\syncm\tan{funcHi}\syncm\cot{funcHi}\syncm\sec{funcHi}\syncm\csc{funcHi}%
\syncm\ln{funcHi}\syncm\log{funcHi}\syncm\arcsin{funcHi}\syncm\arccos{funcHi}\syncm\arctan{funcHi}%
\syncmc\leq{opHi}\mathrel\syncmc\geq{opHi}\mathrel\syncmc\neq{opHi}\mathrel\syncmc\to{opHi}\mathrel\syncmc\Rightarrow{opHi}\mathrel%
\syncmc\in{opHi}\mathrel\syncmc\subseteq{opHi}\mathrel\syncmc\approx{opHi}\mathrel\syncmc\equiv{opHi}\mathrel%
\syncm\cdot{opHi}\syncm\times{opHi}\syncm\div{opHi}\syncm\pm{opHi}\syncm\cup{opHi}\syncm\cap{opHi}%
\syncm\pi{varHi}\syncm\theta{varHi}\syncm\infty{numHi}%
% amsmath's \resetMathstrut@ reads \mathcode`( into a \mathchardef; restore the original there so it doesn't choke on the active "8000
\let\synOrigReset\resetMathstrut@
\def\resetMathstrut@{\mathcode`\(=\csname synmc(\endcsname\relax\synOrigReset\mathcode`\(="8000\relax}
% delimiter-sizing commands scan a delimiter char; restore the originals locally so the active delimiters don't break the scan
\def\syn@delimoff{\mathcode`\(=\csname synmc(\endcsname\mathcode`\)=\csname synmc)\endcsname\mathcode`\[=\csname synmc[\endcsname\mathcode`\]=\csname synmc]\endcsname\mathcode`\|=\csname synmc|\endcsname\relax}
\let\synszL\left\def\left{\syn@delimoff\synszL}
\let\synszR\right\def\right{\syn@delimoff\synszR}
\tikzset{every picture/.append style={execute at begin picture={\syntaxonfalse}}}
\makeatother
```


\section{Pre-Calculus}

\begin{multicols}{2}

\filbreak \subsection{functions}
A \term{function} takes an input and returns \keyres{exactly one} output. Write $f(x)=2x+1$ and read it as "$f$ of $x$".
\par\vspace{2pt}
\warn{$f(x)$ is not $f$ times $x$.} It names the output that $f$ produces from the input $x$.
\par\vspace{2pt}
To \term{evaluate}, replace every $x$ with the input: $f(3)=2(3)+1=\keyres{7}$.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.80\linewidth}@{}}
\term{domain} & every input the function accepts \\[2pt]
\term{range} & every output it can produce \\
\end{tabular}}
\par\vspace{2pt}
\filbreak \subsubsection{Finding a domain — three blockers}
Assume every real number works, then remove the values that break one of these:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{1}} & \term{division by zero} $\Rightarrow$ set the denominator to zero and exclude those values. \; $\dfrac{1}{x-3}$ excludes $x=3$. \\[4pt]
\textcolor{keyHi}{\textbf{2}} & \term{even root of a negative} $\Rightarrow$ the inside must be $\geq0$. \; $\sqrt{x-2}$ needs $x\geq2$. \\[2pt]
\textcolor{keyHi}{\textbf{3}} & \term{logarithm of a non-positive} $\Rightarrow$ the inside must be $>0$. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{No blocker present means the domain is all real numbers.} Polynomials always have that domain.

\filbreak \subsubsection{Even and odd}
{\small
\begin{tabular}{@{}p{0.16\linewidth}@{}p{0.38\linewidth}@{}p{0.46\linewidth}@{}}
\term{even} & $f(-x)=f(x)$ & mirror across the $y$-axis \\[2pt]
\term{odd} & $f(-x)=-f(x)$ & same after a $180^\circ$ turn \\[2pt]
\term{neither} & neither holds & most functions \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE TEST — SUBSTITUTE $-x$ AND COMPARE}{$f(x)=x^2-4$: \; $f(-x)=(-x)^2-4=x^2-4$. \; That equals $f(x)$, so \keyres{even}.
\par\vspace{1pt}
$f(x)=x^3-x$: \; $f(-x)=-x^3+x=-(x^3-x)$. \; That equals $-f(x)$, so \keyres{odd}.
\par\vspace{1pt}
\warn{Compare against both $f(x)$ and $-f(x)$ before concluding "neither".}}

\filbreak \subsubsection{Transformations}
Start from $y=f(x)$. Each change moves or reshapes the graph.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.24\linewidth}@{}p{0.76\linewidth}@{}}
$f(x)+k$ & up $k$ \; \emph{\scriptsize(down if $k<0$)} \\[2pt]
$f(x-h)$ & right $h$ \; \warn{note the sign flip} \\[2pt]
$-f(x)$ & flip across the $x$-axis \\[2pt]
$f(-x)$ & flip across the $y$-axis \\[2pt]
$a\,f(x)$ & stretch vertically by $a$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{Changes inside the brackets do the opposite of what they look like.} $f(x-3)$ moves the graph \keyres{right} $3$, not left. Inside affects the input, so it works backwards.

\filbreak \subsubsection{Composition}
$(f\circ g)(x)$ means $f(g(x))$: run $g$ first, then feed its output into $f$.
\par\vspace{1pt}
\stepbox{WORKED: $f(x)=2x+1$, \; $g(x)=x^2$}{$(f\circ g)(3)$: \; $g(3)=9$, then $f(9)=2(9)+1=\keyres{19}$
\par\vspace{1pt}
$(g\circ f)(3)$: \; $f(3)=7$, then $g(7)=7^2=\keyres{49}$
\par\vspace{1pt}
\warn{Order matters.} $19\neq49$, so $f\circ g$ and $g\circ f$ are different functions.}

\filbreak \subsubsection{Inverses}
The \term{inverse} $f^{-1}$ undoes $f$. If $f$ turns $3$ into $7$, then $f^{-1}$ turns $7$ into $3$.
\par\vspace{1pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Replace} $f(x)$ with $y$.\\
\textbf{2.} \term{Swap} $x$ and $y$.\\
\textbf{3.} \term{Solve} for $y$.\\
\textbf{4.} \term{Rename} it $f^{-1}(x)$.}
\par\vspace{2pt}
\stepbox{WORKED: INVERT $\;f(x)=2x+1$}{$y=2x+1$ \; $\to$ \; swap: $x=2y+1$ \; $\to$ \; solve: $y=\dfrac{x-1}{2}$
$$f^{-1}(x)=\keyres{\frac{x-1}{2}}$$
check: $f(3)=7$, and $f^{-1}(7)=\dfrac{6}{2}=3$ \checkmark}
\par\vspace{2pt}
\warn{$f^{-1}$ does not mean $\dfrac{1}{f}$.} The $-1$ here names the inverse function, not a negative exponent.

\filbreak \subsubsection{Piecewise functions}
A \term{piecewise function} uses different rules on different parts of the domain. Pick the rule whose condition your input satisfies, then use only that rule.

\filbreak \subsection{the parent graphs}
Every graph you meet is one of a small set of \term{parent functions}, moved or stretched. Learn these nine shapes and the transformations above will let you sketch almost anything.
\par\vspace{2pt}
\begin{center}
\begin{tabular}{@{}ccc@{}}
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-2.2, xmax=2.2, ymin=-2.2, ymax=2.2, clip=true]
\addplot[uHi, thick, domain=-2:2, samples=2] {x};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-2.2, xmax=2.2, ymin=-0.7, ymax=3.6, clip=true]
\addplot[uHi, thick, domain=-1.9:1.9, samples=40] {x^2};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-1.7, xmax=1.7, ymin=-2.6, ymax=2.6, clip=true]
\addplot[uHi, thick, domain=-1.35:1.35, samples=40] {x^3};
\end{axis}
\end{tikzpicture} \\
{\scriptsize $y=x$ \; line} & {\scriptsize $y=x^2$ \; parabola} & {\scriptsize $y=x^3$ \; cubic} \\[4pt]
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-2.2, xmax=2.2, ymin=-0.6, ymax=2.4, clip=true]
\addplot[uHi, thick, domain=-2:2, samples=30] {abs(x)};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-0.6, xmax=4.2, ymin=-0.6, ymax=2.4, clip=true]
\addplot[uHi, thick, domain=0:4, samples=40] {sqrt(x)};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-2.6, xmax=2.6, ymin=-2.6, ymax=2.6, clip=true]
\addplot[uHi, thick, domain=0.42:2.5, samples=30] {1/x};
\addplot[uHi, thick, domain=-2.5:-0.42, samples=30] {1/x};
\end{axis}
\end{tikzpicture} \\
{\scriptsize $y=|x|$ \; V shape} & {\scriptsize $y=\sqrt{x}$ \; half a U} & {\scriptsize $y=1/x$ \; two branches} \\[4pt]
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-2.3, xmax=2.0, ymin=-0.8, ymax=3.6, clip=true]
\addplot[warnHi, dashed, domain=-2.3:2, samples=2] {0};
\addplot[uHi, thick, domain=-2.2:1.8, samples=40] {2^x};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-0.8, xmax=4.2, ymin=-2.4, ymax=1.8, clip=true]
\addplot[warnHi, dashed] coordinates {(0,-2.4) (0,1.8)};
\addplot[uHi, thick, domain=0.13:4, samples=50] {ln(x)};
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.4cm, height=2.9cm, axis lines=middle, axis line style={white!40}, xtick=\empty, ytick=\empty, xmin=-0.4, xmax=6.6, ymin=-1.6, ymax=1.6, clip=true]
\addplot[uHi, thick, domain=0:6.28, samples=60] {sin(deg(x))};
\end{axis}
\end{tikzpicture} \\
{\scriptsize $y=2^x$ \; exponential} & {\scriptsize $y=\log x$ \; logarithm} & {\scriptsize $y=\sin x$ \; wave} \\
\end{tabular}
\end{center}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.15\linewidth}@{}p{0.21\linewidth}@{}p{0.22\linewidth}@{}p{0.42\linewidth}@{}}
\textcolor{termHi}{\textbf{parent}} & \textcolor{termHi}{\textbf{domain}} & \textcolor{termHi}{\textbf{range}} & \textcolor{termHi}{\textbf{what to remember}} \\[1pt]
$y=x$ & all reals & all reals & straight through the origin \\[2pt]
$y=x^2$ & all reals & $y\geq0$ & a U, \keyres{even}, never negative \\[2pt]
$y=x^3$ & all reals & all reals & an S, \keyres{odd}, flattens at the origin \\[2pt]
$y=|x|$ & all reals & $y\geq0$ & a V with a \keyres{sharp corner} \\[2pt]
$y=\sqrt{x}$ & $x\geq0$ & $y\geq0$ & stops dead at the origin \\[2pt]
$y=\frac{1}{x}$ & $x\neq0$ & $y\neq0$ & \keyres{both axes are asymptotes} \\[2pt]
$y=2^x$ & all reals & $y>0$ & \keyres{never reaches $y=0$} \\[2pt]
$y=\log x$ & $x>0$ & all reals & \keyres{never reaches $x=0$} \\[2pt]
$y=\sin x$ & all reals & $-1\leq y\leq1$ & repeats every $2\pi$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{The dashed red lines are asymptotes} — the curve approaches them forever without arriving.
\par\vspace{2pt}
\keyres{$2^x$ and $\log x$ are mirror images across the line $y=x$.} They are inverse functions, which is exactly why their domains and ranges swap over.

\filbreak \subsection{polynomial and rational behaviour}
\stepbox{END BEHAVIOUR — THE LEADING TERM DECIDES}{Only the highest-power term matters far from the origin. Read its \keyres{degree} and \keyres{sign}.
\par\vspace{1pt}
\term{even degree} — both ends point the same way. Positive lead: both up.
\par\vspace{1pt}
\term{odd degree} — the ends point opposite ways. Positive lead: down on the left, up on the right.}
\par\vspace{2pt}
\filbreak \subsubsection{Asymptotes — three kinds}
An \term{asymptote} is a line the graph approaches but never reaches.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{V}} & \term{vertical} $\Rightarrow$ where the denominator is zero \keyres{after cancelling}. A factor that cancels gives a \term{hole}, not an asymptote. \\[4pt]
\textcolor{keyHi}{\textbf{H}} & \term{horizontal} $\Rightarrow$ compare degrees. Top smaller: $y=0$. Equal: the ratio of leading coefficients. Top larger: none. \\[4pt]
\textcolor{keyHi}{\textbf{S}} & \term{slant} $\Rightarrow$ when the top degree is \keyres{exactly one more} than the bottom. Divide to find the line. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: $\;\dfrac{2x^2+3x-1}{x^2-4}$}{\term{vertical}: $x^2-4=0$ gives $x=\keyres{2}$ and $x=\keyres{-2}$, and neither cancels
\par\vspace{1pt}
\term{horizontal}: degrees are equal, both $2$, so take the leading coefficients:
$$y=\frac{2}{1}=\keyres{2}$$
\term{slant}: none, because the degrees are equal rather than differing by one}
\par\vspace{2pt}
\warn{A graph may cross a horizontal asymptote.} The rule is about behaviour far out, not a barrier.

\filbreak \subsection{finding the zeros}
\keyres{Four words for one thing.} A \term{zero}, a \term{root}, an \term{$x$-intercept}, and a \term{solution of $f(x)=0$} all name the same number: an input where the output is zero, so the graph touches the $x$-axis.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Set the function equal to zero.}\\
\textbf{2.} \term{Solve} by whichever method fits the type.\\
\textbf{3.} \term{Discard} any answer outside the domain.\\
\textbf{4.} \term{Check} each survivor in the original function.}
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — read the function type}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{linear} $\Rightarrow$ solve directly. \keyres{Exactly one zero}, unless the line is horizontal. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{quadratic} $\Rightarrow$ factor, or use the formula. The \keyres{discriminant} says how many before you start. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{polynomial, degree $\geq3$} $\Rightarrow$ rational root theorem, then divide and factor what is left. \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{rational} $\Rightarrow$ set the \keyres{numerator} to zero, then \warn{discard anything that also zeroes the denominator}. \\[2pt]
\textcolor{keyHi}{\textbf{E}} & \term{exponential} $\Rightarrow$ \keyres{no zeros ever}. $b^x$ is always positive, which is why $y=0$ is its asymptote. \\[2pt]
\textcolor{keyHi}{\textbf{F}} & \term{logarithm} $\Rightarrow$ set the inside equal to \keyres{$1$}, because $\log1=0$. \\[2pt]
\textcolor{keyHi}{\textbf{G}} & \term{trigonometric} $\Rightarrow$ \keyres{infinitely many}, spaced one period apart. Give the ones in the interval asked for. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{ONE EXAMPLE OF EACH}{\textbf{A} \; $3x-12=0$ \; $\Rightarrow$ \; $x=\keyres{4}$
\par\vspace{1pt}
\textbf{B} \; $x^2-6x+5=0$ \; $\Rightarrow$ \; $(x-1)(x-5)=0$ \; $\Rightarrow$ \; $x=\keyres{1},\,\keyres{5}$
\par\vspace{1pt}
\textbf{C} \; $x^3-4x=0$ \; $\Rightarrow$ \; $x(x-2)(x+2)=0$ \; $\Rightarrow$ \; $x=\keyres{0},\,\keyres{2},\,\keyres{-2}$
\par\vspace{1pt}
\textbf{F} \; $\log(x-3)=0$ \; $\Rightarrow$ \; $x-3=1$ \; $\Rightarrow$ \; $x=\keyres{4}$
\par\vspace{1pt}
\textbf{G} \; $\sin x=0$ on $[0,2\pi)$ \; $\Rightarrow$ \; $x=\keyres{0},\,\keyres{\pi}$}
\par\vspace{2pt}
\stepbox{CASE D IS THE TRAP — $\;f(x)=\dfrac{x^2-4}{x-2}$}{numerator zero at $x=2$ and $x=-2$. \; But $x=2$ also makes the \keyres{denominator} zero.
\par\vspace{1pt}
$x=2$ is a \term{hole}, not a zero — the function has no value there at all.
$$\text{the only zero is } \keyres{x=-2}$$
\warn{Always check a candidate against the denominator before accepting it.}}
\par\vspace{2pt}
\keyres{Always factor first.} A factored function shows its zeros directly: each factor set to zero gives one, by the zero product rule.

\filbreak \subsection{the key points of a graph}
To sketch a curve, or to describe one, you need a small fixed list of features. Find them in this order.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{$y$-intercept} — set $x=0$. There is \keyres{at most one}, because a function gives one output per input.\\
\textbf{2.} \term{$x$-intercepts} — set $y=0$ and find the zeros. There may be \keyres{many}.\\
\textbf{3.} \term{Turning points} — where the curve changes direction.\\
\textbf{4.} \term{Asymptotes} — lines the curve approaches but never reaches.\\
\textbf{5.} \term{End behaviour} — what happens far left and far right.}
\par\vspace{2pt}
A \term{turning point} is where a graph stops rising and starts falling, or the reverse. It is the peak of a hill or the bottom of a valley. Two you can find exactly, without calculus:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.28\linewidth}@{}p{0.72\linewidth}@{}}
\term{parabola vertex} & $x=\keyres{-\dfrac{b}{2a}}$, then substitute to get $y$ \\[5pt]
\term{by symmetry} & the vertex sits \keyres{halfway between the two zeros} \\
\end{tabular}}
\par\vspace{2pt}
\warn{A polynomial of degree $n$ has at most $n-1$ turning points.} A parabola has one, a cubic has at most two. That is a useful check on a sketch.
\par\vspace{2pt}
\keyres{For any other curve, locating turning points exactly needs calculus.} That is one of the main things calculus is for, and it is where this material leads next.
\par\vspace{2pt}
\stepbox{WORKED: FULLY DESCRIBE $\;y=x^2-6x+5$}{\textbf{1.} $y$-intercept: \; $y=0-0+5=\keyres{5}$, so the point $(0,5)$
\par\vspace{1pt}
\textbf{2.} $x$-intercepts: \; $(x-1)(x-5)=0$, so $x=\keyres{1}$ and $x=\keyres{5}$
\par\vspace{1pt}
\textbf{3.} vertex: \; $x=-\dfrac{-6}{2(1)}=\keyres{3}$, and $y=9-18+5=\keyres{-4}$, so $(3,-4)$
\par\vspace{1pt}
\emph{\scriptsize(check by symmetry: halfway between $1$ and $5$ is $3$ \checkmark)}
\par\vspace{1pt}
\textbf{4.} asymptotes: \keyres{none} — polynomials have no asymptotes
\par\vspace{1pt}
\textbf{5.} end behaviour: degree $2$ is even and the lead is positive, so \keyres{both ends rise}
\par\vspace{1pt}
That is enough to sketch it: a U crossing at $1$ and $5$, bottoming at $(3,-4)$, passing through $(0,5)$.}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[width=6.4cm, height=4.2cm, axis lines=middle, axis line style={white!45},
xtick={1,3,5}, ytick={-4,5}, tick label style={font=\tiny, text=white!70},
xmin=-0.8, xmax=6.4, ymin=-5.4, ymax=6.4, clip=false,
label style={font=\tiny, text=white!80}]
\addplot[uHi, very thick, domain=-0.4:6.4, samples=60] {x^2-6*x+5};
\addplot[only marks, mark=*, mark size=1.6pt, ansHi] coordinates {(1,0) (5,0)};
\addplot[only marks, mark=*, mark size=1.6pt, warnHi] coordinates {(3,-4)};
\addplot[only marks, mark=*, mark size=1.6pt, wordHi] coordinates {(0,5)};
\node[font=\tiny, text=ansHi, anchor=north] at (axis cs:1,-0.35) {zero};
\node[font=\tiny, text=ansHi, anchor=north] at (axis cs:5,-0.35) {zero};
\node[font=\tiny, text=warnHi, anchor=north] at (axis cs:3,-4.3) {vertex $(3,-4)$};
\node[font=\tiny, text=wordHi, anchor=west] at (axis cs:0.15,5.5) {$y$-intercept};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the five features, on one curve: two {\color{ansHi}zeros}, the {\color{warnHi}vertex} halfway between them, and the {\color{wordHi}$y$-intercept}}
\end{center}

\filbreak \subsection{sketching a polynomial}
A parabola has one turn. Higher degrees have more. You can locate all of them \keyres{without calculus}, using three facts you already have: the zeros, the end behaviour, and the sign in between.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Factor} and list the zeros. Those are the only places the curve can cross.\\
\textbf{2.} \term{Check each zero's multiplicity} — does the curve cross there, or touch and turn back?\\
\textbf{3.} \term{Find the $y$-intercept} by setting $x=0$.\\
\textbf{4.} \term{Read the end behaviour} from the leading term.\\
\textbf{5.} \term{Test one point in each interval} between the zeros to get the sign.\\
\textbf{6.} \term{Join the dots.} A turning point sits between each pair of neighbouring zeros.}
\par\vspace{2pt}
\filbreak \subsubsection{Multiplicity — cross or touch?}
The \term{multiplicity} of a zero is how many times its factor repeats.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.24\linewidth}@{}p{0.50\linewidth}@{}}
\textcolor{termHi}{\textbf{factor}} & \textcolor{termHi}{\textbf{multiplicity}} & \textcolor{termHi}{\textbf{at that zero the curve}} \\[1pt]
$(x-a)$ & $1$, odd & \keyres{crosses} straight through \\[2pt]
$(x-a)^2$ & $2$, even & \keyres{touches} and turns back \\[2pt]
$(x-a)^3$ & $3$, odd & crosses, but \keyres{flattens} on the way \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Odd multiplicity crosses, even multiplicity touches.} An even power can never change sign, so the curve cannot get to the other side.
\par\vspace{2pt}
\warn{A touch point is always a turning point.} If the curve comes down to the axis and does not cross, it must turn around there.
\par\vspace{2pt}
\stepbox{WORKED: $\;y=(x+1)^2(x-2)$}{zeros: \; $x=-1$ with multiplicity $\keyres{2}$, \; $x=2$ with multiplicity $\keyres{1}$
\par\vspace{1pt}
so the curve \keyres{touches} at $x=-1$ and \keyres{crosses} at $x=2$
\par\vspace{1pt}
check by testing either side of $-1$: \; $f(-1.2)\approx-0.13$ and $f(-0.8)\approx-0.11$
\par\vspace{1pt}
\keyres{Both negative}, so the curve never got above the axis — it touched and came back \checkmark}

\filbreak \subsubsection{Worked: a cubic with two turns}
Sketch $y=(x+2)(x-1)(x-3)$, which expands to $y=x^3-2x^2-5x+6$.
\par\vspace{2pt}
\stepbox{1--3. ZEROS, MULTIPLICITY, INTERCEPT}{zeros: \; $x=\keyres{-2},\,\keyres{1},\,\keyres{3}$ — each factor appears once, so the curve \keyres{crosses} at all three
\par\vspace{1pt}
$y$-intercept: \; $y=(2)(-1)(-3)=\keyres{6}$}
\stepdown
\stepbox{4. END BEHAVIOUR}{degree $3$ is \keyres{odd} and the leading coefficient is positive, so the ends point \keyres{opposite ways}: down on the left, up on the right.}
\stepdown
\stepbox{5. SIGN IN EACH INTERVAL — TEST ONE POINT}{three zeros cut the line into four intervals. Test any point in each:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.24\linewidth}@{}p{0.22\linewidth}@{}p{0.24\linewidth}@{}p{0.30\linewidth}@{}}
$x<-2$ & $x=-3$ & $y=-24$ & \warn{below} the axis \\
$-2<x<1$ & $x=0$ & $y=6$ & \keyres{above} \\
$1<x<3$ & $x=2$ & $y=-4$ & \warn{below} \\
$x>3$ & $x=4$ & $y=18$ & \keyres{above} \\
\end{tabular}}}
\stepdown
\stepbox{6. TURNING POINTS — BETWEEN NEIGHBOURING ZEROS}{The curve rises from below to above between $-2$ and $1$, so it must \keyres{turn back down} somewhere in there. That is a \keyres{local maximum}, near $x\approx-0.8$, at about $y\approx8.2$.
\par\vspace{1pt}
It falls from above to below between $1$ and $3$, so it turns back up: a \keyres{local minimum} near $x\approx2.1$, at about $y\approx-4.1$.
\par\vspace{1pt}
\warn{These positions are approximate.} A degree-$3$ curve has at most $3-1=2$ turns, and you know they exist and roughly where — but \keyres{pinning them down exactly needs calculus.}}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[width=7.4cm, height=5.0cm, axis lines=middle, axis line style={white!45},
xtick={-2,1,3}, ytick={6}, tick label style={font=\tiny, text=white!70},
xmin=-2.9, xmax=4.0, ymin=-6.5, ymax=10.5, clip=false,
label style={font=\tiny, text=white!80}]
\addplot[uHi, very thick, domain=-2.6:3.7, samples=90] {x^3-2*x^2-5*x+6};
\addplot[only marks, mark=*, mark size=1.7pt, ansHi] coordinates {(-2,0) (1,0) (3,0)};
\addplot[only marks, mark=*, mark size=1.7pt, wordHi] coordinates {(0,6)};
\addplot[only marks, mark=*, mark size=1.7pt, warnHi] coordinates {(-0.786,8.209) (2.120,-4.061)};
\node[font=\tiny, text=warnHi, anchor=south] at (axis cs:-0.9,8.5) {local max};
\node[font=\tiny, text=warnHi, anchor=north] at (axis cs:2.2,-4.4) {local min};
\node[font=\tiny, text=wordHi, anchor=west] at (axis cs:0.15,6.4) {$y$-intercept};
\node[font=\tiny, text=ansHi, anchor=north] at (axis cs:-2,-0.4) {$-2$};
\node[font=\tiny, text=ansHi, anchor=north] at (axis cs:1,-0.4) {$1$};
\node[font=\tiny, text=ansHi, anchor=north] at (axis cs:3,-0.4) {$3$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize three {\color{ansHi}zeros}, the {\color{wordHi}$y$-intercept}, and the two {\color{warnHi}turning points} — one between each neighbouring pair of zeros}
\end{center}

\filbreak \subsection{maximums and minimums}
A \term{maximum} is a peak, a \term{minimum} is a valley. The only thing that ever confuses people here is \keyres{local against absolute}.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.22\linewidth}@{}p{0.78\linewidth}@{}}
\term{local max} & higher than \keyres{everything nearby}. A hilltop, even if taller hills exist elsewhere. \\[2pt]
\term{local min} & lower than everything nearby \\[2pt]
\term{absolute max} & the \keyres{highest point anywhere} on the whole graph or interval \\[2pt]
\term{absolute min} & the lowest point anywhere \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Every absolute extreme is also a local one}, but not the other way round. In the cubic above, $y\approx8.2$ is a local max, yet the curve climbs past it forever on the right — so there is \keyres{no absolute maximum}.
\par\vspace{2pt}
\filbreak \subsubsection{Finding them without calculus}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{parabola} $\Rightarrow$ \keyres{exact}, from the vertex: $x=-\frac{b}{2a}$. Opens up means a minimum, opens down means a maximum. \\[4pt]
\textcolor{keyHi}{\textbf{B}} & \term{a zero of even multiplicity} $\Rightarrow$ \keyres{exact}, because a touch point is a turning point and its value is $0$. \\[4pt]
\textcolor{keyHi}{\textbf{C}} & \term{any other curve} $\Rightarrow$ \keyres{approximate}. You know one turn sits between each neighbouring pair of zeros. Read it off a sketch or a calculator. \\
\end{tabular}}
\par\vspace{2pt}
\warn{Exact turning points for cubics and beyond need calculus.} Say "about $8.2$ near $x\approx-0.8$" rather than inventing an exact value.
\par\vspace{2pt}
\stepbox{ON A CLOSED INTERVAL, CHECK THE ENDS}{Asked for the extremes on an interval such as $[0,4]$, collect \keyres{three kinds} of candidate:
\par\vspace{1pt}
\textbf{1.} every turning point inside the interval \quad \textbf{2.} the \keyres{left endpoint} \quad \textbf{3.} the \keyres{right endpoint}
\par\vspace{1pt}
Then compare the values and take the largest and smallest.
\par\vspace{1pt}
\warn{The endpoints are the ones people forget}, and they very often win. On $[0,4]$ the cubic above gives $f(0)=6$, $f(4)=18$, and the interior minimum $\approx-4.1$. The absolute maximum is \keyres{$18$, at the right endpoint} — not at any turn.}
\par\vspace{2pt}
\keyres{A parabola's vertex is the one case you can always state exactly}, which is why so many word problems about greatest area or least cost end in a quadratic.

\filbreak \subsection{polynomial and rational inequalities}
The same sign-testing that sketches a curve also solves an inequality. You are asking \keyres{where the curve sits above or below the axis}.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Move everything to one side}, so the other side is zero.\\
\textbf{2.} \term{Factor} and find the zeros. For a fraction, also find where the \keyres{denominator} is zero.\\
\textbf{3.} \term{Mark all of those} on a number line. They split it into intervals.\\
\textbf{4.} \term{Test one point} in each interval.\\
\textbf{5.} \term{Keep the intervals} whose sign matches what was asked.}
\par\vspace{2pt}
\warn{Never multiply an inequality by something containing the variable.} You do not know its sign, so you do not know whether to flip. Sign-testing avoids the problem entirely.
\par\vspace{2pt}
\stepbox{WORKED: $\;x^2-5x+6>0$}{factor: \; $(x-2)(x-3)>0$, so the zeros are $2$ and $3$
\par\vspace{1pt}
test each of the three intervals:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.22\linewidth}@{}p{0.24\linewidth}@{}p{0.28\linewidth}@{}}
$x<2$ & $x=0$ & $+6$ & \keyres{keep} \\
$2<x<3$ & $x=2.5$ & $-0.25$ & \warn{reject} \\
$x>3$ & $x=4$ & $+2$ & \keyres{keep} \\
\end{tabular}}
\par\vspace{1pt}
$$\keyres{(-\infty,\,2)\cup(3,\,\infty)}$$
strict $>$ means the zeros themselves are \warn{excluded}, so round brackets.}
\par\vspace{2pt}
\keyres{For a rational inequality, mark the denominator's zeros too} — the sign can flip there as well, even though the curve never touches the axis. Those points are \warn{always excluded}, whatever the inequality sign says.

\filbreak \subsection{conic sections}
Four curves come from slicing a cone. Identify one by \keyres{looking at the squared terms}.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.22\linewidth}@{}p{0.36\linewidth}@{}p{0.42\linewidth}@{}}
\textcolor{termHi}{\textbf{curve}} & \textcolor{termHi}{\textbf{equation}} & \textcolor{termHi}{\textbf{the tell}} \\[1pt]
\term{circle} & $(x-h)^2+(y-k)^2=r^2$ & both squared, \keyres{added}, same coefficient \\[3pt]
\term{parabola} & $y=a(x-h)^2+k$ & \keyres{only one} variable squared \\[3pt]
\term{ellipse} & $\dfrac{(x-h)^2}{a^2}+\dfrac{(y-k)^2}{b^2}=1$ & both squared, added, \keyres{different} coefficients \\[5pt]
\term{hyperbola} & $\dfrac{(x-h)^2}{a^2}-\dfrac{(y-k)^2}{b^2}=1$ & both squared, \keyres{subtracted} \\
\end{tabular}}
\par\vspace{2pt}
In every form $(h,k)$ is the \term{centre}, or the \term{vertex} for a parabola. \warn{The signs inside the brackets flip}: $(x-3)^2$ means the centre sits at $x=+3$.
\par\vspace{2pt}
\keyres{If the equation is not in one of these forms, complete the square} on each variable to put it there.

\filbreak \subsection{right-triangle trigonometry}
In a \keyres{right triangle}, three ratios relate an angle to the sides. Remember them as \keyres{SOH CAH TOA}.
$$\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}} \qquad \cos\theta=\frac{\text{adjacent}}{\text{hypotenuse}} \qquad \tan\theta=\frac{\text{opposite}}{\text{adjacent}}$$
\warn{"Opposite" and "adjacent" depend on which angle you picked.} The hypotenuse never changes, but the other two swap when you switch angles.
\par\vspace{2pt}
\filbreak \subsubsection{The two special triangles}
These give exact answers without a calculator, so they appear constantly.
\par\vspace{1pt}
\begin{center}
\begin{tikzpicture}[scale=0.95, font=\scriptsize]
\draw[uHi, thick] (0,0) -- (1.7,0) -- (1.7,1.7) -- cycle;
\draw[white!45] (1.45,0) rectangle (1.7,0.25);
\node[text=white!80, anchor=north] at (0.85,-0.05) {$1$};
\node[text=white!80, anchor=west] at (1.72,0.85) {$1$};
\node[text=keyHi, anchor=south east] at (0.85,0.9) {$\sqrt2$};
\node[text=duHi, anchor=west] at (0.18,0.13) {$45^\circ$};
\node[text=white!70, anchor=north] at (0.85,-0.42) {$45$-$45$-$90$};
\begin{scope}[xshift=115pt]
\draw[uHi, thick] (0,0) -- (1.73,0) -- (1.73,1.0) -- cycle;
\draw[white!45] (1.48,0) rectangle (1.73,0.25);
\node[text=keyHi, anchor=north] at (0.87,-0.05) {$\sqrt3$};
\node[text=white!80, anchor=west] at (1.75,0.5) {$1$};
\node[text=white!80, anchor=south east] at (0.87,0.55) {$2$};
\node[text=duHi, anchor=west] at (0.2,0.11) {$30^\circ$};
\node[text=white!70, anchor=north] at (0.87,-0.42) {$30$-$60$-$90$};
\end{scope}
\end{tikzpicture}
\end{center}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}l@{\hspace{6pt}}c@{\hspace{6pt}}c@{\hspace{6pt}}c@{}}
\textcolor{termHi}{$\theta$} & \textcolor{termHi}{$\sin\theta$} & \textcolor{termHi}{$\cos\theta$} & \textcolor{termHi}{$\tan\theta$} \\[1pt]
$30^\circ=\frac{\pi}{6}$ & $\frac12$ & $\frac{\sqrt3}{2}$ & $\frac{\sqrt3}{3}$ \\[3pt]
$45^\circ=\frac{\pi}{4}$ & $\frac{\sqrt2}{2}$ & $\frac{\sqrt2}{2}$ & $1$ \\[3pt]
$60^\circ=\frac{\pi}{3}$ & $\frac{\sqrt3}{2}$ & $\frac12$ & $\sqrt3$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Notice the symmetry}: $\sin30^\circ=\cos60^\circ$. The two angles add to $90^\circ$, and the opposite side of one is the adjacent side of the other.

\filbreak \subsection{the unit circle}
The \term{unit circle} has radius $1$ and centre at the origin. It extends trigonometry past $90^\circ$.
$$\keyres{\cos\theta=x} \qquad\qquad \keyres{\sin\theta=y}$$
Every point on the circle is $(\cos\theta,\,\sin\theta)$. Angles are measured \keyres{counterclockwise from the positive $x$-axis}.
\par\vspace{2pt}
\term{Radians} measure angles by arc length instead of degrees. A full circle is $2\pi$ radians, so
$$180^\circ=\pi \text{ radians} \qquad \text{degrees}\to\text{radians}: \text{ multiply by } \frac{\pi}{180}$$
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.34\linewidth}@{}p{0.46\linewidth}@{}}
\textcolor{termHi}{\textbf{quadrant}} & \textcolor{termHi}{\textbf{positive there}} & \textcolor{termHi}{\textbf{because}} \\[1pt]
I & all & $x>0$, $y>0$ \\
II & $\sin$ only & $y>0$ but $x<0$ \\
III & $\tan$ only & both negative, so the ratio is positive \\
IV & $\cos$ only & $x>0$ but $y<0$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Derive the signs, do not memorize them.} Ask whether $x$ and $y$ are positive in that quadrant, then read off which ratio survives.

\filbreak \subsection{trigonometric identities and equations}
\stepbox{THE ONE IDENTITY EVERYTHING ELSE COMES FROM}{$$\keyres{\sin^2\theta+\cos^2\theta=1}$$
This is the Pythagorean theorem on the unit circle: the legs are $x=\cos\theta$ and $y=\sin\theta$, and the hypotenuse is the radius $1$.}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{quotient} & $\tan\theta=\dfrac{\sin\theta}{\cos\theta}$ \\[4pt]
\term{reciprocals} & $\csc=\dfrac{1}{\sin}$, \; $\sec=\dfrac{1}{\cos}$, \; $\cot=\dfrac{1}{\tan}$ \\[4pt]
\term{double angle} & $\sin2\theta=2\sin\theta\cos\theta$ \\[2pt]
& $\cos2\theta=\cos^2\theta-\sin^2\theta$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE PROCESS — SOLVE A TRIG EQUATION}{
\textbf{1.} \term{Isolate} the trig function.\\
\textbf{2.} \term{Find} one angle that works, using a special triangle.\\
\textbf{3.} \term{Find every other angle} in the interval with the same value.\\
\textbf{4.} \term{Check} each against the interval you were given.}
\par\vspace{2pt}
\stepbox{WORKED: SOLVE $\;\sin x=\tfrac12$ ON $[0,2\pi)$}{$\sin$ is the $y$-coordinate, and $y=\frac12$ at two places on the circle.
\par\vspace{1pt}
first angle: \; $x=\dfrac{\pi}{6}$ \; \emph{\scriptsize(from the $30$-$60$-$90$ triangle)}
\par\vspace{1pt}
$y$ is also positive in quadrant II, and the matching angle there is $\pi-\dfrac{\pi}{6}=\dfrac{5\pi}{6}$
$$x=\keyres{\frac{\pi}{6}} \quad\text{or}\quad x=\keyres{\frac{5\pi}{6}}$$
\warn{A trig equation almost never has just one answer.} Sweep the whole interval before stopping.}

\filbreak \subsection{graphs of the trigonometric functions}
$\sin$ and $\cos$ repeat forever. Every transformation you need is visible in one general form:
$$y=A\sin\big(B(x-C)\big)+D$$
{\small
\begin{tabular}{@{}p{0.24\linewidth}@{}p{0.24\linewidth}@{}p{0.52\linewidth}@{}}
\textcolor{termHi}{\textbf{letter}} & \textcolor{termHi}{\textbf{name}} & \textcolor{termHi}{\textbf{what it does}} \\[1pt]
$|A|$ & \term{amplitude} & height from the middle to a peak \\[2pt]
$\dfrac{2\pi}{B}$ & \term{period} & how far before the pattern repeats \\[3pt]
$C$ & \term{phase shift} & slide left or right \\[2pt]
$D$ & \term{vertical shift} & the new middle line \\
\end{tabular}}
\par\vspace{2pt}
\warn{$B$ is not the period.} The period is $\frac{2\pi}{B}$. A larger $B$ squeezes the wave, making the period \keyres{shorter}.
\par\vspace{2pt}
\warn{Factor before reading $C$.} In $\sin(2x-\pi)$ the shift is not $\pi$. Factor the $B$ out first.
\par\vspace{1pt}
\stepbox{WORKED: $\;y=3\sin(2x-\pi)+1$}{\textbf{1.} factor the inside: \; $2x-\pi=2\left(x-\dfrac{\pi}{2}\right)$
\par\vspace{1pt}
\textbf{2.} read the four numbers: \; $A=3$, \; $B=2$, \; $C=\dfrac{\pi}{2}$, \; $D=1$
\par\vspace{1pt}
\textbf{3.} translate them:
$$\text{amplitude } \keyres{3} \qquad \text{period } \frac{2\pi}{2}=\keyres{\pi} \qquad \text{shift } \keyres{\frac{\pi}{2}\text{ right}} \qquad \text{middle line } \keyres{y=1}$$
So the wave runs from $y=-2$ up to $y=4$, completing a full cycle every $\pi$.}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=middle, axis line style={white!45},
width=8.0cm, height=3.6cm, xmin=-0.4, xmax=7.1, ymin=-1.6, ymax=1.6,
xtick={0,3.1416,6.2832}, xticklabels={$0$,$\pi$,$2\pi$},
ytick={-1,1}, tick label style={font=\tiny, text=white!70},
label style={font=\tiny, text=white!80}, clip=false]
\addplot[uHi, thick, domain=0:6.2832, samples=90] {sin(deg(x))};
\addplot[warnHi, thick, dashed, domain=0:6.2832, samples=90] {cos(deg(x))};
\node[font=\tiny, text=uHi, anchor=south] at (axis cs:1.57,1.02) {$\sin x$};
\node[font=\tiny, text=warnHi, anchor=north] at (axis cs:3.14,-1.02) {$\cos x$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize both have amplitude $1$ and period $2\pi$. \keyres{$\cos$ is $\sin$ shifted left by $\frac{\pi}{2}$} — the same wave, started earlier}
\end{center}
\par\vspace{2pt}
\term{tan} behaves differently: its period is $\keyres{\pi}$, not $2\pi$, and it has a \keyres{vertical asymptote} wherever $\cos x=0$.

\filbreak \subsection{inverse trigonometric functions}
$\sin x=\frac12$ has infinitely many answers, so $\sin$ has no inverse until you \keyres{restrict its domain}. Each inverse therefore returns \keyres{one} angle from a fixed range.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.34\linewidth}@{}p{0.40\linewidth}@{}}
\textcolor{termHi}{\textbf{function}} & \textcolor{termHi}{\textbf{returns an angle in}} & \textcolor{termHi}{\textbf{quadrants}} \\[1pt]
$\arcsin x$ & $\left[-\frac{\pi}{2},\,\frac{\pi}{2}\right]$ & IV and I \\[3pt]
$\arccos x$ & $\left[0,\,\pi\right]$ & I and II \\[3pt]
$\arctan x$ & $\left(-\frac{\pi}{2},\,\frac{\pi}{2}\right)$ & IV and I \\
\end{tabular}}
\par\vspace{2pt}
\warn{This is why a calculator can give the "wrong" angle.} It returns the one angle in that range. If your problem sits in another quadrant, adjust it yourself — the same trap as converting to polar coordinates.
\par\vspace{2pt}
\keyres{$\arcsin$ undoes $\sin$ only inside the restricted range.} $\arcsin\!\left(\sin\frac{5\pi}{6}\right)$ is $\frac{\pi}{6}$, not $\frac{5\pi}{6}$, because $\frac{5\pi}{6}$ is outside $\left[-\frac{\pi}{2},\frac{\pi}{2}\right]$.

\filbreak \subsection{triangles that are not right-angled}
SOH CAH TOA needs a right angle. Two laws handle every other triangle.
\par\vspace{2pt}
\filbreak \subsubsection{Which law? — count what you are given}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Law of Sines} $\Rightarrow$ you have a \keyres{matching angle and opposite side}. Cases \term{AAS}, \term{ASA}, \term{SSA}. \\[4pt]
\textcolor{keyHi}{\textbf{B}} & \term{Law of Cosines} $\Rightarrow$ you do \keyres{not}. Cases \term{SAS} and \term{SSS}. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{The test is one question}: can you see an angle and the side directly across from it, both known? If yes, use Sines. If no, use Cosines.
\par\vspace{2pt}
$$\text{\term{Law of Sines}}\qquad \frac{a}{\sin A}=\frac{b}{\sin B}=\frac{c}{\sin C}$$
$$\text{\term{Law of Cosines}}\qquad c^2=a^2+b^2-2ab\cos C$$
\keyres{Each side pairs with the angle opposite it.} Lower-case $a$ sits across from upper-case $A$.
\par\vspace{2pt}
\keyres{The Law of Cosines is the Pythagorean theorem with a correction term.} When $C=90^\circ$, $\cos C=0$, the last term vanishes, and it becomes $c^2=a^2+b^2$ exactly.
\par\vspace{2pt}
\stepbox{WORKED (A): $A=30^\circ$, \; $B=45^\circ$, \; $a=10$}{$a$ and $A$ are a matching pair, so use Sines:
$$\frac{10}{\sin30^\circ}=\frac{b}{\sin45^\circ} \;\Longrightarrow\; b=\frac{10\sin45^\circ}{\sin30^\circ}=\frac{10\left(\frac{\sqrt2}{2}\right)}{\frac12}$$
$$b=10\sqrt2\approx\keyres{14.14}$$
\keyres{Sanity check}: $B$ is the larger angle, so $b$ must be the longer side. $14.14>10$ \checkmark}
\stepdown
\stepbox{WORKED (B): $a=5$, \; $b=7$, \; $C=60^\circ$}{The known angle sits \keyres{between} the two known sides, so no matching pair exists. Use Cosines:
$$c^2=5^2+7^2-2(5)(7)\cos60^\circ=25+49-70\left(\tfrac12\right)=74-35=39$$
$$c=\sqrt{39}\approx\keyres{6.24}$$
\keyres{Sanity check}: $c$ must sit between $7-5=2$ and $7+5=12$. It does \checkmark}
\par\vspace{2pt}
\warn{SSA can give two triangles, one, or none.} Two different angles share the same sine, so after finding one, check whether its supplement also fits inside $180^\circ$. This is called the \term{ambiguous case}.

\filbreak \subsubsection{Sum and difference identities}
These build exact values for angles the special triangles do not cover.
$$\sin(A\pm B)=\sin A\cos B\pm\cos A\sin B$$
$$\cos(A\pm B)=\cos A\cos B\mp\sin A\sin B$$
\warn{The $\cos$ signs are reversed.} A plus inside gives a minus in the middle. This is the single most-missed detail in the section.
\par\vspace{2pt}
\stepbox{WORKED: EXACT VALUE OF $\sin75^\circ$}{$75^\circ$ is not a special angle, but $75=45+30$ and both of those are:
$$\sin75^\circ=\sin45^\circ\cos30^\circ+\cos45^\circ\sin30^\circ$$
$$=\left(\tfrac{\sqrt2}{2}\right)\left(\tfrac{\sqrt3}{2}\right)+\left(\tfrac{\sqrt2}{2}\right)\left(\tfrac12\right)=\frac{\sqrt6}{4}+\frac{\sqrt2}{4}=\keyres{\frac{\sqrt6+\sqrt2}{4}}$$
check: this is about $0.966$, and $\sin75^\circ$ should be just under $1$ \checkmark}
\par\vspace{2pt}
\keyres{Setting $A=B$ turns these into the double-angle identities} above. They are one family, not two.

\filbreak \subsection{combining functions}
Two functions can be added, subtracted, multiplied or divided, exactly like numbers.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
$(f+g)(x)$ & $f(x)+g(x)$ \\[2pt]
$(f-g)(x)$ & $f(x)-g(x)$ \\[2pt]
$(fg)(x)$ & $f(x)\cdot g(x)$ \\[2pt]
$\left(\dfrac{f}{g}\right)(x)$ & $\dfrac{f(x)}{g(x)}$, \; and \warn{$g(x)\neq0$} \\
\end{tabular}}
\par\vspace{2pt}
\keyres{The new domain is what both originals allow}, minus anything the operation itself forbids. Division adds the rule that $g(x)$ may not be zero.
\par\vspace{2pt}
\stepbox{WORKED: $f(x)=2x+1$, \; $g(x)=x^2$}{$(f+g)(x)=2x+1+x^2$ \; so \; $(f+g)(3)=6+1+9=\keyres{16}$
\par\vspace{1pt}
$(fg)(x)=(2x+1)x^2=2x^3+x^2$ \; so \; $(fg)(3)=54+9=\keyres{63}$
\par\vspace{1pt}
\warn{This is not composition.} $(fg)(3)$ multiplies the two outputs and gives $63$. \; $(f\circ g)(3)$ feeds one into the other and gives $19$. Different operations, similar notation.}

\filbreak \subsection{average rate of change}
Slope measures how fast a \keyres{line} climbs. For a curve, the steepness changes, so you measure it \keyres{between two points} instead.
$$\text{average rate of change}=\frac{f(b)-f(a)}{b-a}$$
\keyres{This is exactly the slope formula.} It is the slope of the straight line joining the two points on the curve, called the \term{secant line}.
\par\vspace{2pt}
\stepbox{WORKED: $f(x)=x^2$ ON $[1,3]$}{$f(1)=1$ and $f(3)=9$:
$$\frac{9-1}{3-1}=\frac{8}{2}=\keyres{4}$$
So across that stretch the curve rises \keyres{$4$ units of $y$ for each unit of $x$}, on average.
\par\vspace{1pt}
\warn{It is not the steepness at any single point.} At $x=1$ the curve is much flatter than $4$, and at $x=3$ much steeper. The answer is the average of everything between.}
\par\vspace{2pt}
\keyres{Shrink the interval until the two points nearly touch, and the average rate becomes the steepness at a single point.} That limit is the derivative, and it is the first idea in calculus. Everything in this document has been leading here.

\filbreak \subsection{polar coordinates}
\term{Polar coordinates} locate a point by \keyres{distance and direction} instead of across and up. Write $(r,\theta)$.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{polar $\to$ rectangular} & $x=r\cos\theta$, \quad $y=r\sin\theta$ \\[2pt]
\term{rectangular $\to$ polar} & $r=\sqrt{x^2+y^2}$, \quad $\tan\theta=\dfrac{y}{x}$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: $(3,4)$ TO POLAR}{$r=\sqrt{3^2+4^2}=\sqrt{25}=\keyres{5}$
\par\vspace{1pt}
$\tan\theta=\dfrac43$, so $\theta=\arctan\dfrac43\approx\keyres{53.13^\circ}$
\par\vspace{1pt}
\warn{Check the quadrant.} $\arctan$ only reports angles in quadrants I and IV. If $x<0$, add $180^\circ$.}

\filbreak \subsection{vectors}
A \term{vector} has both \keyres{size and direction}. Write it in components as $\langle a,b\rangle$.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{magnitude} & $\|\langle a,b\rangle\|=\sqrt{a^2+b^2}$ \\[2pt]
\term{add} & add matching components \\[2pt]
\term{scalar multiply} & multiply every component \\[2pt]
\term{unit vector} & divide the vector by its own magnitude \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: $\;\vec v=\langle3,4\rangle$}{magnitude: \; $\|\vec v\|=\sqrt{9+16}=\sqrt{25}=\keyres{5}$
\par\vspace{1pt}
unit vector: divide each component by $5$:
$$\hat v=\left\langle\frac35,\;\frac45\right\rangle$$
check: \; $\sqrt{\left(\frac35\right)^2+\left(\frac45\right)^2}=\sqrt{\frac{9}{25}+\frac{16}{25}}=\sqrt{1}=\keyres{1}$ \checkmark}
\par\vspace{2pt}
\keyres{A unit vector keeps the direction and throws away the size.} That is why dividing by the magnitude always lands on $1$.

\end{multicols}

\Needspace*{20\baselineskip}
\vspace*{\fill}
\noindent\rule{\linewidth}{0.5pt}
\begin{center}\small\textbf{Legend}\end{center}
\vspace{-3pt}
\begin{multicols}{4}
\small
\textbf{Colours: what we tell you}\\
\term{orange — a new word}\\
\keyres{teal — the answer}\\
\warn{red — a common mistake}\\
white — explanation\\
boxes stack top to bottom\\
$\downarrow$ means "next step"\\

\textbf{Colours: inside the maths}\\
\textcolor{varHi}{blue — a letter} $x,y$\\
\textcolor{numHi}{green — a number} $3,7$\\
\textcolor{funcHi}{yellow — a function} $f,g$\\
\textcolor{delimHi}{pink — brackets} $(\;)$\\
\textcolor{opHi}{grey — signs} $+\,-\,=$\\

\textbf{Comparing}\\
$=$ \; is equal to\\
$\neq$ \; is not equal to\\
$<$ \; is less than\\
$>$ \; is greater than\\
$\leq$ \; less than or equal\\
$\geq$ \; greater than or equal\\
$\approx$ \; is about\\

\textbf{Operations}\\
$\cdot$ \; times\\
$\pm$ \; plus or minus\\
$\sqrt{\;}$ \; square root\\
$\sqrt[n]{\;}$ \; $n$th root\\
$|x|$ \; absolute value\\
$x^{-1}$ \; one over $x$\\
$f^{-1}$ \; inverse function\\

\textbf{Names}\\
$\pi$ \; about $3.14159$\\
$\theta$ \; an angle\\
$i$ \; $\sqrt{-1}$\\
$m$ \; slope\\
$a_n$ \; the $n$th term\\
$\Rightarrow$ \; therefore\\
\end{multicols}

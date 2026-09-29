---
geometry:
  - top=0.4in
  - bottom=0.4in
  - left=0.4in
  - right=0.4in
fontsize: 9pt
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
  \newcommand{\ubox}[1]{\fcolorbox{uHi}{black}{\textcolor{uHi}{$#1$}}}
  \newcommand{\dubox}[1]{\fcolorbox{duHi}{black}{\textcolor{duHi}{$#1$}}}
  \newcommand{\stepbox}[2]{{\setlength{\fboxsep}{2.5pt}\noindent\fcolorbox{termHi}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}{\scriptsize\textcolor{termHi}{\textbf{#1}}}\\[1pt]\small #2\end{minipage}}\par}}
  \newcommand{\stepdown}{\par\vspace{-1pt}{\centering\textcolor{termHi}{$\downarrow$}\par}\nopagebreak\vspace{-1pt}\nopagebreak}
  \renewcommand{\filbreak}{\needspace{4\baselineskip}}
  \newcommand{\keyres}[1]{\textcolor{keyHi}{#1}}
  \newcommand{\warn}[1]{\textcolor{warnHi}{#1}}
  \newcommand{\term}[1]{\textcolor{termHi}{\textbf{#1}}}
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


\section{Vector Calculus}

\begin{multicols}{2}

\filbreak \subsection{Calc 2 $\to$ Vector Calc: carry-over cheat sheet}
A consolidated lookup of every antiderivative from Calc 2 — one place to glance while the new material piles on. Every result carries a \keyres{$+\,C$}; the lone $\tfrac1a$ out front and the \keyres{$\ln$}-flag are the usual misses.

\filbreak \subsubsection{Master integral table}
\begin{center}
\setlength{\tabcolsep}{3pt}\renewcommand{\arraystretch}{1.3}
\footnotesize
\begin{tabular}{@{}r@{$\;=\;$}l@{}}
\multicolumn{2}{@{}l@{}}{\term{Power \& log}}\\
$\int 1\,dx$ & $x+C$\\
$\int x^n\,dx$ & $\frac{x^{n+1}}{n+1}+C\;\;(n\neq-1)$\\
$\int \frac1x\,dx$ & $\keyres{\ln|x|}+C$\\
\multicolumn{2}{@{}l@{}}{\term{Exponential}}\\
$\int e^x\,dx$ & $e^x+C$\\
$\int a^x\,dx$ & $\frac{a^x}{\ln a}+C$\\
$\int e^{kx}\,dx$ & $\frac1k e^{kx}+C$\\
\multicolumn{2}{@{}l@{}}{\term{Trig}}\\
$\int \sin x\,dx$ & $-\cos x+C$\\
$\int \cos x\,dx$ & $\sin x+C$\\
$\int \sec^2 x\,dx$ & $\tan x+C$\\
$\int \csc^2 x\,dx$ & $-\cot x+C$\\
$\int \sec x\tan x\,dx$ & $\sec x+C$\\
$\int \csc x\cot x\,dx$ & $-\csc x+C$\\
$\int \tan x\,dx$ & $\ln|\sec x|+C$\\
$\int \sec x\,dx$ & $\ln|\sec x+\tan x|+C$\\
\multicolumn{2}{@{}l@{}}{\term{Inverse trig}}\\
$\int \frac{1}{1+x^2}\,dx$ & $\arctan x+C$\\
$\int \frac{1}{\sqrt{1-x^2}}\,dx$ & $\arcsin x+C$\\
$\int \frac{1}{a^2+x^2}\,dx$ & $\keyres{\tfrac1a}\arctan\!\frac{x}{a}+C$\\
$\int \frac{1}{\sqrt{a^2-x^2}}\,dx$ & $\arcsin\!\frac{x}{a}+C$\\
\end{tabular}
\end{center}

\filbreak \subsubsection{Tools you carry into vectors}
\begin{itemize}
\item \term{Distance / Pythagoras}: $d=\sqrt{(\Delta x)^2+(\Delta y)^2}$ in 2D, add $+(\Delta z)^2$ in 3D. This \emph{is} the magnitude formula in disguise.
\item \term{Law of cosines}: $c^2=a^2+b^2-2ab\cos\theta$ — the seed of the dot-product angle formula.
\item \term{Cosine quick values}: $\cos 0=1$, $\cos 30^\circ=\tfrac{\sqrt3}{2}$, $\cos 45^\circ=\tfrac{\sqrt2}{2}$, $\cos 60^\circ=\tfrac12$, $\cos 90^\circ=0$.
\item \term{Simplify roots}: $\sqrt{a^2 b}=a\sqrt{b}$; keep magnitudes exact ($\sqrt{20}=2\sqrt5$) unless a decimal is asked.
\item \term{Unit preview}: dividing any vector by its length gives a \keyres{unit vector} (length $1$) — used constantly below.
\end{itemize}

\filbreak \subsection{vector basics (2D \& 3D)}
A \term{vector} has \keyres{magnitude} (length) and \keyres{direction}; a \term{scalar} is just a number. Written in \term{component form} $\vec v=\langle a,b\rangle$ (2D) or $\langle a,b,c\rangle$ (3D), or in \term{standard-basis form} $a\,\mathbf{i}+b\,\mathbf{j}$.

\filbreak \subsubsection{From two points (displacement)}
The vector from $P=(x_1,y_1)$ to $Q=(x_2,y_2)$ is \keyres{tip $-$ tail}:
$$\vec{PQ}=\langle x_2-x_1,\ y_2-y_1\rangle$$
A \term{position vector} is the special case from the origin: $\vec{OP}=\langle x_1,y_1\rangle$.

\term{Example}: $P(1,4)$, $Q(5,1)$: \; $\vec{PQ}=\langle5-1,\ 1-4\rangle=\keyres{\langle4,-3\rangle}$ — \warn{tip minus tail}; reversing the order flips the vector.

\filbreak \subsubsection{Magnitude (length)}
$\|\vec v\|=\sqrt{a^2+b^2}$ in 2D, \; $\sqrt{a^2+b^2+c^2}$ in 3D. It is the Pythagorean distance from tail to tip — \warn{never negative}.

\filbreak \subsubsection{Algebra: scale, add, subtract}
\begin{itemize}
\item \term{Scalar mult.}\ $k\vec v=\langle ka,kb\rangle$: stretches length by $|k|$; $k<0$ flips direction.
\item \term{Add / subtract}: componentwise, $\vec u\pm\vec v=\langle u_1\pm v_1,\ u_2\pm v_2\rangle$.
\item \term{Geometrically}: $\vec u+\vec v$ is \keyres{tip-to-tail}; $\vec u-\vec v$ points from $\vec v$'s tip to $\vec u$'s tip.
\end{itemize}

\begin{center}
\begin{tikzpicture}[>=Latex, scale=0.85]
\draw[white!45,->] (-0.3,0)--(3.7,0) node[right,font=\tiny]{$x$};
\draw[white!45,->] (0,-0.3)--(0,2.9) node[above,font=\tiny]{$y$};
\draw[uHi,very thick,->] (0,0)--(2,1) node[midway,below right,font=\tiny]{$\vec u$};
\draw[duHi,very thick,->] (2,1)--(3,2.5) node[midway,right,font=\tiny]{$\vec v$};
\draw[keyHi,very thick,->] (0,0)--(3,2.5) node[midway,above left,font=\tiny]{$\vec u+\vec v$};
\end{tikzpicture}
\end{center}
\term{Example}: $\vec u=\langle1,2\rangle$, $\vec v=\langle3,-1\rangle$: \; $2\vec u-3\vec v=\langle2-9,\ 4+3\rangle=\keyres{\langle-7,7\rangle}$ — scale each first, then combine componentwise.

\filbreak \subsubsection{Unit vectors}
A \term{unit vector} has length $1$. Normalize any $\vec v$ by dividing by its length:
$$\hat v=\frac{\vec v}{\|\vec v\|}$$
The basis vectors $\mathbf{i}=\langle1,0\rangle$, $\mathbf{j}=\langle0,1\rangle$ are the unit vectors along the axes.

\filbreak \subsubsection{Worked: normalize $\vec u=\langle3,-4\rangle$, then rescale}
\stepbox{1. MAGNITUDE}{$\|\vec u\|=\sqrt{9+16}=5$}
\stepdown
\stepbox{2. DIVIDE BY THE LENGTH}{$\hat u=\tfrac15\langle3,-4\rangle=\keyres{\langle\tfrac35,-\tfrac45\rangle}$; \; check: $\|\hat u\|=1$ \checkmark}
\stepdown
\stepbox{3. ANY LENGTH IN THAT DIRECTION}{length $10$ along $\vec u$: $10\,\hat u=\keyres{\langle6,-8\rangle}$; \; opposite direction: $-\hat u$ \; \emph{\scriptsize(normalize, \emph{then} scale — the all-purpose move)}}

\filbreak \subsubsection{Magnitude \& angle $\to$ components}
Length $\|\vec v\|$ at angle $\theta$ from the $+x$-axis decomposes as
$$\vec v=\langle\|\vec v\|\cos\theta,\ \|\vec v\|\sin\theta\rangle$$
\term{Example}: length $20$ at $60^\circ$: $\langle20\cos60^\circ,\,20\sin60^\circ\rangle=\keyres{\langle10,\,10\sqrt3\rangle}$ — the decomposition projectile motion leans on later.

\filbreak \subsection{3D vectors}
Add a third axis $z$ perpendicular to the $xy$-plane by the \keyres{right-hand rule} (fingers curl $x\to y$, thumb points $+z$). Points are $(x,y,z)$; the axes split space into $8$ \term{octants}.

\filbreak \subsubsection{Core formulas}
\begin{itemize}
\item \term{Component form}: $\vec v=\langle a,b,c\rangle=a\,\mathbf{i}+b\,\mathbf{j}+c\,\mathbf{k}$.
\item \term{Magnitude}: $\|\vec v\|=\sqrt{a^2+b^2+c^2}$.
\item \term{Distance} $P_1\to P_2$: $\sqrt{(\Delta x)^2+(\Delta y)^2+(\Delta z)^2}$.
\item \term{Midpoint}: $\big(\tfrac{x_1+x_2}{2},\,\tfrac{y_1+y_2}{2},\,\tfrac{z_1+z_2}{2}\big)$ — average each coordinate.
\item \term{Unit vector}: $\hat v=\vec v/\|\vec v\|$ — identical to 2D, just one more component.
\item \term{Sphere}, center $(h,k,l)$, radius $r$: $(x-h)^2+(y-k)^2+(z-l)^2=r^2$ — the distance formula, squared. Complete the square to find center/radius from an expanded form.
\item \term{Coordinate planes}: $z=0$ is the $xy$-plane, $x=0$ the $yz$-plane, $y=0$ the $xz$-plane. A missing variable in an equation means that variable is \keyres{unrestricted} — $z=3$ is a whole horizontal plane, not a point.
\end{itemize}

\begin{center}
\begin{tikzpicture}[>=Latex, scale=0.85]
\draw[white!45,->] (0,0)--(-1.6,-1.05) node[left,font=\tiny]{$x$};
\draw[white!45,->] (0,0)--(3.4,0) node[right,font=\tiny]{$y$};
\draw[white!45,->] (0,0)--(0,2.7) node[above,font=\tiny]{$z$};
\draw[duHi,dashed] (0,0)--(1.8,-0.8);
\draw[duHi,dashed] (1.8,-0.8)--(1.8,1.2);
\draw[keyHi,very thick,->] (0,0)--(1.8,1.2) node[above right,font=\tiny]{$\vec v=\langle2,3,2\rangle$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: $\vec v=\langle1,-2,2\rangle$}
\stepbox{1. MAGNITUDE}{$\|\vec v\|=\sqrt{1+4+4}=3$}
\stepdown
\stepbox{2. NORMALIZE}{$\hat v=\tfrac13\langle1,-2,2\rangle=\keyres{\langle\tfrac13,-\tfrac23,\tfrac23\rangle}$}
\par\vspace{2pt}
Same formula, different inputs — distance $(1,0,2)\to(4,4,4)$: $\sqrt{3^2+4^2+2^2}=\keyres{\sqrt{29}}$.

\filbreak \subsubsection{Worked: sphere from an expanded equation}
$x^2+y^2+z^2-4x+6y-2z=11$:
\par\vspace{2pt}
\stepbox{1. GROUP BY VARIABLE}{$(x^2-4x)+(y^2+6y)+(z^2-2z)=11$}
\stepdown
\stepbox{2. COMPLETE EACH SQUARE}{$(x-2)^2-4+(y+3)^2-9+(z-1)^2-1=11$ \; \emph{\scriptsize(half the coefficient, squared — then subtract it right back)}}
\stepdown
\stepbox{3. READ OFF}{$(x-2)^2+(y+3)^2+(z-1)^2=25$: \; center $\keyres{(2,-3,1)}$, radius $\keyres{5}$ \; \emph{\scriptsize(\warn{radius $=\sqrt{25}$, not $25$})}}

\filbreak \subsubsection{Worked: sphere from a diameter's endpoints}
$P(1,2,3)$ and $Q(5,2,-1)$ end a diameter:
\par\vspace{2pt}
\stepbox{1. CENTER $=$ MIDPOINT}{$\big(\tfrac{1+5}{2},\,\tfrac{2+2}{2},\,\tfrac{3-1}{2}\big)=(3,2,1)$}
\stepdown
\stepbox{2. RADIUS $=$ HALF THE DISTANCE}{$\|\vec{PQ}\|=\sqrt{16+0+16}=4\sqrt2 \;\Rightarrow\; r=2\sqrt2$}
\stepdown
\stepbox{3. WRITE IT}{$(x-3)^2+(y-2)^2+(z-1)^2=\keyres{8}$ \; \emph{\scriptsize($r^2=(2\sqrt2)^2=8$)}}

\filbreak \subsection{dot product}
Multiplies two vectors into a \keyres{scalar} (a number, \warn{not} a vector). Two equivalent definitions:
$$\vec u\cdot\vec v=u_1v_1+u_2v_2+u_3v_3 \qquad \vec u\cdot\vec v=\|\vec u\|\,\|\vec v\|\cos\theta$$
The \term{algebraic} form (left) computes it. The \term{geometric} form (right) interprets it — $\theta$ is the angle between the vectors.

\filbreak \subsubsection{Properties}
\begin{itemize}
\item \term{Commutative}: $\vec u\cdot\vec v=\vec v\cdot\vec u$.
\item \term{Distributive}: $\vec u\cdot(\vec v+\vec w)=\vec u\cdot\vec v+\vec u\cdot\vec w$.
\item \term{Scalar}: $(k\vec u)\cdot\vec v=k(\vec u\cdot\vec v)$.
\item \term{Self}: $\vec v\cdot\vec v=\|\vec v\|^2$, so $\|\vec v\|=\sqrt{\vec v\cdot\vec v}$.
\end{itemize}

\filbreak \subsubsection{Angle between vectors}
Solve the geometric form for $\cos\theta$:
$$\cos\theta=\frac{\vec u\cdot\vec v}{\|\vec u\|\,\|\vec v\|}\qquad \theta=\arccos\!\Big(\tfrac{\vec u\cdot\vec v}{\|\vec u\|\,\|\vec v\|}\Big)$$
The \keyres{sign} of $\vec u\cdot\vec v$ tells the story: \keyres{$+$} acute, \keyres{$0$} right angle, \keyres{$-$} obtuse.

\filbreak \subsubsection{Orthogonality test}
\keyres{$\vec u\cdot\vec v=0 \iff \vec u\perp\vec v$} (perpendicular) — the fastest perpendicular check there is, \warn{no angle needed}. E.g.\ $\langle2,3\rangle\cdot\langle3,-2\rangle=6-6=0$, so those two are perpendicular.

\filbreak \subsubsection{Projections}
Drop $\vec u$ onto the line of $\vec v$:
\begin{itemize}
\item \term{Scalar projection} (a signed length): $\mathrm{comp}_{\vec v}\vec u=\dfrac{\vec u\cdot\vec v}{\|\vec v\|}$.
\item \term{Vector projection} (a vector along $\vec v$): $\mathrm{proj}_{\vec v}\vec u=\dfrac{\vec u\cdot\vec v}{\|\vec v\|^2}\,\vec v$.
\end{itemize}

\begin{center}
\begin{tikzpicture}[>=Latex, scale=1.0]
\draw[uHi,very thick,->] (0,0)--(3,0) node[right,font=\tiny]{$\vec v$};
\draw[duHi,very thick,->] (0,0)--(1.6,1.8) node[above,font=\tiny]{$\vec u$};
\draw[keyHi,dashed] (1.6,1.8)--(1.6,0);
\draw[keyHi,very thick,->] (0,0)--(1.6,0);
\node[keyHi,below,font=\tiny] at (0.8,-0.05){$\mathrm{proj}_{\vec v}\vec u$};
\draw[white!70] (0.55,0) arc (0:48:0.55);
\node[white!80,font=\tiny] at (0.78,0.27){$\theta$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: the full battery — $\vec u=\langle2,3\rangle$, $\vec v=\langle4,-1\rangle$}
\stepbox{1. DOT \& LENGTHS}{$\vec u\cdot\vec v=8-3=5 \qquad \|\vec u\|=\sqrt{13}, \; \|\vec v\|=\sqrt{17}$}
\stepdown
\stepbox{2. ANGLE}{$\cos\theta=\tfrac{5}{\sqrt{221}}\approx0.336 \Rightarrow \theta\approx\keyres{70.3^\circ}$; \; the $+$ sign already said acute — not orthogonal}
\stepdown
\stepbox{3. BOTH PROJECTIONS}{$\mathrm{comp}_{\vec v}\vec u=\tfrac{5}{\sqrt{17}}\approx1.21$ — a \keyres{signed length}; \quad $\mathrm{proj}_{\vec v}\vec u=\tfrac{5}{17}\langle4,-1\rangle=\keyres{\langle\tfrac{20}{17},-\tfrac{5}{17}\rangle}$ — a \keyres{vector}}
\stepdown
\stepbox{4. ORTHOGONAL DECOMPOSITION}{$\vec u-\mathrm{proj}_{\vec v}\vec u=\big\langle2-\tfrac{20}{17},\ 3+\tfrac{5}{17}\big\rangle=\langle\tfrac{14}{17},\tfrac{56}{17}\rangle$: \quad $\vec u=\langle\tfrac{20}{17},-\tfrac{5}{17}\rangle_{\parallel}+\langle\tfrac{14}{17},\tfrac{56}{17}\rangle_{\perp}$ \; \emph{\scriptsize(check: $\langle14,56\rangle\cdot\langle4,-1\rangle=56-56=0$ \checkmark)}}
\par\vspace{2pt}
\term{Solve-for-unknown flavor}: find $k$ with $\langle2,k\rangle\perp\langle6,4\rangle$: \; $12+4k=0\Rightarrow k=\keyres{-3}$.
\par\vspace{2pt}
\term{3D changes nothing}: $\langle1,2,2\rangle\cdot\langle2,-2,1\rangle=2-4+2=0$ — \keyres{perpendicular}, no arccos needed.

\filbreak \subsubsection{Work (the physics application)}
A constant force $\vec F$ moving an object along displacement $\vec d=\vec{PQ}$ does work
$$W=\vec F\cdot\vec d=\|\vec F\|\,\|\vec d\|\cos\theta$$
Only the component of force \emph{along the motion} counts — that's the projection idea in disguise. Force $\perp$ motion does \keyres{zero} work.

\filbreak \subsubsection{Worked: $50$ N at $30^\circ$ drags a crate $20$ m}
\stepbox{1. GEOMETRIC FORM}{$W=\|\vec F\|\,\|\vec d\|\cos\theta=50\cdot20\cdot\cos30^\circ$}
\stepdown
\stepbox{2. EVALUATE}{$1000\cdot\tfrac{\sqrt3}{2}=\keyres{500\sqrt3\approx866\ \mathrm{J}}$}
\stepdown
\stepbox{3. COMPONENT-FORM CHECK}{$\vec F=\langle50\cos30^\circ,\,50\sin30^\circ\rangle$, \; $\vec d=\langle20,0\rangle$: \; $W=1000\cos30^\circ$ \checkmark — \keyres{only the along-motion component did work}}

\filbreak \subsection{cross product (3D only)}
Multiplies two 3D vectors into a new \keyres{vector} that is \keyres{orthogonal to both} inputs. Compare: dot $\to$ scalar. Cross $\to$ vector. \warn{3D only} — there is no 2D cross product (pad a 2D vector with a third component $0$ if needed). It exists because "find a vector perpendicular to these two" is the most-reused move in this chapter — planes (next section) run on it.
$$\vec u\times\vec v=\langle u_2v_3-u_3v_2,\;-(u_1v_3-u_3v_1),\;u_1v_2-u_2v_1\rangle$$
\warn{Don't memorize those indices} — nobody reliably can. Run the determinant process below every time. It regenerates the formula on demand.

\filbreak \subsubsection{What is it for? — four jobs}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & a vector \term{perpendicular to two others} $\Rightarrow$ $\vec u\times\vec v$, then divide by its magnitude for a \keyres{unit} normal \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{area} $\Rightarrow$ parallelogram $=|\vec u\times\vec v|$; \; triangle $=\frac12|\vec u\times\vec v|$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{volume} of a parallelepiped $\Rightarrow$ $|\vec u\cdot(\vec v\times\vec w)|$ (triple scalar product) \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{torque} $\Rightarrow$ $\vec r\times\vec F$ \\
\end{tabular}}
\par\vspace{2pt}
All four run the \keyres{same $3\times3$ determinant}. Only what you do with the result changes. \warn{The cross product exists in 3D only} — a 2D problem must be lifted with a $z$-component of $0$.
\par\vspace{2pt}
\filbreak \subsubsection{Step 0: the $2\times2$ determinant (the only memorized piece)}
$$\begin{vmatrix} a & b \\ c & d \end{vmatrix}=ad-bc$$
Criss-cross: \keyres{down-right product minus up-right product}. Every $3\times3$ reduces to three of these.

\filbreak \subsubsection{Setup: the $3\times3$ determinant}
Row 1 = basis symbols, row 2 = the \emph{first} vector, row 3 = the second:
$$\vec u\times\vec v=\begin{vmatrix}\mathbf i & \mathbf j & \mathbf k\\ u_1 & u_2 & u_3\\ v_1 & v_2 & v_3\end{vmatrix}$$
\warn{Row order matters}: swapping rows 2 \& 3 flips every sign of the answer.

\filbreak \subsubsection{Expand by minors: cross out row + column}
Walk the top row. For each of $\mathbf i,\mathbf j,\mathbf k$: \term{cross out its row and its column} — the 4 survivors form its $2\times2$ \term{minor}. Attach alternating signs \keyres{$+\;-\;+$}: \warn{the middle ($\mathbf j$) term is subtracted}.

\begin{center}
\begin{tikzpicture}[every node/.style={font=\scriptsize, text=white}]
\begin{scope}
\node[text=white!25] at (0,1.0) {$\mathbf i$};
\node[text=white!25] at (0.55,1.0) {$\mathbf j$};
\node[text=white!25] at (1.1,1.0) {$\mathbf k$};
\node[text=white!25] at (0,0.5) {$u_1$};
\node[text=keyHi] at (0.55,0.5) {$u_2$};
\node[text=keyHi] at (1.1,0.5) {$u_3$};
\node[text=white!25] at (0,0) {$v_1$};
\node[text=keyHi] at (0.55,0) {$v_2$};
\node[text=keyHi] at (1.1,0) {$v_3$};
\draw[warnHi!85, semithick] (-0.22,1.0)--(1.32,1.0);
\draw[warnHi!85, semithick] (0,1.22)--(0,-0.2);
\node[font=\tiny] at (0.55,-0.6) {$+\,\mathbf i\,(u_2v_3-u_3v_2)$};
\end{scope}
\begin{scope}[xshift=2.6cm]
\node[text=white!25] at (0,1.0) {$\mathbf i$};
\node[text=white!25] at (0.55,1.0) {$\mathbf j$};
\node[text=white!25] at (1.1,1.0) {$\mathbf k$};
\node[text=keyHi] at (0,0.5) {$u_1$};
\node[text=white!25] at (0.55,0.5) {$u_2$};
\node[text=keyHi] at (1.1,0.5) {$u_3$};
\node[text=keyHi] at (0,0) {$v_1$};
\node[text=white!25] at (0.55,0) {$v_2$};
\node[text=keyHi] at (1.1,0) {$v_3$};
\draw[warnHi!85, semithick] (-0.22,1.0)--(1.32,1.0);
\draw[warnHi!85, semithick] (0.55,1.22)--(0.55,-0.2);
\node[font=\tiny] at (0.55,-0.6) {${\color{warnHi}-}\,\mathbf j\,(u_1v_3-u_3v_1)$};
\end{scope}
\begin{scope}[xshift=5.2cm]
\node[text=white!25] at (0,1.0) {$\mathbf i$};
\node[text=white!25] at (0.55,1.0) {$\mathbf j$};
\node[text=white!25] at (1.1,1.0) {$\mathbf k$};
\node[text=keyHi] at (0,0.5) {$u_1$};
\node[text=keyHi] at (0.55,0.5) {$u_2$};
\node[text=white!25] at (1.1,0.5) {$u_3$};
\node[text=keyHi] at (0,0) {$v_1$};
\node[text=keyHi] at (0.55,0) {$v_2$};
\node[text=white!25] at (1.1,0) {$v_3$};
\draw[warnHi!85, semithick] (-0.22,1.0)--(1.32,1.0);
\draw[warnHi!85, semithick] (1.1,1.22)--(1.1,-0.2);
\node[font=\tiny] at (0.55,-0.6) {$+\,\mathbf k\,(u_1v_2-u_2v_1)$};
\end{scope}
\end{tikzpicture}
\end{center}

$$\vec u\times\vec v=\mathbf i\begin{vmatrix}u_2&u_3\\v_2&v_3\end{vmatrix}-\mathbf j\begin{vmatrix}u_1&u_3\\v_1&v_3\end{vmatrix}+\mathbf k\begin{vmatrix}u_1&u_2\\v_1&v_2\end{vmatrix}$$

\filbreak \subsubsection{Worked: $\langle1,2,3\rangle\times\langle4,5,6\rangle$}
\stepbox{1. BUILD THE DETERMINANT (row 2 = first vector)}{$\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\1&2&3\\4&5&6\end{vmatrix}$}
\stepdown
\stepbox{2. THREE MINORS, SIGNS $+\,-\,+$}{$\mathbf i\begin{vmatrix}2&3\\5&6\end{vmatrix}-\mathbf j\begin{vmatrix}1&3\\4&6\end{vmatrix}+\mathbf k\begin{vmatrix}1&2\\4&5\end{vmatrix}$}
\stepdown
\stepbox{3. CRISS-CROSS EACH ($ad-bc$)}{$\mathbf i(12-15)-\mathbf j(6-12)+\mathbf k(5-8)$}
\stepdown
\stepbox{4. RESULT}{$-3\mathbf i+6\mathbf j-3\mathbf k=\keyres{\langle-3,\,6,\,-3\rangle}$ \; \emph{\scriptsize(watch it: $-\mathbf j(-6)=+6\mathbf j$)}}
\stepdown
\stepbox{5. CHECK — dot with both originals}{$\langle1,2,3\rangle\cdot\langle-3,6,-3\rangle=-3+12-9=0$ \checkmark\\ $\langle4,5,6\rangle\cdot\langle-3,6,-3\rangle=-12+30-18=0$ \checkmark}
\par\vspace{2pt}
Step 5 is free insurance: the answer \emph{must} dot to $0$ against both inputs. If it doesn't, a minor or the middle minus went wrong.

\filbreak \subsubsection{Properties}
\begin{itemize}
\item \warn{Anticommutative}: $\vec v\times\vec u=-(\vec u\times\vec v)$ — order matters, unlike the dot.
\item $\vec u\times\vec u=\vec 0$, and $\vec u\times\vec 0=\vec 0$.
\item \term{Parallel test}: \keyres{$\vec u\times\vec v=\vec 0 \iff \vec u\parallel\vec v$} — the cross-product twin of the dot's $\perp$ test.
\item \term{Distributive}: $\vec u\times(\vec v+\vec w)=\vec u\times\vec v+\vec u\times\vec w$; scalars pull out: $(k\vec u)\times\vec v=k(\vec u\times\vec v)$.
\item \warn{Not associative}: $\vec u\times(\vec v\times\vec w)\neq(\vec u\times\vec v)\times\vec w$ in general.
\item $\vec u\cdot(\vec u\times\vec v)=0$ and $\vec v\cdot(\vec u\times\vec v)=0$ — orthogonal to both, always (that's the whole point).
\end{itemize}

\filbreak \subsubsection{Magnitude \& direction}
$$\|\vec u\times\vec v\|=\|\vec u\|\,\|\vec v\|\sin\theta$$
\begin{itemize}
\item Compare: dot uses $\cos\theta$, cross uses \keyres{$\sin\theta$}. So parallel vectors ($\theta=0$) give $\vec 0$; perpendicular ones give the max length $\|\vec u\|\|\vec v\|$.
\item \term{Right-hand rule}: point fingers along $\vec u$, curl toward $\vec v$; thumb points along $\vec u\times\vec v$. (This is why swapping the order flips the sign.)
\item Unit vector $\perp$ both: $\dfrac{\vec u\times\vec v}{\|\vec u\times\vec v\|}$.
\end{itemize}

\filbreak \subsubsection{Worked: unit vector $\perp$ both, and the $\sin\theta$ angle}
Using the flagship computation above ($\langle1,2,3\rangle\times\langle4,5,6\rangle=\langle-3,6,-3\rangle$):
\par\vspace{2pt}
\stepbox{1. NORMALIZE THE CROSS}{$\|\langle-3,6,-3\rangle\|=\sqrt{9+36+9}=\sqrt{54}=3\sqrt6$: \quad $\hat n=\dfrac{1}{3\sqrt6}\langle-3,6,-3\rangle=\keyres{\dfrac{1}{\sqrt6}\langle-1,2,-1\rangle}$ \; \emph{\scriptsize(the $3$ factors out of the vector. The other unit normal is $-\hat n$)}}
\stepdown
\stepbox{2. ANGLE FROM THE $\sin$ FORM}{$\|\vec u\|=\sqrt{1+4+9}=\sqrt{14}$, \; $\|\vec v\|=\sqrt{16+25+36}=\sqrt{77}$: \quad $\sin\theta=\dfrac{3\sqrt6}{\sqrt{14}\sqrt{77}}\approx0.224 \Rightarrow \theta\approx\keyres{12.9^\circ}$}
\stepdown
\stepbox{3. CROSS-CHECK WITH THE DOT}{$\vec u\cdot\vec v=4+10+18=32$: \; $\cos\theta=\tfrac{32}{\sqrt{14}\sqrt{77}}\approx0.975\Rightarrow12.9^\circ$ \checkmark — \keyres{two independent routes, one angle}}

\filbreak \subsubsection{Basis circle}
$$\mathbf i\times\mathbf j=\mathbf k \qquad \mathbf j\times\mathbf k=\mathbf i \qquad \mathbf k\times\mathbf i=\mathbf j$$
\begin{center}
\begin{tikzpicture}[>=Latex]
\node[text=uHi, font=\small] at (90:0.85) {$\mathbf i$};
\node[text=uHi, font=\small] at (210:0.85) {$\mathbf j$};
\node[text=uHi, font=\small] at (330:0.85) {$\mathbf k$};
\draw[keyHi,->] (115:0.62) arc (115:185:0.62);
\draw[keyHi,->] (235:0.62) arc (235:305:0.62);
\draw[keyHi,->] (355:0.62) arc (355:65:0.62);
\end{tikzpicture}
\end{center}
Going \keyres{with the arrows}: $+$ the next letter. Going \warn{against}: negate it, for example, $\mathbf j\times\mathbf i=-\mathbf k$.

\filbreak \subsubsection{Areas (parallelogram \& triangle)}
Vectors $\vec u,\vec v$ as adjacent sides:
$$A_{\text{parallelogram}}=\|\vec u\times\vec v\| \qquad A_{\text{triangle}}=\tfrac12\|\vec u\times\vec v\|$$
\keyres{Given points instead of vectors}, build two edge vectors from a \keyres{common corner} first: $\vec u=Q-P$, $\vec v=R-P$. \; A fourth point adds nothing for a parallelogram — three corners already determine it, so the fourth is a \keyres{consistency check}, not extra data.
\filbreak \subsubsection{Worked: triangle $P(1,0,0)$, $Q(0,1,0)$, $R(0,0,1)$}
\stepbox{1. TWO SIDE VECTORS FROM ONE VERTEX}{tip $-$ tail, both from $P$: \; $\vec{PQ}=\langle-1,1,0\rangle$, \; $\vec{PR}=\langle-1,0,1\rangle$}
\stepdown
\stepbox{2. CROSS THEM}{$\vec{PQ}\times\vec{PR}=\mathbf i(1-0)-\mathbf j(-1-0)+\mathbf k(0+1)=\langle1,1,1\rangle$}
\stepdown
\stepbox{3. MAGNITUDE}{$\|\langle1,1,1\rangle\|=\sqrt3$ — this is the \keyres{parallelogram's} area}
\stepdown
\stepbox{4. HALVE FOR THE TRIANGLE}{$A=\keyres{\tfrac{\sqrt3}{2}}$}
\par\vspace{2pt}
\emph{Keep these three points in mind — they thread through the whole plane section below.}

\filbreak \subsubsection{Triple scalar product (volume)}
$$\vec u\cdot(\vec v\times\vec w)=\begin{vmatrix}u_1&u_2&u_3\\v_1&v_2&v_3\\w_1&w_2&w_3\end{vmatrix}$$
Same expansion process, just with $u_1,u_2,u_3$ on top instead of $\mathbf i,\mathbf j,\mathbf k$. $|\vec u\cdot(\vec v\times\vec w)|$ = volume of the \term{parallelepiped} with edges $\vec u,\vec v,\vec w$; it equals \keyres{$0\iff$ the three vectors are coplanar} (flat box).

\filbreak \subsubsection{Worked: volume of the parallelepiped on $\langle1,0,1\rangle$, $\langle1,1,0\rangle$, $\langle0,1,1\rangle$}
\stepbox{1. STACK THE DETERMINANT}{$\begin{vmatrix}1&0&1\\1&1&0\\0&1&1\end{vmatrix}$}
\stepdown
\stepbox{2. EXPAND ALONG THE TOP}{$1(1\cdot1-0\cdot1)-0+1(1\cdot1-1\cdot0)=1+1=2$}
\stepdown
\stepbox{3. VOLUME $=$ ABSOLUTE VALUE}{$V=|2|=\keyres{2}$ \; \emph{\scriptsize(a negative determinant just means the trio is left-handed)}}
\par\vspace{2pt}
\term{Coplanarity test}: rows $\langle1,2,3\rangle,\langle4,5,6\rangle,\langle7,8,9\rangle$ give $\det=0$ $\Rightarrow$ \keyres{coplanar} — the "box" is flat, and that's the whole test.

\filbreak \subsubsection{Torque}
Force $\vec F$ applied at the end of lever arm $\vec r$:
$$\vec\tau=\vec r\times\vec F \qquad \|\vec\tau\|=\|\vec r\|\,\|\vec F\|\sin\theta$$
Torque points along the axis of rotation (right-hand rule); pushing $\perp$ to the wrench ($\sin\theta=1$) is most effective.

\term{Worked}: a $0.3$ m wrench, $200$ N applied at $60^\circ$ to the handle: $\|\vec\tau\|=0.3\cdot200\cdot\sin60^\circ=60\cdot\tfrac{\sqrt3}{2}=\keyres{30\sqrt3\approx52\ \mathrm{N\cdot m}}$ — the Work example's cross-product twin ($\sin$ where Work used $\cos$).

\filbreak \subsection{lines \& planes in space}
Everything here needs exactly two ingredients: \keyres{a point} plus \keyres{a direction}. Lines use a \term{direction vector} $\vec v$ pointing \emph{along} the line. Planes use a \term{normal vector} $\vec n$ pointing \emph{perpendicular} to the plane.

\filbreak \subsubsection{Given this, want that — the lookup}
{\small
\begin{tabular}{@{}p{0.40\linewidth}@{}p{0.60\linewidth}@{}}
\textcolor{termHi}{\textbf{you are given}} & \textcolor{termHi}{\textbf{the move}} \\[1pt]
line through two points & direction $\vec v=P_2-P_1$ \\
line $\perp$ to a plane & direction $\vec v=\vec n$ \\
plane from a point $+$ normal & $\vec n\cdot\langle x-x_0,y-y_0,z-z_0\rangle=0$ \\
plane through three points & $\vec n=(P_2-P_1)\times(P_3-P_1)$ \\
plane from a point $+$ two vectors & $\vec n=\vec v_1\times\vec v_2$ \\
plane $\perp$ to a line & $\vec n=\vec v$ \\
distance, point to line & $\dfrac{|\vec{PM}\times\vec v|}{|\vec v|}$ \\[4pt]
distance, point to plane & $\dfrac{|ax_0+by_0+cz_0-d|}{|\vec n|}$ \\[4pt]
distance between skew lines & $\dfrac{|(P_2-P_1)\cdot(\vec v_1\times\vec v_2)|}{|\vec v_1\times\vec v_2|}$ \\[4pt]
angle between two planes & the angle between $\vec n_1$ and $\vec n_2$ \\
line where two planes meet & direction $=\vec n_1\times\vec n_2$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE WHOLE SECTION IN TWO OBJECTS}{
A \term{line} needs a \keyres{point and a direction}. \; A \term{plane} needs a \keyres{point and a normal}.\\
Every problem above is one question: \keyres{which of those two am I missing, and what produces it?}\\
The answer is almost always a \term{difference} of points, or a \term{cross product}.}
\par\vspace{2pt}
Two \keyres{nonparallel} vectors span the plane's directions, so $\vec v_1\times\vec v_2$ is perpendicular to both and therefore normal to the plane. \keyres{This is the three-point case with one step removed} — given points, you build the two vectors first.
\par\vspace{2pt}
\filbreak \subsubsection{Lines — three equivalent forms}
Through point $P_0(x_0,y_0,z_0)$ with direction $\vec v=\langle a,b,c\rangle$:
\begin{itemize}
\item \term{Vector}: $\vec r=\vec r_0+t\vec v$ \; ($\vec r_0=\langle x_0,y_0,z_0\rangle$; $t$ slides the point along the line)
\item \term{Parametric}: $x=x_0+ta$, \; $y=y_0+tb$, \; $z=z_0+tc$
\item \term{Symmetric} (solve each for $t$): $\dfrac{x-x_0}{a}=\dfrac{y-y_0}{b}=\dfrac{z-z_0}{c}$
\end{itemize}
\warn{If a direction component is 0}, that coordinate is frozen — write it separately, for example, $b=0$: $\frac{x-x_0}{a}=\frac{z-z_0}{c},\; y=y_0$.

Through \term{two points} $P,Q$: direction $\vec v=\vec{PQ}$ (tip $-$ tail), then use either point as $P_0$. The \term{segment} $PQ$ only: $\vec r(t)=(1-t)\vec p+t\vec q$, $0\leq t\leq1$.

\filbreak \subsubsection{Worked: line through $(1,3,2)$ and $(4,2,6)$}
\stepbox{1. DIRECTION $=$ TIP $-$ TAIL}{$\vec v=\langle4-1,\ 2-3,\ 6-2\rangle=\langle3,-1,4\rangle$}
\stepdown
\stepbox{2. PARAMETRIC — EITHER POINT AS $P_0$}{$x=1+3t, \quad y=3-t, \quad z=2+4t$}
\stepdown
\stepbox{3. SYMMETRIC — SOLVE EACH FOR $t$}{$\keyres{\dfrac{x-1}{3}=\dfrac{y-3}{-1}=\dfrac{z-2}{4}}$}

\filbreak \subsubsection{Worked (reverse): read a symmetric form}
$\dfrac{x-5}{2}=\dfrac{y+1}{3},\ z=4$: \; point $\keyres{(5,-1,4)}$ (flip the signs), direction $\keyres{\langle2,3,0\rangle}$ (the $z$-slot is the \warn{frozen} coordinate — direction component $0$, not "missing"). Parametric: $x=5+2t$, $y=-1+3t$, $z=4$.

\filbreak \subsubsection{Parallel, intersecting, or skew?}
\term{Skew} = not parallel \emph{and} never meet (only possible in 3D). Process:
\begin{enumerate}
\item Directions scalar multiples of each other? $\Rightarrow$ \keyres{parallel}.
\item Otherwise set the parametric forms equal — \warn{use different parameters} ($t$ and $s$): three equations. Solve two of them for $t,s$, then \term{check the third}.
\item Third equation holds $\Rightarrow$ \keyres{intersecting} (plug $t$ back in for the point). Fails $\Rightarrow$ \keyres{skew}.
\end{enumerate}

\filbreak \subsubsection{Worked: classify $L_1:(1,2,0)+t\langle1,1,1\rangle$ vs $L_2:(2,0,3)+s\langle1,-1,0\rangle$}
\stepbox{1. PARALLEL CHECK}{$\langle1,1,1\rangle$ vs $\langle1,-1,0\rangle$ — not scalar multiples: \keyres{not parallel}, keep going}
\stepdown
\stepbox{2. SET EQUAL — DIFFERENT PARAMETERS}{$1+t=2+s, \qquad 2+t=-s, \qquad t=3$}
\stepdown
\stepbox{3. SOLVE TWO\ldots}{the $z$ equation hands over $t=3$; then $x$: $4=2+s\Rightarrow s=2$}
\stepdown
\stepbox{4. \ldots CHECK THE THIRD}{$y$: $2+3=5$ vs $-s=-2$ — $5\neq-2$ \warn{fails} $\Rightarrow$ \keyres{skew} \; \emph{\scriptsize(had it held, plug $t=3$ into $L_1$ for the crossing point)}}

\filbreak \subsubsection{Distance from a point to a line}
Point $M$, line through $P$ with direction $\vec v$:
$$d=\frac{\|\vec{PM}\times\vec v\|}{\|\vec v\|}$$
(parallelogram area $\div$ base).

\filbreak \subsubsection{Worked: $M(1,1,3)$, line through the origin with $\vec v=\langle1,1,0\rangle$}
\stepbox{1. BUILD $\vec{PM}$}{$P=$ origin: $\vec{PM}=\langle1,1,3\rangle$}
\stepdown
\stepbox{2. CROSS — RUN THE DETERMINANT}{$\vec{PM}\times\vec v=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\1&1&3\\1&1&0\end{vmatrix}=\mathbf i(1\cdot0-3\cdot1)-\mathbf j(1\cdot0-3\cdot1)+\mathbf k(1\cdot1-1\cdot1)=\langle-3,3,0\rangle$}
\stepdown
\stepbox{3. TWO MAGNITUDES}{$\|\langle-3,3,0\rangle\|=\sqrt{9+9+0}=\sqrt{18}=3\sqrt2, \qquad \|\vec v\|=\sqrt{1+1+0}=\sqrt2$}
\stepdown
\stepbox{4. DIVIDE}{$d=\dfrac{3\sqrt2}{\sqrt2}=\keyres{3}$ \; \emph{\scriptsize(the $\sqrt2$'s cancel — watch for it)}}

\filbreak \subsubsection{Distance between skew lines}
The two lines span parallel planes. The gap is the \keyres{triple product} of the connector against both directions:
$$d=\frac{\big|\vec{PQ}\cdot(\vec v_1\times\vec v_2)\big|}{\|\vec v_1\times\vec v_2\|}$$
\term{Worked} (the skew pair above): $\vec{PQ}=\langle2-1,\,0-2,\,3-0\rangle=\langle1,-2,3\rangle$. Cross the directions:
$$\vec v_1\times\vec v_2=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\1&1&1\\1&-1&0\end{vmatrix}=\mathbf i(0+1)-\mathbf j(0-1)+\mathbf k(-1-1)=\langle1,1,-2\rangle$$
with $\|\langle1,1,-2\rangle\|=\sqrt{1+1+4}=\sqrt6$. Then $\vec{PQ}\cdot(\vec v_1\times\vec v_2)=1-2-6=-7$: \; $d=\dfrac{|-7|}{\sqrt6}=\keyres{\dfrac{7\sqrt6}{6}}\approx2.86$.

\filbreak \subsubsection{Planes — point + normal}
Through $P_0(x_0,y_0,z_0)$ with normal $\vec n=\langle a,b,c\rangle$:
\begin{itemize}
\item \term{Vector form}: $\vec n\cdot\vec{P_0P}=0$ — a point $P$ is on the plane iff its offset from $P_0$ is $\perp\vec n$.
\item \term{Scalar form}: $a(x-x_0)+b(y-y_0)+c(z-z_0)=0$.
\item \term{General form}: $ax+by+cz+d=0$ — \keyres{the normal reads straight off the coefficients}: $\vec n=\langle a,b,c\rangle$.
\end{itemize}

\filbreak \subsubsection{Plane $\perp$ to a line (normal = direction)}
A plane perpendicular to a line uses the line's \keyres{direction vector as its normal} — pull it straight off the $t$-coefficients. (The dual trick also works: a line $\perp$ to a plane uses $\vec n$ as its \emph{direction}.)

\term{Worked}: plane through $(3,-2,1)$, perpendicular to the line $x=1+4t$, $y=2-t$, $z=5+3t$.
\par\vspace{2pt}
\stepbox{1. PULL THE NORMAL OFF THE LINE}{$\vec n=\keyres{\langle4,-1,3\rangle}$ \; \emph{\scriptsize(the $t$-coefficients. The line's own point $(1,2,5)$ is \warn{not used})}}
\stepdown
\stepbox{2. GRAB THE GIVEN POINT}{$(x_0,y_0,z_0)=(3,-2,1)$}
\stepdown
\stepbox{3. SCALAR FORM $a(x-x_0)+b(y-y_0)+c(z-z_0)=0$}{$4(x-3)-1(y+2)+3(z-1)=0$ \; \emph{\scriptsize(\warn{sign flip}: $y-(-2)=y+2$)}}
\stepdown
\stepbox{4. DISTRIBUTE}{$4x-12-y-2+3z-3=0$}
\stepdown
\stepbox{5. CLEAN UP}{$\keyres{4x-y+3z=17}$}
\par\vspace{2pt}
Check: plug the point back in: $4(3)-(-2)+3(1)=12+2+3=17$. \checkmark

\filbreak \subsubsection{Worked: the dual — line $\perp$ to a plane}
Line through $(2,1,5)$ perpendicular to the plane $3x-y+2z=8$:
\par\vspace{2pt}
\stepbox{1. DIRECTION $=$ THE PLANE'S NORMAL}{$\vec v=\vec n=\keyres{\langle3,-1,2\rangle}$ — read off the coefficients \; \emph{\scriptsize(the plane's $8$ plays no role)}}
\stepdown
\stepbox{2. GRAB THE GIVEN POINT}{$P_0=(2,1,5)$}
\stepdown
\stepbox{3. WRITE THE LINE}{$x=2+3t, \quad y=1-t, \quad z=5+2t$ \; \emph{\scriptsize(mirror of the previous worked: there direction$\to$normal, here normal$\to$direction)}}

\filbreak \subsubsection{Plane through three points (cross product!)}
\stepbox{1. TWO IN-PLANE VECTORS}{$P(1,0,0)$, $Q(0,1,0)$, $R(0,0,1)$: \; $\vec{PQ}=\langle-1,1,0\rangle$, \; $\vec{PR}=\langle-1,0,1\rangle$ \; \emph{\scriptsize(tip $-$ tail, both from $P$)}}
\stepdown
\stepbox{2. NORMAL $=$ CROSS}{$\vec n=\vec{PQ}\times\vec{PR}=\langle1,1,1\rangle$ \; \emph{\scriptsize(the triangle-area worked ran this same cross)}}
\stepdown
\stepbox{3. SCALAR FORM WITH ANY ONE POINT}{$1(x-1)+1(y-0)+1(z-0)=0 \;\Rightarrow\; \keyres{x+y+z=1}$}
\stepdown
\stepbox{4. CHECK ALL THREE}{$P$: $1=1$; $Q$: $1=1$; $R$: $1=1$ \checkmark}

\filbreak \subsubsection{Distance from a point to a plane}
Point $(x_1,y_1,z_1)$, plane $ax+by+cz+d=0$ (\warn{move everything to one side first}):
$$D=\frac{|ax_1+by_1+cz_1+d|}{\sqrt{a^2+b^2+c^2}}$$

\filbreak \subsubsection{Worked: point $(2,3,4)$ to the plane $x+y+z=1$}
\stepbox{1. EVERYTHING TO ONE SIDE}{$x+y+z-1=0$: \; $a,b,c,d=1,1,1,-1$}
\stepdown
\stepbox{2. NUMERATOR \& DENOMINATOR}{$|2+3+4-1|=8, \qquad \|\vec n\|=\sqrt3$}
\stepdown
\stepbox{3. DIVIDE \& RATIONALIZE}{$D=\dfrac{8}{\sqrt3}=\keyres{\dfrac{8\sqrt3}{3}}\approx4.62$}
\par\vspace{2pt}
\term{Distance between parallel planes} — pick any point on one, run the formula against the other: $x+y+z=1$ vs $x+y+z=7$: point $(1,0,0)$ from the first: $D=\frac{|1-7|}{\sqrt3}=\keyres{2\sqrt3}$.

\filbreak \subsubsection{Point where a line meets a plane}
Substitute the line's \term{parametric} $x,y,z$ into the plane equation — three variables collapse into \keyres{one equation in $t$}. Solve for $t$, feed it back into the line.

\warn{If the $t$'s cancel out}: a contradiction ($0=5$) means the line is \keyres{parallel to the plane} (never meets it); an identity ($0=0$) means the line \keyres{lies inside the plane} (every $t$ works). Quick pre-check: $\vec v\cdot\vec n=0 \iff$ no single crossing point.

\term{Worked}: line $x=2+t$, $y=1-t$, $z=2t$ and the plane $x+y+z=1$ (the triangle plane again).
\par\vspace{2pt}
\stepbox{1. SUB THE LINE INTO THE PLANE}{$(2+t)+(1-t)+(2t)=1$ \; \emph{\scriptsize(every $x,y,z$ replaced — only $t$ survives)}}
\stepdown
\stepbox{2. SOLVE FOR t}{$3+2t=1 \Rightarrow t=\keyres{-1}$}
\stepdown
\stepbox{3. PLUG t BACK INTO THE LINE}{$x=2-1=1$, \quad $y=1-(-1)=2$, \quad $z=2(-1)=-2$ \; $\Rightarrow$ \keyres{$(1,2,-2)$}}
\par\vspace{2pt}
Check: put the point into the plane: $1+2-2=1$. \checkmark

\filbreak \subsubsection{Two planes: parallel, angle, intersection line}
\begin{itemize}
\item \term{Parallel} $\iff$ normals are scalar multiples.
\item \term{Angle between planes} = angle between normals: $\cos\theta=\dfrac{|\vec n_1\cdot\vec n_2|}{\|\vec n_1\|\,\|\vec n_2\|}$ (abs value $\Rightarrow$ the acute angle).
\item \term{Line of intersection}: direction $=\keyres{\vec n_1\times\vec n_2}$ (must lie in both planes, so $\perp$ both normals). For a point on it: set one variable to $0$ and solve the two plane equations.
\end{itemize}
\term{Worked (quick)}: $x+y+z=1$ and the $xy$-plane $z=0$: angle $\cos\theta=\frac{1}{\sqrt3}\Rightarrow\theta\approx\keyres{54.7^\circ}$; direction $\langle1,1,1\rangle\times\langle0,0,1\rangle=\langle1,-1,0\rangle$; point from $z=0,\ x+y=1$: $(1,0,0)$ — the line is exactly edge $PQ$ of the triangle above. \checkmark

\filbreak \subsubsection{Worked (two slanted planes): $x+y+z=3$ and $x-y+2z=1$}
\stepbox{1. THE TWO NORMALS}{$\vec n_1=\langle1,1,1\rangle, \qquad \vec n_2=\langle1,-1,2\rangle$ — not multiples: they do intersect}
\stepdown
\stepbox{2. ANGLE}{$\|\vec n_1\|=\sqrt{1+1+1}=\sqrt3$, \; $\|\vec n_2\|=\sqrt{1+1+4}=\sqrt6$, \; $\sqrt3\sqrt6=\sqrt{18}=3\sqrt2$: \quad $\cos\theta=\dfrac{|1-1+2|}{3\sqrt2}\approx0.471 \Rightarrow \theta\approx\keyres{61.9^\circ}$}
\stepdown
\stepbox{3. DIRECTION OF THE INTERSECTION}{$\vec n_1\times\vec n_2=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\1&1&1\\1&-1&2\end{vmatrix}=\mathbf i(2+1)-\mathbf j(2-1)+\mathbf k(-1-1)=\langle3,-1,-2\rangle$}
\stepdown
\stepbox{4. A POINT — SET $z=0$, SOLVE THE $2\times2$}{$x+y=3$, \; $x-y=1$ $\Rightarrow$ $x=2,\ y=1$: point $(2,1,0)$}
\stepdown
\stepbox{5. ASSEMBLE}{$\keyres{\vec r=\langle2,1,0\rangle+t\langle3,-1,-2\rangle}$ \; \emph{\scriptsize(check: plug into both plane equations — $t$ cancels in each)}}

\filbreak \subsection{quadric surfaces}
The 3D analog of a conic section: the graph of a second-degree equation in three variables,
$$Ax^2+By^2+Cz^2+Gx+Hy+Iz+J=0$$
(no cross terms like $xy$ in this course). Just as every 2D conic is an ellipse, parabola, or hyperbola, every quadric is one of \keyres{six standard surfaces} (plus cylinders and degenerate cases). The whole topic is: \term{recognize which one}, then describe it with intercepts and traces.

\filbreak \subsubsection{Conic carry-over (the 2D shapes inside every trace)}
Every cross-section of a quadric is a conic — recognize these on sight:
\begin{itemize}
\item $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=1$: \term{ellipse} (both squared, both $+$). Circle if $a=b$.
\item $\dfrac{x^2}{a^2}-\dfrac{y^2}{b^2}=1$: \term{hyperbola} (both squared, one $-$).
\item $y=ax^2$: \term{parabola} (only one variable squared).
\end{itemize}
Sign/degree pattern in 2D $\Rightarrow$ name in 3D — the same three tests, one dimension up.

\filbreak \subsubsection{Cylinders — the missing-variable rule}
If one variable is \warn{absent} from the equation, the surface is a \term{cylinder}: draw the 2D curve in its plane, then slide it parallel to the missing variable's axis.
\begin{itemize}
\item $x^2+y^2=4$ in 3D: circular cylinder along the $z$-axis (no $z\Rightarrow$ every height $z$ gives the same circle).
\item $z=y^2$: parabolic cylinder — a parabola sheet sliding along the $x$-axis.
\end{itemize}
\warn{Pitfall}: in 3D, $x^2+y^2=4$ is \emph{not} a circle — context decides. A missing variable means \keyres{unrestricted}, never zero — the same rule as the plane $z=3$ in the coordinate-planes note above.

\filbreak \subsubsection{Intercepts}
Where the surface crosses a coordinate \emph{axis}. On the $x$-axis, $y$ and $z$ are already $0$ — so: \keyres{set the other two variables $=0$, solve for the third}. Answers are \term{points} $(x,0,0)$, $(0,y,0)$, $(0,0,z)$. Three independent mini-problems — \warn{never carry one axis's answer into the next}.

\filbreak \subsubsection{Worked: intercepts of $\frac{x^2}{25}-\frac{y^2}{81}-z=64$}
\par\vspace{2pt}
\stepbox{1. X-INTERCEPTS (set $y=0$, $z=0$)}{$\frac{x^2}{25}=64\Rightarrow x^2=1600\Rightarrow x=\pm40$ \;$\Rightarrow$\; $(\pm40,\,0,\,0)$}
\stepdown
\stepbox{2. Y-INTERCEPTS (set $x=0$, $z=0$)}{$-\frac{y^2}{81}=64\Rightarrow y^2=-5184$: no real solution $\Rightarrow$ \keyres{no $y$-intercepts} \; \emph{\scriptsize(a complete answer — and a clue about the shape)}}
\stepdown
\stepbox{3. Z-INTERCEPTS (set $x=0$, $y=0$)}{$-z=64\Rightarrow z=-64$ \;$\Rightarrow$\; $(0,\,0,\,-64)$}
\stepdown
\stepbox{4. ANSWER (points, with signs)}{$(40,0,0)$, \; $(-40,0,0)$, \; $(0,0,-64)$ \checkmark}
\par\vspace{2pt}
\warn{Pitfalls}: $\sqrt{x^2}=\pm$ — squared variables give intercept \keyres{pairs}: $x^2=1600\Rightarrow x=\pm40$, not $400$ (that's $1600/4$) and not $40^2$ ($160{,}000$). And "no real solution" is a legitimate final answer — \warn{don't force a point to exist}.

\filbreak \subsubsection{Traces — cross sections}
Slice the surface with a plane parallel to a coordinate plane. The cut edge is a 2D curve called a \term{trace}. Process: \keyres{set one variable equal to a constant $k$}, then recognize the leftover 2D conic.
\begin{itemize}
\item $z=k$: horizontal slices (curves in the $xy$-plane at each height); \; $x=k$ and $y=k$: vertical slices.
\item $k=0$ gives the traces \emph{in} the coordinate planes — usually computed first.
\end{itemize}
Traces are how you sketch and how you verify a surface's identity: each of the six quadrics has a signature trace pattern (listed with each surface below).

\filbreak \subsubsection{Worked: traces of $z=\frac{x^2}{25}-\frac{y^2}{81}-64$}
The intercept example, solved for $z$.
\par\vspace{2pt}
\stepbox{1. TRACE $z=k$ (horizontal)}{$\frac{x^2}{25}-\frac{y^2}{81}=k+64$: both squared, opposite signs $\Rightarrow$ \keyres{hyperbolas} (opening along $x$ when $k>-64$, along $y$ when $k<-64$)}
\stepdown
\stepbox{2. TRACE $x=k$}{$z=-\frac{y^2}{81}+\big(\frac{k^2}{25}-64\big)$: one variable squared $\Rightarrow$ \keyres{parabola}, opening \emph{down} in $y$}
\stepdown
\stepbox{3. TRACE $y=k$}{$z=\frac{x^2}{25}-\big(\frac{k^2}{81}+64\big)$: \keyres{parabola}, opening \emph{up} in $x$}
\stepdown
\stepbox{4. READ THE PATTERN}{hyperbolas $+$ up-parabolas $+$ down-parabolas $\Rightarrow$ \keyres{hyperbolic paraboloid} (saddle) \checkmark \; \emph{\scriptsize(up along $x$, down along $y$ — hence the missing $y$-intercepts)}}

\filbreak \subsubsection{The six standard quadrics}
All shown centered at the origin; $a,b,c$ stretch the axes. Swapping which variable is "special" rotates the surface onto a different axis — \keyres{the patterns are what to memorize, not the letters}.

\term{Group 1 — all three variables squared:}
\begin{itemize}
\item \term{Ellipsoid}: $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1$ — all $+$, $=1$. Football / sphere shape (sphere when $a=b=c$). All traces are ellipses. Intercepts $(\pm a,0,0)$, $(0,\pm b,0)$, $(0,0,\pm c)$.
\item \term{Hyperboloid of one sheet}: $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}-\dfrac{z^2}{c^2}=1$ — two $+$, one $-$. Cooling-tower shape, one connected piece. Axis runs along the \keyres{minus} variable. Traces: ellipses $\perp$ axis, hyperbolas along it.
\item \term{Hyperboloid of two sheets}: $-\dfrac{x^2}{a^2}-\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1$ — one $+$, two $-$. Two separate bowls opening away from each other along the \keyres{plus} variable. The gap shows up as "no real solution" when slicing between the sheets.
\item \term{Elliptic cone}: $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}-\dfrac{z^2}{c^2}=\keyres{0}$ — same signs as one sheet but $=0$. Double ice-cream cone meeting at the origin. Axis along the minus variable. Traces $\perp$ axis: ellipses. Through the axis: pairs of crossing lines.
\end{itemize}
\term{Group 2 — one variable first-power (paraboloids):}
\begin{itemize}
\item \term{Elliptic paraboloid}: $z=\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}$ — squares \emph{same} sign. Bowl / satellite dish opening along the linear variable (up if $+$, down if $-$). Traces: ellipses $\perp$ axis, parabolas along it.
\item \term{Hyperbolic paraboloid}: $z=\dfrac{x^2}{a^2}-\dfrac{y^2}{b^2}$ — squares \emph{opposite} signs. Saddle / Pringle. Traces: hyperbolas $\perp$ axis, parabolas along it — one family up, one down.
\end{itemize}

\filbreak \subsubsection{Gallery}
\begin{center}
\begin{tabular}{@{}ccc@{}}
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=-90:90, samples=17, samples y=9, z buffer=sort] ({cos(x)*cos(y)}, {sin(x)*cos(y)}, {1.25*sin(y)});
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=-1.2:1.2, samples=17, samples y=9, z buffer=sort] ({cosh(y)*cos(x)}, {cosh(y)*sin(x)}, {y});
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=0:1.1, samples=17, samples y=6, z buffer=sort] ({sinh(y)*cos(x)}, {sinh(y)*sin(x)}, {cosh(y)});
\addplot3[mesh, domain=0:360, y domain=0:1.1, samples=17, samples y=6, z buffer=sort] ({sinh(y)*cos(x)}, {sinh(y)*sin(x)}, {-cosh(y)});
\end{axis}
\end{tikzpicture} \\
{\scriptsize ellipsoid} & {\scriptsize hyperboloid, 1 sheet} & {\scriptsize hyperboloid, 2 sheets} \\[3pt]
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=-1:1, samples=17, samples y=9, z buffer=sort] ({y*cos(x)}, {y*sin(x)}, {y});
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=0:1.2, samples=17, samples y=8, z buffer=sort] ({y*cos(x)}, {y*sin(x)}, {y^2});
\end{axis}
\end{tikzpicture} &
\begin{tikzpicture}
\begin{axis}[width=3.0cm, height=3.0cm, hide axis, view={35}{18}, clip=false, colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=-1:1, y domain=-1:1, samples=9, samples y=9, z buffer=sort] {0.7*(x^2-y^2)};
\end{axis}
\end{tikzpicture} \\
{\scriptsize elliptic cone} & {\scriptsize elliptic paraboloid} & {\scriptsize hyperbolic paraboloid} \\
\end{tabular}
\end{center}

\filbreak \subsubsection{Identification — the decision routine}
Run these checks in order on \emph{any} second-degree equation:
\begin{enumerate}
\item \term{Variable missing?} $\Rightarrow$ \keyres{cylinder} (slide the 2D curve). Stop.
\item \term{Tidy it first}: everything squared on one side, divide so the constant is $1$ (or recognize $=0$). \warn{If the RHS is $-1$, multiply through by $-1$ before counting signs.}
\item \term{All three squared?} Count the minus signs: $0\Rightarrow$ \keyres{ellipsoid}, \; $1\Rightarrow$ \keyres{1 sheet}, \; $2\Rightarrow$ \keyres{2 sheets}. \term{Mnemonic}: \# of sheets $=$ \# of minus signs. If the equation is $=0$ instead of $=1$: \keyres{cone}.
\item \term{One variable linear (first power)?} $\Rightarrow$ \keyres{paraboloid}. Squares \emph{same} sign $\Rightarrow$ elliptic (bowl); \emph{opposite} $\Rightarrow$ hyperbolic (saddle).
\item \term{Find the axis}: for hyperboloids and cones, the axis is the \keyres{"odd sign out"} variable. For paraboloids, the axis is the \keyres{linear} variable.
\end{enumerate}

\filbreak \subsubsection{Worked: identify $4x^2+y^2+z^2=16$}
\par\vspace{2pt}
\stepbox{1. ALL SQUARED, RHS NOT 1 — DIVIDE BY 16}{$\frac{x^2}{4}+\frac{y^2}{16}+\frac{z^2}{16}=1$}
\stepdown
\stepbox{2. COUNT MINUSES: 0}{\keyres{ellipsoid}, semi-axes $a=2$, $b=c=4$ (long directions $y,z$) \checkmark}

\filbreak \subsubsection{Worked: identify $z^2=x^2+\frac{y^2}{9}$}
\par\vspace{2pt}
\stepbox{1. GATHER}{$x^2+\frac{y^2}{9}-z^2=0$ — all squared, $=\keyres{0}$ — not a hyperboloid}
\stepdown
\stepbox{2. NAME + AXIS}{\keyres{elliptic cone}, axis along $z$ (the odd sign out) \checkmark}

\filbreak \subsubsection{Worked: identify $x^2-\frac{y^2}{4}+\frac{z^2}{25}=1$ and slice it at $y=4$}
\par\vspace{2pt}
\stepbox{1. ALL SQUARED, $=1$, ONE MINUS}{\keyres{hyperboloid of one sheet}, axis along $y$}
\stepdown
\stepbox{2. TRACE $y=4$}{$x^2+\frac{z^2}{25}=1+\frac{16}{4}=5$: an \keyres{ellipse} — slices $\perp$ the axis are ellipses that grow as $|y|$ grows (the cooling-tower flare) \checkmark}

\filbreak \subsubsection{Worked: the RHS $=-1$ trap — identify $x^2-y^2+z^2=-1$}
\stepbox{1. RHS IS $-1$ — MULTIPLY THROUGH}{$-x^2+y^2-z^2=1$ \; \emph{\scriptsize(\warn{every} sign flips. Counting minuses before this step names the wrong surface)}}
\stepdown
\stepbox{2. COUNT MINUSES: 2}{\keyres{hyperboloid of two sheets}, axis along $y$ (the lone $+$) \; \emph{\scriptsize(counting the original's single minus would have said "one sheet" — wrong)}}

\filbreak \subsubsection{Worked: missing variable — identify $y=x^2$ in space}
\stepbox{1. VARIABLE MISSING}{no $z$ anywhere $\Rightarrow$ \keyres{cylinder}: the 2D parabola slides along the $z$-axis}
\stepdown
\stepbox{2. NAME IT}{\keyres{parabolic cylinder} — a sheet, not a solid. The missing variable is the \keyres{slide direction}}

\filbreak \subsubsection{Worked: shifted center — complete the square}
$x^2+y^2-z^2-2x+4y=4$:
\par\vspace{2pt}
\stepbox{1. GROUP BY VARIABLE}{$(x^2-2x)+(y^2+4y)-z^2=4$}
\stepdown
\stepbox{2. COMPLETE EACH SQUARE}{$(x-1)^2-1+(y+2)^2-4-z^2=4$ \; \emph{\scriptsize(same move as the sphere worked earlier)}}
\stepdown
\stepbox{3. TIDY \& DIVIDE}{$(x-1)^2+(y+2)^2-z^2=9$ \; $\to$ \; $\tfrac{(x-1)^2}{9}+\tfrac{(y+2)^2}{9}-\tfrac{z^2}{9}=1$}
\stepdown
\stepbox{4. NAME + AXIS + CENTER}{one minus $\Rightarrow$ \keyres{hyperboloid of one sheet}, axis parallel to $z$, centered $\keyres{(1,-2,0)}$ \checkmark}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{$x^2=c\Rightarrow x=\pm\sqrt c$} — intercepts on squared variables come in pairs. Dropping the $-$ loses half the answer.
\item \warn{No real solution $=$ no intercept} — write that, don't invent a point. It's geometry: the surface misses that axis.
\item \warn{Each axis is its own problem} — zero the other two fresh each time. Never substitute one axis's intercept into the next computation.
\item \warn{$=1$ vs $=0$}: same signs, different surface — hyperboloid (1 sheet) vs cone. Check the constant before naming.
\item \warn{Divide before counting}: the minus-sign count only works with RHS $=+1$. $=16$? Divide. $=-1$? Multiply by $-1$ (flips every sign).
\item \warn{$z$ vs $z^2$}: first power $\Rightarrow$ paraboloid family. Squared $\Rightarrow$ ellipsoid/hyperboloid/cone family. The single most common misread.
\end{itemize}

\filbreak \subsection{vector-valued functions (space curves)}
A function that takes a \keyres{scalar} $t$ in and hands a \keyres{vector} back:
$$\vec r(t)=\langle f(t),\,g(t),\,h(t)\rangle=f(t)\,\mathbf i+g(t)\,\mathbf j+h(t)\,\mathbf k$$
$f,g,h$ are ordinary functions — the \term{component functions}. As $t$ runs, the tip of the position vector $\vec r(t)$ traces a \term{plane curve} (2 components) or \term{space curve} (3). Think of $t$ as time and $\vec r(t)$ as a flight path.

\filbreak \subsubsection{Evaluate \& domain — componentwise}
\begin{itemize}
\item \term{Evaluate}: plug $t$ into each slot. The output is a vector.
\item \term{Domain} = the \keyres{intersection} of the component domains — every component must be defined.
\end{itemize}
\term{Worked}: $\vec r(t)=\Big\langle\sqrt{t+2},\;\ln(3-t),\;\dfrac1t\Big\rangle$
\begin{itemize}
\item $\sqrt{t+2}$: $t\geq-2$ \quad $\ln(3-t)$: $t<3$ \quad $\frac1t$: $t\neq0$
\item Intersect all three: \keyres{$[-2,0)\cup(0,3)$}
\end{itemize}

\filbreak \subsubsection{Limits \& continuity — componentwise}
$$\lim_{t\to a}\vec r(t)=\Big\langle\lim_{t\to a}f(t),\;\lim_{t\to a}g(t),\;\lim_{t\to a}h(t)\Big\rangle$$
Take each limit separately — every Calc-1 rule (and the fundamental limits) applies per slot. $\vec r$ is \term{continuous} at $a$ $\iff$ every component is continuous at $a$.

\term{Worked}: $\displaystyle\lim_{t\to0}\Big\langle\frac{\sin t}{t},\;\cos t,\;t^2+3\Big\rangle=\keyres{\langle1,\,1,\,3\rangle}$ \; \emph{(first slot is the fundamental limit)}.

\filbreak \subsubsection{Sketching: table of $t$-values + arrows}
Pick $t$-values, compute the tip points, connect them \keyres{in order of increasing $t$}, and mark arrows — the \term{orientation} of the curve. Before grinding a table, check the library below for a recognizable pattern.

\term{Worked}: $\vec r(t)=\langle t,\,t^2-1\rangle$:
\begin{center}
\begin{tabular}{c|ccccc}
$t$ & $-2$ & $-1$ & $0$ & $1$ & $2$\\\hline
point & $(-2,3)$ & $(-1,0)$ & $(0,-1)$ & $(1,0)$ & $(2,3)$\\
\end{tabular}
\end{center}
Connect left-to-right (increasing $t$), arrows rightward — a parabola traversed \keyres{left to right}; the elimination below confirms $y=x^2-1$.

\filbreak \subsubsection{Parameterization library}
\begin{itemize}
\item \term{Line} through $P_0$, direction $\vec v$: $\vec r(t)=\vec r_0+t\vec v$ — same as the last section.
\item \term{Circle}, radius $a$, counterclockwise: $\vec r(t)=\langle a\cos t,\,a\sin t\rangle$, $0\leq t\leq2\pi$.
\item \term{Ellipse} $\frac{x^2}{a^2}+\frac{y^2}{b^2}=1$: $\vec r(t)=\langle a\cos t,\,b\sin t\rangle$.
\item \term{Graph of} $y=F(x)$: $\vec r(t)=\langle t,\,F(t)\rangle$ — let $x$ itself be the parameter.
\item \term{Helix}: $\langle a\cos t,\,a\sin t,\,ct\rangle$ — a circle in $x,y$ plus a steady climb in $z$.
\end{itemize}
Why circles work: $x^2+y^2=a^2\cos^2t+a^2\sin^2t=a^2$ — the Pythagorean identity eats the $t$.

\filbreak \subsubsection{Worked: parameterize — the reverse direction}
\stepbox{1. SEGMENT $A(1,2,3)\to B(4,0,5)$}{$\vec r(t)=(1-t)\langle1,2,3\rangle+t\langle4,0,5\rangle$
$$=\langle1-t+4t,\ 2-2t+0,\ 3-3t+5t\rangle=\keyres{\langle1+3t,\ 2-2t,\ 3+2t\rangle}, \quad 0\leq t\leq1$$ \emph{\scriptsize($t=0$ at $A$, $t=1$ at $B$ — check both)}}
\stepdown
\stepbox{2. GRAPH WITH AN ORIENTATION}{$y=x^2$ from $(2,4)$ \emph{back} to $(0,0)$: $x$ must \keyres{decrease}: $\vec r(t)=\langle2-t,\ (2-t)^2\rangle$, $0\leq t\leq2$ \; \emph{\scriptsize(plain $\langle t,t^2\rangle$ runs the wrong way)}}
\stepdown
\stepbox{3. CURVE OF INTERSECTION}{cylinder $x^2+y^2=4$ meets plane $z=3-y$: circle handles two coordinates, plane hands over the third: $\keyres{\vec r(t)=\langle2\cos t,\ 2\sin t,\ 3-2\sin t\rangle}$}

\filbreak \subsubsection{Eliminating the parameter}
To identify a curve, turn $\vec r(t)$ back into an $x$-$y$ equation:
\begin{itemize}
\item $\langle t,\,t^2-1\rangle$: substitute $x=t$ into $y$: \keyres{$y=x^2-1$} (a parabola).
\item $\langle2\cos t,\,2\sin t\rangle$: \warn{don't solve for $t$} — square and add: $x^2+y^2=\keyres{4}$ (circle, radius 2).
\end{itemize}
Trig components $\Rightarrow$ reach for an \term{identity}; polynomial components $\Rightarrow$ \term{substitute}. \term{3D flavor}: for the helix $\langle2\cos t,2\sin t,t/8\rangle$ below, squaring-and-adding the first two slots gives $x^2+y^2=4$ — the curve \keyres{lives on that cylinder}, climbing it at rate $\tfrac18$.

\begin{center}
\begin{tikzpicture}
\begin{axis}[
axis lines=center, axis line style={white!45},
width=6.6cm, height=5.4cm, view={60}{28},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={helix $\vec r(t)=\langle2\cos t,\,2\sin t,\,t/8\rangle$},
]
\addplot3[keyHi, very thick, domain=0:25.13, samples=160, samples y=0] ({2*cos(deg(x))}, {2*sin(deg(x))}, {0.125*x});
\addplot3[white!30, dashed, domain=0:6.283, samples=60, samples y=0] ({2*cos(deg(x))}, {2*sin(deg(x))}, {0});
\end{axis}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Do two curves meet? — intersect against collide}
\warn{Two different questions}, and the wording decides which one is asked:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Intersect} — the curves pass through the same \keyres{point}, at possibly \keyres{different} parameter values. \warn{Use two letters}, $t$ and $s$. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{Collide} — the same point at the \keyres{same} parameter value. Set $t=s$, so one letter, and it must hold in \keyres{every} component. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Write two letters} — $\vec r_1(t)$ and $\vec r_2(s)$. \warn{Reusing $t$ silently asks the collide question.}\\
\textbf{2.} \term{Set the components equal} — that is three equations.\\
\textbf{3.} \term{Solve two} of them for $t$ and $s$.\\
\textbf{4.} \term{Check the third.} If it fails, \keyres{the curves do not intersect}.\\
\textbf{5.} \term{Report the point}, not the parameters — substitute back.}
\par\vspace{2pt}
\keyres{Step 4 is the whole problem.} Two equations in two unknowns almost always produce candidates; the third equation is what rejects the impostors.
\par\vspace{2pt}

\filbreak \subsubsection{Worked: $\vec r_1(t)=\langle t,\ t^2-1,\ t^3\rangle$ and $\vec r_2(s)=\langle s-1,\ s-2,\ s^2-3\rangle$}
\stepbox{1--2. TWO LETTERS, THREE EQUATIONS}{$$t=s-1, \qquad t^2-1=s-2, \qquad t^3=s^2-3$$}
\stepdown
\stepbox{3. SOLVE THE FIRST TWO}{from the first: $s=t+1$. \; Substitute into the second:
$$t^2-1=(t+1)-2=t-1 \;\Rightarrow\; t^2=t \;\Rightarrow\; t(t-1)=0 \;\Rightarrow\; \keyres{t=0 \text{ or } t=1}$$
two candidates: $(t,s)=(0,1)$ and $(t,s)=(1,2)$}
\stepdown
\stepbox{4. CHECK THE THIRD — ONE CANDIDATE DIES}{$(t,s)=(0,1)$: \; $t^3=0$ \; against \; $s^2-3=1-3=-2$. \quad $0\neq-2$ $\Rightarrow$ \warn{rejected}
\par\vspace{1pt}
$(t,s)=(1,2)$: \; $t^3=1$ \; against \; $s^2-3=4-3=1$. \quad \keyres{holds} \checkmark}
\stepdown
\stepbox{5. REPORT THE POINT}{$\vec r_1(1)=\langle1,\ 0,\ 1\rangle$ \; and \; $\vec r_2(2)=\langle1,\ 0,\ 1\rangle$ \checkmark
$$\text{the curves intersect at } \keyres{(1,\,0,\,1)}$$}
\par\vspace{2pt}
\term{Do they collide?} Set $t=s$ in the first equation: $t=t-1$, so $0=-1$ — \warn{impossible}. They \keyres{never} collide: the curves cross the same point of space, but the second curve arrives one unit of parameter later.
\par\vspace{2pt}
\keyres{The aha}: had you written $t$ in both, the first equation alone would have said "no solution" and you would have reported \warn{no intersection} — the wrong answer to the question that was asked.

\filbreak \subsection{calculus of vector-valued functions}
Everything here is \keyres{componentwise}: a vector-valued function is just ordinary Calc-1 functions riding in slots, and every operation — derivative, integral, limit — applies the usual Calc-1 rules to each slot separately. The vector wrapper adds \warn{no new calculus}; you do the same move three times in parallel and keep the answers in $\langle\ \rangle$ brackets.

\stepbox{THE PROCESS — WORK COMPONENTWISE}{
\textbf{1.} \term{Differentiate or integrate each component} on its own. The vector structure never interferes.\\
\textbf{2.} \term{Add the constant vector} $\vec C$ after every integration.\\
\textbf{3.} \term{Use products carefully} — the dot and cross rules follow the ordinary product rule, but \warn{the cross product does not commute}, so keep the order.}
\par\vspace{2pt}
\keyres{Everything here is Calc 1, run three times in parallel.} The only new content is the product rules and the fact that $\vec C$ is a vector.
\filbreak \subsubsection{Derivative — componentwise}
$$\vec r\,'(t)=\langle f'(t),\ g'(t),\ h'(t)\rangle$$
\term{Geometric meaning} (why the derivative matters): $\vec r\,'(t)$ is the \keyres{tangent vector} to the curve at the point $\vec r(t)$, pointing in the direction of motion (increasing $t$). Interpretations stack:
\begin{itemize}
\item $\vec r(t)$ = position $\to$ $\vec r\,'(t)$ = velocity $\to$ $\vec r\,''(t)$ = acceleration
\item \term{speed} $=\|\vec r\,'(t)\|$ — a \keyres{scalar}, the magnitude of velocity.
\end{itemize}
Every Calc-1 rule applies per slot: power, product, quotient, chain, and the common derivatives ($\sin\to\cos$, $\cos\to-\sin$, $e^t\to e^t$, $\ln t\to 1/t$) — full statements in the \term{Derivative Rules} tables back in the Calculus section. \warn{The usual slip is the chain rule} — an inside function must multiply in its derivative:
\begin{itemize}
\item $\frac{d}{dt}[\cos(5t)]=-\sin(5t)\cdot5=\keyres{-5\sin(5t)}$
\item $\frac{d}{dt}[e^{3t}]=e^{3t}\cdot3=\keyres{3e^{3t}}$
\item $\frac{d}{dt}[(t^2+1)^4]=4(t^2+1)^3\cdot 2t$
\end{itemize}
\filbreak \subsubsection{Worked: $\vec r(t)=\langle t^2,\ \sin t,\ e^{3t}\rangle$}
\stepbox{1. EASY SLOTS}{$t^2\to2t$ (power) \qquad $\sin t\to\cos t$}
\stepdown
\stepbox{2. THE CHAIN-RULE SLOT}{$e^{3t}\to3e^{3t}$ \; \emph{\scriptsize(inside $3t$ multiplies its derivative in — the slot where points die)}}
\stepdown
\stepbox{3. ASSEMBLE}{$\vec r\,'(t)=\keyres{\langle2t,\ \cos t,\ 3e^{3t}\rangle}$}
\par\vspace{2pt}
Higher derivatives: differentiate again, componentwise — $\vec r\,''=\langle f'',g'',h''\rangle$.

\filbreak \subsubsection{Unit tangent vector $\vec T(t)$}
The tangent vector rescaled to length $1$ — the direction of motion with the speed stripped off. Same normalize-by-dividing move as the unit vectors above, now applied to the derivative:
$$\vec T(t)=\frac{\vec r\,'(t)}{\|\vec r\,'(t)\|}$$
Two flavors of the question — know which you're asked:
\begin{itemize}
\item \term{General formula} (answer in terms of $t$): compute $\vec r\,'(t)$, then $\|\vec r\,'(t)\|$ as a function of $t$, divide. Simplify the radical if a Pythagorean identity collapses it (common with $\sin$/$\cos$ slots).
\item \term{At a specific $t=a$}: \keyres{substitute first, then normalize} — you normalize a concrete vector of numbers instead of a function. \warn{Normalizing first} forces you to simplify a $t$-dependent radical you never needed — more algebra, more error surface.
\end{itemize}
\term{Worked}: $\vec r(t)=\langle t^2,\,2t,\,1\rangle$, find $\vec T(1)$.
\par\vspace{2pt}
\stepbox{1. DIFFERENTIATE}{$\vec r\,'(t)=\langle 2t,\,2,\,0\rangle$}
\stepdown
\stepbox{2. SUBSTITUTE FIRST}{$\vec r\,'(1)=\langle 2,\,2,\,0\rangle$}
\stepdown
\stepbox{3. MAGNITUDE}{$\|\langle2,2,0\rangle\|=\sqrt{4+4+0}=\sqrt8=2\sqrt2$}
\stepdown
\stepbox{4. DIVIDE}{$\vec T(1)=\tfrac{1}{2\sqrt2}\langle2,2,0\rangle=\keyres{\langle\tfrac{1}{\sqrt2},\,\tfrac{1}{\sqrt2},\,0\rangle}$ \; \emph{\scriptsize(rationalized: $\langle\tfrac{\sqrt2}{2},\tfrac{\sqrt2}{2},0\rangle$ — same value)}}

\filbreak \subsubsection{Worked: the general-formula flavor — helix $\vec r=\langle2\cos t,\,2\sin t,\,t\rangle$}
\stepbox{1. DIFFERENTIATE}{$\vec r\,'(t)=\langle-2\sin t,\ 2\cos t,\ 1\rangle$}
\stepdown
\stepbox{2. MAGNITUDE AS A FUNCTION OF $t$}{$\|\vec r\,'\|=\sqrt{4\sin^2t+4\cos^2t+1}=\sqrt{4+1}=\sqrt5$ \; \emph{\scriptsize(the Pythagorean identity collapses the radical — constant speed)}}
\stepdown
\stepbox{3. DIVIDE — STILL IN $t$}{$\vec T(t)=\keyres{\tfrac{1}{\sqrt5}\langle-2\sin t,\ 2\cos t,\ 1\rangle}$ \; \emph{\scriptsize(now \emph{any} $t$ is a plug-in away)}}

\filbreak \subsubsection{Worked: tangent line to a space curve}
Line tangent to $\vec r(t)=\langle t^2,2t,1\rangle$ at $t=1$ — the direction is already computed above:
\par\vspace{2pt}
\stepbox{1. POINT — EVALUATE $\vec r$}{$\vec r(1)=\langle1^2,\ 2(1),\ 1\rangle=(1,2,1)$}
\stepdown
\stepbox{2. DIRECTION — EVALUATE $\vec r\,'$}{$\vec r\,'(1)=\langle2,2,0\rangle$}
\stepdown
\stepbox{3. LINE FORMS FROM THE LINES SECTION}{$\keyres{x=1+2s, \quad y=2+2s, \quad z=1}$ \; \emph{\scriptsize(new parameter $s$ — $t$ is spoken for. Frozen $z$ written separately)}}

\filbreak \subsubsection{Derivatives of dot \& cross products}
Both get product rules that mirror the ordinary one — derivative of the first times the second, plus the first times the derivative of the second:
$$\frac{d}{dt}\big[\vec u\cdot\vec v\big]=\vec u\,'\cdot\vec v+\vec u\cdot\vec v\,'$$
$$\frac{d}{dt}\big[\vec u\times\vec v\big]=\vec u\,'\times\vec v+\vec u\times\vec v\,'$$
The dot version outputs a \keyres{scalar}; the cross version a \keyres{vector}. \warn{Order matters in the cross version}: $\vec u\times\vec v=-(\vec v\times\vec u)$, so $\vec u$ stays the left factor in \emph{both} terms — never swap within a term.

Two valid methods — they \keyres{must agree}:
\begin{itemize}
\item \term{Method A — combine, then differentiate}: expand the dot/cross explicitly first, then take an ordinary derivative. Best for the dot product (a single scalar function).
\item \term{Method B — product rule}: apply the formula with $\vec u,\vec u\,',\vec v,\vec v\,'$. \keyres{Required} when the components aren't given — only values at a point are (for example, $\vec u(2),\vec u\,'(2),\vec v(2),\vec v\,'(2)$). Often cleaner for cross, where expanding symbolically gets messy.
\end{itemize}
\filbreak \subsubsection{Worked (dot, both ways): $\vec u=\langle t,\,t^2\rangle$, $\vec v=\langle\cos t,\,\sin t\rangle$}
\stepbox{1. METHOD A — COMBINE, THEN DIFFERENTIATE}{$\vec u\cdot\vec v=t\cos t+t^2\sin t$: product rule per term: $(\cos t-t\sin t)+(2t\sin t+t^2\cos t)$}
\stepdown
\stepbox{2. METHOD B — BUILD THE FOUR PIECES}{$\vec u\,'=\langle1,2t\rangle, \quad \vec v\,'=\langle-\sin t,\cos t\rangle$}
\stepdown
\stepbox{3. APPLY THE PRODUCT RULE}{$\vec u\,'\cdot\vec v+\vec u\cdot\vec v\,'=(\cos t+2t\sin t)+(-t\sin t+t^2\cos t)$}
\stepdown
\stepbox{4. COMPARE}{collect: both give $\cos t+t\sin t+t^2\cos t$ \checkmark — \keyres{a mismatch means an arithmetic bug}}

\filbreak \subsubsection{Worked (cross — where Method B earns its keep)}
$\vec u=\langle t,0,t^2\rangle$, $\vec v=\langle0,t,1\rangle$:
\par\vspace{2pt}
\stepbox{1. THE FOUR PIECES}{$\vec u\,'=\langle1,0,2t\rangle, \quad \vec v\,'=\langle0,1,0\rangle$}
\stepdown
\stepbox{2. TWO CROSSES — KEEP $\vec u$ ON THE LEFT}{$\vec u\,'\times\vec v=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\1&0&2t\\0&t&1\end{vmatrix}=\mathbf i(0-2t^2)-\mathbf j(1-0)+\mathbf k(t-0)=\langle-2t^2,\,-1,\,t\rangle$
$$\vec u\times\vec v\,'=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\t&0&t^2\\0&1&0\end{vmatrix}=\mathbf i(0-t^2)-\mathbf j(0-0)+\mathbf k(t-0)=\langle-t^2,\,0,\,t\rangle$$}
\stepdown
\stepbox{3. ADD}{$\langle-2t^2-t^2,\ -1+0,\ t+t\rangle=\keyres{\langle-3t^2,\,-1,\,2t\rangle}$}
\stepdown
\stepbox{4. CHECK BY METHOD A}{$\vec u\times\vec v=\begin{vmatrix}\mathbf i&\mathbf j&\mathbf k\\t&0&t^2\\0&t&1\end{vmatrix}=\mathbf i(0-t^3)-\mathbf j(t-0)+\mathbf k(t^2-0)=\langle-t^3,-t,t^2\rangle$; differentiate per slot: $\langle-3t^2,-1,2t\rangle$ \checkmark}
\par\vspace{2pt}
\term{Values-at-a-point flavor} (the exam form — components never given): given $\vec u(2)=\langle1,3\rangle$, $\vec u\,'(2)=\langle2,0\rangle$, $\vec v(2)=\langle4,-1\rangle$, $\vec v\,'(2)=\langle1,5\rangle$:
$$\tfrac{d}{dt}[\vec u\cdot\vec v]\big|_{t=2}=\vec u\,'(2)\cdot\vec v(2)+\vec u(2)\cdot\vec v\,'(2)=(8+0)+(1+15)=8+16=\keyres{24}$$
Method A is impossible here — \keyres{Method B is the only road}.

Special cases worth starring:
\begin{itemize}
\item $\frac{d}{dt}[\vec r\cdot\vec r]=2\,\vec r\cdot\vec r\,'$ — the dot-product power rule.
\item If $\|\vec r(t)\|$ is \term{constant} (motion on a sphere), then \keyres{$\vec r\cdot\vec r\,'=0$}. The "show that" in one line: $\vec r\cdot\vec r=\|\vec r\|^2=c^2$ is constant, so differentiating gives $2\,\vec r\cdot\vec r\,'=0$ — \keyres{velocity $\perp$ position}.
\end{itemize}

\filbreak \subsubsection{Integrals — componentwise}
Integrate each slot separately. Every Calc-2 tool applies per component — u-sub, the $\tfrac1k$ rule, the $\ln$-flag, the arctan/arcsin forms, parts. A single component might need any of them. The master integral table at the top of this section carries straight over.
\begin{itemize}
\item \term{Indefinite}: $\displaystyle\int\vec r(t)\,dt=\Big\langle\int f\,dt,\ \int g\,dt,\ \int h\,dt\Big\rangle+\vec C$. \warn{The constant is a vector} $\vec C=\langle C_1,C_2,C_3\rangle$, one constant per slot — \warn{not} a lone scalar tacked on the end. Load-bearing for the motion problems below.
\item \term{Definite}: FTC per slot, no $\vec C$ — each component evaluates to a number. The result is a concrete vector.
\end{itemize}
\term{Worked}:
\begin{itemize}
\item $\int\langle 2t,\ \cos t,\ e^t\rangle\,dt=\keyres{\langle t^2,\ \sin t,\ e^t\rangle+\vec C}$
\item $\int_0^1\langle 2t,\ 3t^2\rangle\,dt=\big\langle t^2\big|_0^1,\ t^3\big|_0^1\big\rangle=\keyres{\langle1,\,1\rangle}$
\item $\int\langle \sin(2t),\ e^{5t}\rangle\,dt=\keyres{\big\langle{-\tfrac12}\cos(2t),\ \tfrac15 e^{5t}\big\rangle+\vec C}$ \; \emph{(the $\tfrac1k$ rule per slot)}
\end{itemize}

\filbreak \subsubsection{Drawing/choosing the tangent vector at $t=a$}
Three facts pin the arrow $\vec r\,'(a)$:
\begin{itemize}
\item \term{Tail} sits at the point $\vec r(a)$ on the curve — compute $\vec r(a)$ to know where.
\item \term{Tangent} — along the curve, not into or away from it.
\item \term{Forward} — points in the direction of increasing $t$ (the orientation of travel).
\end{itemize}
\term{Multiple choice}: eliminate by two tests — wrong base point (arrow not touching $\vec r(a)$) $\to$ reject. Wrong direction (backward, or sticking out of the curve) $\to$ reject. The survivor is tangent, at the right point, pointing forward. \term{Sign trick}: the signs of $\vec r\,'(a)$ alone often decide — $\langle +,-\rangle$ points right-and-down. Match the picture.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Chain rule per slot}: $\cos(5t)$, $e^{3t}$ need the inside's derivative multiplied in — the most common derivative slip.
\item \warn{Substitute before normalizing}: for $\vec T(a)$ at a specific $t=a$, plug in first, then divide by the magnitude.
\item \warn{Cross-product derivative keeps $\vec u,\vec v$ order} — anticommutative. Never swap factors within a term.
\item \warn{$+\,\vec C$ is a constant vector} $\langle C_1,C_2,C_3\rangle$, not a scalar.
\item \warn{Speed vs velocity}: speed $\|\vec r\,'\|$ is a scalar. Velocity $\vec r\,'$ is a vector — don't confuse the two.
\item Method A and Method B \keyres{must agree} — a mismatch means an arithmetic error to hunt.
\end{itemize}

\filbreak \subsection{arc length}
Distance traveled along the curve. One fact generates every formula: \keyres{arc length is the integral of speed}, and speed $=\|\vec r\,'(t)\|$.

\filbreak \subsubsection{The formula}
$$L=\int_a^b\|\vec r\,'(t)\|\,dt=\int_a^b\sqrt{[x'(t)]^2+[y'(t)]^2+[z'(t)]^2}\,dt$$
\begin{itemize}
\item \term{2D}: drop the $[z']^2$ term — that's the entire difference.
\item \term{Graph $y=f(x)$} (the Calc-2 flavor): parameterize as $\langle t,\,f(t)\rangle$, so $x'=1$ supplies the "$1+$":
$$L=\int_a^b\sqrt{1+[f'(x)]^2}\,dx$$
One formula, not two.
\end{itemize}

\filbreak \subsubsection{The routine — same four moves every time}
Differentiate componentwise $\to$ square \& sum the slots $\to$ \keyres{simplify under the root} $\to$ integrate.
\begin{itemize}
\item \warn{Never integrate the raw root.} Problems are rigged so the radicand collapses to a \keyres{constant} (trig slots — Pythagorean identity) or a \keyres{perfect square} ($(A+B)^2$ — check: middle term $=2AB$). If it won't collapse, hunt the missed identity.
\item \term{"Set up only"} $\Rightarrow$ stop at the integral.
\end{itemize}

\filbreak \subsubsection{Worked (constant collapse): $\langle\cos t,\,\sin t,\,t\rangle$ on $[0,2\pi]$}
\par\vspace{2pt}
\stepbox{1. DIFFERENTIATE}{$\vec r\,'(t)=\langle-\sin t,\ \cos t,\ 1\rangle$}
\stepdown
\stepbox{2. SQUARE \& SUM}{$\sin^2t+\cos^2t+1=\keyres{2}$ \; \emph{\scriptsize(Pythagorean identity eats the $t$)}}
\stepdown
\stepbox{3. INTEGRATE}{$L=\displaystyle\int_0^{2\pi}\sqrt2\,dt=\keyres{2\sqrt2\,\pi}$}
\par\vspace{2pt}
Constant radicand $\Rightarrow$ $L=\sqrt{\text{const}}\times(b-a)$ — no antiderivative needed. Any helix $\langle a\cos t,a\sin t,ct\rangle$ collapses the same way, to $a^2+c^2$.

\filbreak \subsubsection{Worked (perfect square): $\langle t^2,\,2t,\,\ln t\rangle$ on $[1,3]$}
\par\vspace{2pt}
\stepbox{1. DIFFERENTIATE}{$\vec r\,'(t)=\langle 2t,\ 2,\ 1/t\rangle$}
\stepdown
\stepbox{2. SQUARE \& SUM}{$(2t)^2+(2)^2+(1/t)^2=4t^2+4+\dfrac{1}{t^2}$}
\stepdown
\stepbox{3. SPOT THE SQUARE}{$4t^2+4+\tfrac{1}{t^2}=\big(2t+\tfrac1t\big)^2$ \; \emph{\scriptsize(check: $2\cdot2t\cdot\tfrac1t=4$ $=$ the middle term \checkmark)}}
\stepdown
\stepbox{4. DROP THE ROOT}{$\sqrt{\big(2t+\tfrac1t\big)^2}=\big|2t+\tfrac1t\big|=2t+\tfrac1t$ \; \emph{\scriptsize(positive on $[1,3]$, so the bars drop)}}
\stepdown
\stepbox{5. INTEGRATE}{$\displaystyle\int_1^3\big(2t+\tfrac1t\big)dt=t^2+\ln t\,\Big|_1^3=(9+\ln3)-(1+0)=\keyres{8+\ln 3}$}

\filbreak \subsubsection{Worked ($y=f(x)$ flavor): $y=\tfrac23x^{3/2}$ on $[0,3]$}
\par\vspace{2pt}
\stepbox{1. DIFFERENTIATE}{$f'(x)=x^{1/2}$}
\stepdown
\stepbox{2. BUILD $1+[f']^2$}{$1+\big(x^{1/2}\big)^2=1+x$ \; \emph{\scriptsize(the curve is chosen so this comes out clean — trust it)}}
\stepdown
\stepbox{3. INTEGRATE (u-sub $u=1+x$)}{$\displaystyle\int_0^3\sqrt{1+x}\,dx=\tfrac23(1+x)^{3/2}\Big|_0^3=\tfrac23\big(4^{3/2}-1^{3/2}\big)=\tfrac23(8-1)=\keyres{\tfrac{14}{3}}$}
\par\vspace{2pt}
\term{2D sanity check}: circle $\langle3\cos t,3\sin t\rangle$ on $[0,2\pi]$: radicand $=9$, $L=\int_0^{2\pi}3\,dt=\keyres{6\pi}$ — the circumference, as it must be.

\term{"Set up only" looks like this}: $\vec r=\langle t,t^2,t^3\rangle$ on $[0,1]$: $L=\int_0^1\sqrt{1+4t^2+9t^4}\,dt$ — nothing collapses, so \keyres{the integral \emph{is} the answer}; don't force it.

\filbreak \subsubsection{Arc length function \& reparametrization}
Make the upper bound variable: \; $s(t)=\displaystyle\int_0^t\|\vec r\,'(u)\|\,du$ — "distance traveled so far." Invert it ($t$ in terms of $s$) to \term{reparametrize by arc length}: the curve traversed at \keyres{unit speed}, where the parameter \emph{is} the distance.

\filbreak \subsubsection{Worked: reparametrize the helix $\langle\cos t,\sin t,t\rangle$}
\stepbox{1. ARC LENGTH FUNCTION}{speed is the constant $\sqrt2$ (worked above): $s(t)=\displaystyle\int_0^t\sqrt2\,du=\sqrt2\,t$}
\stepdown
\stepbox{2. INVERT}{$t=s/\sqrt2$}
\stepdown
\stepbox{3. SUBSTITUTE BACK}{$\keyres{\vec r(s)=\big\langle\cos\tfrac{s}{\sqrt2},\ \sin\tfrac{s}{\sqrt2},\ \tfrac{s}{\sqrt2}\big\rangle}$ \; \emph{\scriptsize(check: $\|\vec r\,'(s)\|=1$ — unit speed, one meter of $s$ per meter of curve)}}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{The integrand is speed, a scalar} — integrate $\|\vec r\,'\|$, not the vector $\vec r\,'$.
\item \warn{$\sqrt{(\cdot)^2}=|\cdot|$} — confirm the inside is positive on the interval before dropping the bars.
\item An un-integrable root means a missed identity or perfect square — go back and simplify.
\item Read the ask: \term{"write"} stops at the integral; \term{"find the length"} evaluates fully.
\end{itemize}

\filbreak \subsection{motion in space}
The componentwise calculus above, applied to physics. The whole topic is one chain:
$$\text{position } \vec s(t)\ \xrightarrow{\ d/dt\ }\ \text{velocity } \vec v(t)\ \xrightarrow{\ d/dt\ }\ \text{accel.\ } \vec a(t)$$
reversed by integration: $\vec a\ \xrightarrow{\ \int\ }\ \vec v\ \xrightarrow{\ \int\ }\ \vec s$. All three are \keyres{vectors}; \term{speed} $=\|\vec v(t)\|$ is the lone \keyres{scalar}.

\filbreak \subsubsection{Which direction are you travelling? — two jobs}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{given position} $\vec r(t)$ $\Rightarrow$ \keyres{differentiate down}: $\vec v=\vec r\,'$, \; $\vec a=\vec r\,''$, \; speed $=|\vec v|$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{given acceleration} plus initial conditions $\Rightarrow$ \keyres{integrate up}: $\vec v=\int\vec a\,dt$, then $\vec r=\int\vec v\,dt$. Each integration adds a \keyres{constant vector}, fixed by $\vec v(0)$ and $\vec r(0)$. \\
\end{tabular}}
\par\vspace{2pt}
\warn{The constant of integration is a vector}, not a scalar. Three components, three conditions.
\par\vspace{2pt}
\keyres{Speed is a scalar, velocity is a vector.} Speed is $|\vec v|$, and a magnitude discards direction — so an object can have constant speed while its velocity changes every instant.
\filbreak \subsubsection{Worked: the differentiate direction — given $\vec s(t)=\langle t^2,\ t^3-3t\rangle$}
\stepbox{1. DIFFERENTIATE DOWN THE CHAIN}{$\vec v(t)=\langle2t,\ 3t^2-3\rangle \qquad \vec a(t)=\langle2,\ 6t\rangle$}
\stepdown
\stepbox{2. SPEED AT $t=1$}{$\vec v(1)=\langle2,0\rangle$: \; $\|\vec v(1)\|=\keyres{2}$ — moving purely horizontally at that instant}
\stepdown
\stepbox{3. EVER AT REST?}{needs \warn{both} slots zero at once: $2t=0\Rightarrow t=0$, but $3t^2-3=0\Rightarrow t=\pm1$ — no common $t$ $\Rightarrow$ \keyres{never at rest}}
\stepdown
\stepbox{4. MOVING STRAIGHT VERTICALLY?}{$x$-velocity $=0$: $t=0$ (and there $\vec v(0)=\langle0,-3\rangle$ — straight down) \checkmark}

\filbreak \subsubsection{Recover $\vec v(t)$ and $\vec s(t)$ from $\vec a(t)$}
Integrate up the chain, solving each constant \warn{vector} from an initial condition. \warn{Order matters}: finish $\vec v(t)$ (solve $\vec C_1$) \emph{before} integrating to $\vec s(t)$. Then \keyres{answer the ask} — recovery is the setup, not the answer.

\term{Worked}: a particle has $\vec a(t)=\langle6t,\ e^t\rangle$ with $\vec v(0)=\langle1,3\rangle$, $\vec s(0)=\langle0,2\rangle$. Find its \term{position} and \term{speed} at $t=1$.
\par\vspace{2pt}
\stepbox{1. INTEGRATE $\vec a\to\vec v$}{$\vec v(t)=\int\langle6t,\,e^t\rangle\,dt+\vec C_1=\langle3t^2,\ e^t\rangle+\vec C_1$}
\stepdown
\stepbox{2. SOLVE $\vec C_1$ FROM $\vec v(0)$}{$\langle0,1\rangle+\vec C_1=\langle1,3\rangle\Rightarrow\vec C_1=\langle1,2\rangle$, \; so $\vec v(t)=\keyres{\langle3t^2+1,\ e^t+2\rangle}$}
\stepdown
\stepbox{3. INTEGRATE $\vec v\to\vec s$}{$\vec s(t)=\int\langle3t^2+1,\,e^t+2\rangle\,dt+\vec C_2=\langle t^3+t,\ e^t+2t\rangle+\vec C_2$}
\stepdown
\stepbox{4. SOLVE $\vec C_2$ FROM $\vec s(0)$}{$\langle0,1\rangle+\vec C_2=\langle0,2\rangle\Rightarrow\vec C_2=\langle0,1\rangle$, \; so $\vec s(t)=\keyres{\langle t^3+t,\ e^t+2t+1\rangle}$}
\stepdown
\stepbox{5. POSITION AT $t=1$ (vector)}{$\vec s(1)=\langle1+1,\ e+2+1\rangle=\keyres{\langle2,\ e+3\rangle}\approx\langle2,\,5.72\rangle$}
\stepdown
\stepbox{6. SPEED AT $t=1$ (scalar)}{$\vec v(1)=\langle4,\ e+2\rangle$; \; $\|\vec v(1)\|=\sqrt{4^2+(e+2)^2}\approx\keyres{6.19}$}
\par\vspace{2pt}
\warn{Note step 2}: $\vec C_1\neq\vec v(0)$ here — the antiderivative $\langle3t^2,e^t\rangle$ is $\langle0,1\rangle$ at $t=0$, not $\vec 0$. \keyres{Solve the constant explicitly every time}; the shortcut $\vec C_1=\vec v(0)$ only happens to work when the antiderivative vanishes at $t=0$ (for example, constant $\vec a$).

\filbreak \subsubsection{Projectile motion (gravity)}
The recovery above with $\vec a$ fixed by physics: \keyres{$\vec a(t)=\langle0,-g\rangle$}, $g=9.8\ \mathrm{m/s^2}$ or $32\ \mathrm{ft/s^2}$. Nothing pushes sideways after launch, so \keyres{horizontal velocity never changes} — all the action is vertical. Launch from height $h_0$ at speed $v_0$, angle $\theta$, always lands on the shape:
$$\vec v(t)=\langle v_0\cos\theta,\ v_0\sin\theta-gt\rangle$$
$$\vec s(t)=\big\langle (v_0\cos\theta)\,t,\ h_0+(v_0\sin\theta)\,t-\tfrac12 gt^2\big\rangle$$
\warn{Decompose the launch speed by the angle first} — $\vec v(0)=\langle v_0\cos\theta,\,v_0\sin\theta\rangle$; using raw $v_0$ in a slot is the classic error.

\term{Match the ask to the move}:
\begin{itemize}
\item \term{Time of flight}: $y$-slot of $\vec s$ $=$ ground height (usually $0$); quadratic in $t$ — \keyres{positive root}.
\item \term{Range}: landing time into the $x$-slot of $\vec s$.
\item \term{Max height}: $y$-slot of $\vec v$ $=0$ $\to$ $t_{\mathrm{peak}}$ $\to$ into the $y$-slot of $\vec s$.
\item \term{Speed}: $\|\vec v(t)\|$ — both slots, then magnitude. \term{Velocity} is the vector itself.
\end{itemize}

\filbreak \subsubsection{Worked: ground launch — $v_0=20$ m/s, $\theta=30^\circ$, $h_0=0$}
\par\vspace{2pt}
\stepbox{1. DECOMPOSE}{$\vec v(0)=\langle20\cos30^\circ,\ 20\sin30^\circ\rangle=\langle10\sqrt3,\ 10\rangle$}
\stepdown
\stepbox{2. BUILD $\vec v$, $\vec s$}{$\vec v(t)=\langle10\sqrt3,\ 10-9.8t\rangle$, \quad $\vec s(t)=\langle10\sqrt3\,t,\ 10t-4.9t^2\rangle$}
\stepdown
\stepbox{3. FLIGHT TIME ($y$-pos $=0$)}{$10t-4.9t^2=0\Rightarrow t(10-4.9t)=0\Rightarrow t=\keyres{10/4.9\approx2.04}$ s \; \emph{\scriptsize($t=0$ = launch)}}
\stepdown
\stepbox{4. RANGE ($x$-pos at landing)}{$10\sqrt3\,(2.04)\approx\keyres{35.3}$ m}
\stepdown
\stepbox{5. MAX HEIGHT ($y$-vel $=0$)}{$10-9.8t=0\Rightarrow t\approx1.02$ s; \quad $10(1.02)-4.9(1.02)^2\approx\keyres{5.1}$ m}

\filbreak \subsubsection{Worked: launch from a height — $v_0=20$ m/s, $\theta=30^\circ$, $h_0=10$ m}
Same set-up, but $h_0\neq0$ means the landing equation \warn{no longer factors} — quadratic formula, keep the positive root.
\par\vspace{2pt}
\stepbox{1. BUILD $\vec v$, $\vec s$}{$\vec v(t)=\langle10\sqrt3,\ 10-9.8t\rangle$, \quad $\vec s(t)=\langle10\sqrt3\,t,\ 10+10t-4.9t^2\rangle$}
\stepdown
\stepbox{2. FLIGHT TIME (quadratic)}{$4.9t^2-10t-10=0\Rightarrow t=\dfrac{10\pm\sqrt{100+196}}{9.8}$;\\ positive root: $t\approx\keyres{2.78}$ s \; \emph{\scriptsize($t\approx-0.74$ discarded)}}
\stepdown
\stepbox{3. RANGE}{$10\sqrt3\,(2.78)\approx\keyres{48.1}$ m}
\stepdown
\stepbox{4. IMPACT SPEED}{$\vec v(2.78)=\langle10\sqrt3,\ 10-9.8(2.78)\rangle\approx\langle17.3,\,-17.2\rangle$\\ $\|\vec v\|=\sqrt{17.3^2+17.2^2}\approx\keyres{24.4}$ m/s}
\par\vspace{2pt}
Step 4 is the "how fast does it hit" ask: a \keyres{scalar} — plug the landing time into $\vec v$, then take the magnitude. The negative $y$-slot just says it's moving down.

\filbreak \subsubsection{Worked (inverse): what $v_0$ at $45^\circ$ lands $40$ m away?}
\stepbox{1. DERIVE THE RANGE IN SYMBOLS}{flight time from $y=0$: $v_0\sin\theta\,t-\tfrac12gt^2=0\Rightarrow t\big(v_0\sin\theta-\tfrac12gt\big)=0\Rightarrow t=\tfrac{2v_0\sin\theta}{g}$; into the $x$-slot: $R=v_0\cos\theta\cdot\tfrac{2v_0\sin\theta}{g}=\tfrac{2v_0^2\sin\theta\cos\theta}{g}=\tfrac{v_0^2\sin2\theta}{g}$ \; \emph{\scriptsize(double-angle identity)}}
\stepdown
\stepbox{2. SET EQUAL TO THE GIVEN}{$45^\circ\Rightarrow\sin2\theta=1$: \quad $\dfrac{v_0^2}{9.8}=40$}
\stepdown
\stepbox{3. SOLVE FOR THE UNKNOWN}{$v_0^2=392 \Rightarrow v_0=\keyres{14\sqrt2\approx19.8\ \mathrm{m/s}}$ \; \emph{\scriptsize(same equations, solved for a different letter)}}

\filbreak \subsubsection{Worked: will it clear the wall?}
The ground-launch shot above ($v_0=20$, $\theta=30^\circ$) meets a $4$ m wall at $x=30$ m:
\par\vspace{2pt}
\stepbox{1. TIME OF ARRIVAL AT THE WALL}{$10\sqrt3\,t=30 \Rightarrow t=\dfrac{30}{10\sqrt3}=\dfrac{3}{\sqrt3}=\sqrt3\approx1.73$ s}
\stepdown
\stepbox{2. HEIGHT AT THAT TIME}{$y=10(1.73)-4.9(3)=17.3-14.7=\keyres{2.6}$ m}
\stepdown
\stepbox{3. COMPARE}{$2.6<4$ $\Rightarrow$ \warn{hits the wall} \; \emph{\scriptsize(location $\to$ time $\to$ height — always through $t$)}}
\par\vspace{2pt}
\term{Horizontal launch, US units} ($\theta=0$, $g=32$): ball rolls off a $64$ ft cliff at $10$ ft/s: $\vec s(t)=\langle10t,\ 64-16t^2\rangle$; lands $64-16t^2=0\Rightarrow t=2$ s, \; $\keyres{20}$ ft out — with $\theta=0$ the $x$-slot is just $v_0t$.

\filbreak \subsubsection{Word problems — translation dictionary}
No new formulas, just translation. English $\to$ math:
\begin{itemize}
\item "starts at / initial position" $\to$ $\vec s(0)$; \; "launched at / initial velocity" $\to$ $\vec v(0)$ (decompose if speed $+$ angle given)
\item "under gravity / free fall" $\to$ $\vec a=\langle0,-g\rangle$
\item "how long until it hits the ground" $\to$ $y$-position $=0$, solve for $t$; \; "how far away does it land" $\to$ landing $t$ into $x$-position
\item "highest point" $\to$ $y$-velocity $=0$
\item "how fast" $\to$ speed $\|\vec v\|$ (a number); \; "which direction / velocity vector" $\to$ the vector $\vec v(t)$
\end{itemize}
\term{Approach}: pull out the givens $\to$ match the ask to a move above $\to$ integrate, solve the constants $\to$ answer as the right \keyres{type} (scalar or vector) with units.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Constants of integration are vectors} — solve $\vec C_1,\vec C_2$ per component, explicitly, every time.
\item \warn{Landing = $y$-position $0$; max height = $y$-velocity $0$} — the two most-confused conditions. Don't swap them.
\item \warn{Gravity is negative and vertical}: $\langle0,-g\rangle$ — sign and slot both matter.
\item \warn{Take the positive time root} — negative times are unphysical.
\item Speed is $\|\vec v\|$ (scalar); velocity and acceleration are vectors — answer in the type the question wants.
\end{itemize}

\filbreak \subsection{functions of several variables}
A \term{function of two variables} $z=f(x,y)$ takes a point $(x,y)$ of the plane in and hands \keyres{one number} back. The \term{domain} is now a \keyres{region of the $xy$-plane} (not an interval); the \term{range} is still a set of real numbers. Evaluate by substituting both coordinates: $f(x,y)=x^2+3y\Rightarrow f(2,-1)=4-3=\keyres{1}$.

\filbreak \subsubsection{Domain — the same three blockers as Calc 1}
Ban exactly what breaks: \term{even roots} need $(\cdot)\geq0$, \term{logs} need $(\cdot)>0$, \term{denominators} need $\neq0$. The inequality now describes a 2D region — \keyres{sketch it}: \keyres{solid} boundary curve for $\geq$/$\leq$, \warn{dashed} for a strict inequality.

\filbreak \subsubsection{Worked: domain \& range of $f(x,y)=\sqrt{9-x^2-y^2}$}
\par\vspace{2pt}
\stepbox{1. BAN THE BREAKAGE}{even root needs $9-x^2-y^2\geq0$}
\stepdown
\stepbox{2. REARRANGE INTO A KNOWN SHAPE}{$x^2+y^2\leq9$: the \keyres{closed disk}, center $(0,0)$, radius $3$ \; \emph{\scriptsize(radius $=\sqrt9=3$, \warn{not} $9$)}}
\stepdown
\stepbox{3. RANGE FROM THE EXTREMES}{biggest at the center: $f(0,0)=\sqrt9=3$; smallest on the boundary circle: $\sqrt0=0$ \;$\Rightarrow$\; range $=\keyres{[0,3]}$}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.5]
\draw[white!45,->] (-4,0)--(4,0) node[right,font=\tiny]{$x$};
\draw[white!45,->] (0,-4)--(0,4) node[above,font=\tiny]{$y$};
\fill[uHi!30!black] (0,0) circle (3);
\draw[uHi, thick] (0,0) circle (3);
\node[white,font=\tiny] at (0,1.2) {$x^2+y^2\leq9$};
\node[white!70,font=\tiny] at (0,-1.2) {boundary solid: $\leq$};
\end{tikzpicture}
\end{center}
More domains, same move: \; $g(x,y)=\ln(y-x^2)$: $y>x^2$ — strictly \emph{above} the parabola, \warn{dashed} boundary. \; $h(x,y)=\dfrac{1}{x-y}$: the whole plane minus the line $y=x$.

\filbreak \subsubsection{Graphs — the surface $z=f(x,y)$}
The graph of $f$ is the set of points $(x,y,f(x,y))$: a \keyres{surface floating over the domain}, one height $z$ above each input point. Sketch route: \keyres{identify the surface from the quadric section}, then confirm with traces ($x=k$, $y=k$, $z=k$).
\begin{itemize}
\item \term{Plane}: $f(x,y)=ax+by+c$ — linear in $x,y$, always a plane.
\item \term{Elliptic paraboloid}: $f(x,y)=x^2+y^2$ — the bowl.
\item \term{Hemisphere}: $f(x,y)=\sqrt{9-x^2-y^2}$ — the \emph{upper half} of the sphere $x^2+y^2+z^2=9$; the root's output is $\geq0$, so $z\geq0$.
\item \term{Cone, top half}: $f(x,y)=\sqrt{x^2+y^2}$.
\end{itemize}
\warn{A full sphere is not a graph}: it fails the vertical line test — two $z$'s over one $(x,y)$, but a function produces \keyres{one height per point}. Solving $x^2+y^2+z^2=9$ for $z$ honestly splits it: $z=\pm\sqrt{9-x^2-y^2}$, two hemispheres, two functions.

\filbreak \subsubsection{Level curves \& contour maps}
Set the \emph{output} to a constant: the \term{level curve} at value $c$ is the curve \keyres{$f(x,y)=c$}, drawn \keyres{flat in the $xy$-plane}. It is the $z=c$ trace of the surface, \warn{projected down} — a topographic map of the graph. Several $c$'s together form a \term{contour map}. Read steepness from the spacing: \keyres{tight rings $=$ steep}, wide rings $=$ flat.

\filbreak \subsubsection{Worked: level curves of $f(x,y)=x^2+y^2$ at $c=1,2,3,4$}
\par\vspace{2pt}
\stepbox{1. SET $f=c$}{$x^2+y^2=c$: a circle of radius $\keyres{\sqrt c}$ for any $c>0$}
\stepdown
\stepbox{2. DRAW EACH $c$}{radii $\sqrt1,\ \sqrt2,\ \sqrt3,\ \sqrt4=1,\ 1.41,\ 1.73,\ 2$ — concentric circles that \keyres{crowd together} going outward: the bowl steepens}
\stepdown
\stepbox{3. EDGE CASES}{$c=0$: the single point $(0,0)$ (bottom of the bowl). \; $c<0$: \keyres{empty} — a $c$ below the range has no curve; \warn{don't invent one}.}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=5.8cm, height=5.2cm, view={60}{28},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={$z=x^2+y^2$ over its contour map},
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=0:360, y domain=0:2, samples=25, samples y=9, z buffer=sort] ({y*cos(x)}, {y*sin(x)}, {y^2});
\addplot3[keyHi, thick, domain=0:360, samples=50, samples y=0] ({cos(x)}, {sin(x)}, {0});
\addplot3[keyHi, thick, domain=0:360, samples=50, samples y=0] ({1.414*cos(x)}, {1.414*sin(x)}, {0});
\addplot3[keyHi, thick, domain=0:360, samples=50, samples y=0] ({1.732*cos(x)}, {1.732*sin(x)}, {0});
\addplot3[keyHi, thick, domain=0:360, samples=50, samples y=0] ({2*cos(x)}, {2*sin(x)}, {0});
\end{axis}
\end{tikzpicture}
\hspace{4pt}
\begin{tikzpicture}[scale=0.52]
\draw[white!45,->] (-2.8,0)--(2.8,0) node[right,font=\tiny]{$x$};
\draw[white!45,->] (0,-2.8)--(0,2.8) node[above,font=\tiny]{$y$};
\draw[keyHi] (0,0) circle (1);
\draw[keyHi] (0,0) circle (1.414);
\draw[keyHi] (0,0) circle (1.732);
\draw[keyHi] (0,0) circle (2);
\fill[keyHi] (0,0) circle (2pt);
\node[white,font=\tiny, anchor=south west] at (0.6,0.75) {$c=1$};
\node[white,font=\tiny, anchor=south west] at (1.5,1.45) {$c=4$};
\node[white!70,font=\tiny] at (0,-3.4) {tightening rings $=$ steepening bowl};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Worked: non-circular contours — $f=x^2-y^2$ (the saddle's map)}
\stepbox{1. SET $f=c$}{$x^2-y^2=c$: hyperbolas — \keyres{which way they open depends on the sign of $c$}}
\stepdown
\stepbox{2. THE THREE FAMILIES}{$c>0$: open along $x$; \quad $c<0$: open along $y$; \quad $c=0$: the crossed lines $y=\pm x$}
\stepdown
\stepbox{3. READ THE SURFACE OFF THE MAP}{two hyperbola families meeting at crossed lines $=$ the \keyres{saddle's signature} — contrast the bowl's concentric circles \; \emph{\scriptsize(reverse skill: given a contour map, name the surface)}}

\filbreak \subsubsection{Three or more variables — level surfaces}
$w=f(x,y,z)$ takes a point of \emph{space} in. Its graph would need $4$ axes, so \warn{you can't draw it}. The drawable object is the \term{level surface}: \keyres{$f(x,y,z)=c$}, a surface in 3D — always a friend from the quadric section.
\begin{itemize}
\item $f=x^2+y^2+z^2$: level surfaces $x^2+y^2+z^2=c$ — \keyres{concentric spheres} of radius $\sqrt c$ for $c>0$; a single point at $c=0$; \keyres{empty} for $c<0$.
\item $f=x^2+y^2-z^2$: $c>0\Rightarrow$ \keyres{hyperboloid of one sheet}; $c=0\Rightarrow$ \keyres{cone}; $c<0\Rightarrow$ \keyres{two sheets} — one function morphing through three quadrics as $c$ crosses $0$.
\item \term{Domain logic is unchanged}: $f(x,y,z)=\dfrac{1}{\sqrt{z-x^2-y^2}}$ needs $z>x^2+y^2$ — the \keyres{solid region above a paraboloid}, boundary excluded.
\end{itemize}
General pattern: a function of $n$ variables assigns one output to each $n$-tuple, and its \term{level sets} live one dimension down from the graph — \keyres{curves} for $2$ variables, \keyres{surfaces} for $3$.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Domain is a region, not an interval} — answer with an inequality \emph{and} a sketch. Boundary solid for $\geq$, dashed for $>$.
\item \warn{Level curves live in the $xy$-plane} — flat, no $z$-axis on the drawing. The 3D slice at $z=c$ is a \term{trace}; its shadow on the floor is the level curve.
\item \warn{$c$ outside the range $\Rightarrow$ empty level curve} — check before drawing ($x^2+y^2=-1$ has no points).
\item \warn{Graph $\neq$ solid}: $z=f(x,y)$ is an infinitely thin surface, one height per point. A full sphere needs \emph{two} functions.
\item \warn{$2$ vars $\to$ level \emph{curves}; $3$ vars $\to$ level \emph{surfaces}} — you draw one dimension down from the input count.
\end{itemize}

\filbreak \subsection{multivariable limits \& continuity}
$\displaystyle\lim_{(x,y)\to(a,b)} f(x,y)=L$ means $f$ gets arbitrarily close to $L$ as $(x,y)$ closes in on $(a,b)$ — \keyres{along every possible path}. In Calc 1 a point had only two sides (left/right); a point of the plane has \warn{infinitely many approach paths} (lines, parabolas, spirals\ldots), and \keyres{all of them must agree} for the limit to exist.

\filbreak \subsubsection{Which job is this? — three outcomes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{substitute and it works} $\Rightarrow$ that is the limit. \keyres{Always try this first.} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{show the limit does NOT exist} $\Rightarrow$ find \keyres{two paths} giving different values. One counterexample finishes it. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{prove the limit DOES exist} $\Rightarrow$ paths can never prove existence. Use the \keyres{squeeze theorem} or convert to \keyres{polar}. \\
\end{tabular}}
\par\vspace{2pt}
\warn{B and C need opposite tools, so decide which you are doing before you start.} Trying paths for hours cannot settle case C, and a squeeze argument is wasted effort in case B.
\par\vspace{2pt}
\filbreak \subsubsection{Limit laws — same sheet as Calc 1}
\keyres{Every one-variable limit law carries over unchanged} — the only edit is the point: $x\to a$ becomes $(x,y)\to(a,b)$. Below, every $\lim$ means $\lim_{(x,y)\to(a,b)}$, with $\lim f=L$ and $\lim g=M$ both assumed to exist.
\begin{itemize}
\item \term{Constant}: $\lim c = c$
\item \term{Identity}: $\lim x = a$, \; $\lim y = b$
\item \term{Constant Multiple}: $\lim [c \cdot f] = cL$
\item \term{Sum/Diff}: $\lim [f \pm g] = L \pm M$
\item \term{Product}: $\lim [f \cdot g] = LM$
\item \term{Quotient}: $\lim \frac{f}{g} = \frac{L}{M}$, \; if $M \neq 0$
\item \term{Power}: $\lim [f]^n = L^n$
\item \term{Root}: $\lim \sqrt[n]{f} = \sqrt[n]{L}$ \; ($L>0$ when $n$ even)
\item \term{Composition}: $g$ continuous at $L$ $\Rightarrow$ $\lim g(f(x,y)) = g(L)$
\end{itemize}
The \term{squeeze theorem} carries over the same way: $g\leq f\leq h$ near $(a,b)$ and $\lim g=\lim h=L$ $\Rightarrow$ $\lim f=L$. \warn{The fine print matters more now}: each law \emph{requires} the pieces' limits to exist — with infinitely many paths, that's exactly what fails in the DNE examples below, and no law applies to them.

\filbreak \subsubsection{Evaluating — substitute first}
The limit laws (sum, product, quotient, powers, composition) all carry over, and polynomials/rational functions are continuous wherever defined — so \keyres{step 1 is always: plug the point in}.
\begin{itemize}
\item Get a number $\Rightarrow$ \keyres{done, that's the limit}: \; $\displaystyle\lim_{(x,y)\to(2,-1)}\frac{x^2y+2y}{x-y}=\frac{-4-2}{2+1}=\keyres{-2}$.
\item $\dfrac{\text{nonzero}}{0}$ $\Rightarrow$ blow-up: \warn{limit does not exist}, immediately.
\item $\dfrac{0}{0}$ $\Rightarrow$ \warn{indeterminate — more work}: try algebra (factor, conjugate); if nothing cancels, suspect DNE and \keyres{hunt for two disagreeing paths}.
\end{itemize}

\filbreak \subsubsection{Worked: $0/0$ rescued by algebra}
$\displaystyle\lim_{(x,y)\to(1,1)}\frac{x^2-y^2}{x-y}$
\par\vspace{2pt}
\stepbox{1. SUBSTITUTE}{$\frac{1-1}{1-1}=\frac00$ — indeterminate; \warn{don't stop, don't declare DNE}}
\stepdown
\stepbox{2. FACTOR \& CANCEL}{$\dfrac{(x-y)(x+y)}{x-y}=x+y$ \; \emph{\scriptsize(valid on the approach: points near $(1,1)$ with $x\neq y$)}}
\stepdown
\stepbox{3. SUBSTITUTE AGAIN}{$\displaystyle\lim_{(x,y)\to(1,1)}(x+y)=\keyres{2}$ \checkmark}
\par\vspace{2pt}
Conjugate flavor, same move — multiply by the conjugate, the top becomes $xy$, cancel:
$$\lim_{(x,y)\to(0,0)}\frac{\sqrt{xy+1}-1}{xy}\cdot\frac{\sqrt{xy+1}+1}{\sqrt{xy+1}+1}=\lim_{(x,y)\to(0,0)}\frac{1}{\sqrt{xy+1}+1}=\keyres{\tfrac12}$$

\filbreak \subsubsection{The two-path test — proving a limit does NOT exist}
\keyres{If two different paths into $(a,b)$ give two different values, the limit does not exist.} Substituting a path's equation \keyres{turns the problem into a one-variable limit}. Standard path menu: the axes ($y=0$, $x=0$), lines through the point ($y=mx$), power curves ($y=x^2$, $x=y^2$).
\par\vspace{2pt}
\warn{The test only ever proves nonexistence.} Two — or two hundred — agreeing paths prove \emph{nothing}: agreement on every straight line can still hide a disagreeing parabola (example below).

\filbreak \subsubsection{Worked: show $\lim_{(x,y)\to(0,0)}\frac{xy}{x^2+y^2}$ does not exist}
\par\vspace{2pt}
\stepbox{1. SUBSTITUTE}{$\frac00$ — indeterminate. Nothing factors $\Rightarrow$ try paths}
\stepdown
\stepbox{2. PATH 1 — THE $x$-AXIS ($y=0$)}{$f(x,0)=\dfrac{0}{x^2}=0\ \longrightarrow\ 0$}
\stepdown
\stepbox{3. PATH 2 — THE LINE $y=x$}{$f(x,x)=\dfrac{x^2}{2x^2}=\dfrac12\ \longrightarrow\ \dfrac12$}
\stepdown
\stepbox{4. COMPARE}{$0\neq\dfrac12$ $\Rightarrow$ \keyres{the limit does not exist} \checkmark}
\par\vspace{2pt}
Riding in on a general line $y=mx$: $f=\dfrac{mx^2}{x^2+m^2x^2}=\dfrac{m}{1+m^2}$ — the "limit" \warn{depends on the slope you approach along}, which is exactly what nonexistence looks like.

\filbreak \subsubsection{Worked: lines are not enough — $\frac{xy^2}{x^2+y^4}$}
\stepbox{1. TRY EVERY LINE $y=mx$}{$f(x,mx)=\dfrac{x(mx)^2}{x^2+(mx)^4}=\dfrac{m^2x^3}{x^2+m^4x^4}=\dfrac{m^2x}{1+m^4x^2}\to0$ — all lines agree \; \emph{\scriptsize($\div\,x^2$ top and bottom)}}
\stepdown
\stepbox{2. DON'T CONCLUDE}{\warn{agreement proves nothing} — hunt a sneakier path}
\stepdown
\stepbox{3. RIDE THE PARABOLA $x=y^2$}{$\dfrac{y^2\cdot y^2}{y^4+y^4}=\dfrac12$}
\stepdown
\stepbox{4. COMPARE}{$0\neq\tfrac12$ $\Rightarrow$ \keyres{DNE} — only disagreement is ever conclusive \checkmark}

\filbreak \subsubsection{Worked: proving a limit EXISTS — $\lim_{(x,y)\to(0,0)}\frac{x^2y}{x^2+y^2}$}
The dual problem: paths can never \emph{prove} existence — a \keyres{squeeze} (or polar) can:
\par\vspace{2pt}
\stepbox{1. BOUND THE FRACTION}{$\dfrac{x^2}{x^2+y^2}\leq1$ always, so $\Big|\dfrac{x^2y}{x^2+y^2}\Big|\leq|y|$}
\stepdown
\stepbox{2. SQUEEZE}{$0\leq|f|\leq|y|\to0$ as $(x,y)\to(0,0)$ $\Rightarrow$ $\lim=\keyres{0}$ \checkmark}
\stepdown
\stepbox{3. POLAR ROUTE — SAME VERDICT}{$x=r\cos\theta$, $y=r\sin\theta$: $f=\dfrac{r^3\cos^2\theta\sin\theta}{r^2}=r\cos^2\theta\sin\theta$, and $|f|\leq r\to0$ \; \emph{\scriptsize(a surviving $r$ factor kills the $\theta$-dependence — that's what existence looks like)}}

\filbreak \subsubsection{Continuity}
Same three-part checklist as Calc 1, now at a point of the plane. $f$ is \term{continuous} at $(a,b)$ iff:
\begin{enumerate}
\item $f(a,b)$ is defined,
\item $\displaystyle\lim_{(x,y)\to(a,b)}f(x,y)$ exists (every path agrees),
\item the limit equals $f(a,b)$.
\end{enumerate}
Continuous catalog: \keyres{polynomials everywhere}; rational functions \keyres{wherever the denominator $\neq0$}; roots, trig, $e^{(\cdot)}$, $\ln$ on their domains. And \keyres{sums, products, and compositions of continuous functions stay continuous}. Continuity questions thus reduce to domain questions: $f(x,y)=\dfrac{x-y}{x^2+y^2-9}$ is continuous everywhere \emph{except} the circle $x^2+y^2=9$.

\term{Piecewise worked}: $f=\frac{x^2y}{x^2+y^2}$ for $(x,y)\neq(0,0)$, $f(0,0)=0$: the squeeze above gave $\lim=0=f(0,0)$ $\Rightarrow$ \keyres{continuous at the origin}. Had the definition said $f(0,0)=1$: limit exists but misses the value — discontinuous (the removable flavor).

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{$0/0$ does not mean DNE} — it means \emph{undecided}: algebra first, paths second.
\item \warn{The two-path test cannot prove a limit exists} — agreement proves nothing. To establish existence, use substitution/algebra (or a squeeze).
\item \warn{Paths must pass through the target point} — $y=x+1$ is useless for a limit at the origin.
\item \warn{nonzero$/0$ is not indeterminate} — it is an immediate DNE (the function blows up).
\item After substituting a path, \keyres{the limit is one-variable} — finish it with Calc 1 tools.
\end{itemize}

\filbreak \subsection{partial derivatives}
A \term{partial derivative} is an ordinary derivative taken in \keyres{one input direction at a time}: differentiate with respect to one variable while \keyres{freezing every other variable as a constant}.
$$f_x=\frac{\partial f}{\partial x}=\lim_{h\to0}\frac{f(x+h,\,y)-f(x,y)}{h} \qquad f_y=\frac{\partial f}{\partial y}=\lim_{h\to0}\frac{f(x,\,y+h)-f(x,y)}{h}$$
All Calc 1 rules (product, quotient, chain) apply unchanged — the frozen variable just rides along like the number $7$ would.

\filbreak \subsubsection{Worked: both partials of $f(x,y)=x^2y^3+\sin(xy)$}
\par\vspace{2pt}
\stepbox{1. $f_x$ — FREEZE $y$}{$x^2y^3$: constant $y^3$ times $x^2$ $\to$ $2xy^3$. \quad $\sin(xy)$: chain rule, inner derivative $\frac{\partial}{\partial x}(xy)=y$ $\to$ $y\cos(xy)$. \;$\Rightarrow$\; $f_x=\keyres{2xy^3+y\cos(xy)}$}
\stepdown
\stepbox{2. $f_y$ — FREEZE $x$}{$x^2y^3$: constant $x^2$ times $y^3$ $\to$ $3x^2y^2$. \quad $\sin(xy)$: inner derivative is now $x$ $\to$ $x\cos(xy)$. \;$\Rightarrow$\; $f_y=\keyres{3x^2y^2+x\cos(xy)}$}
\stepdown
\stepbox{3. VALUES — PLUG THE POINT IN LAST}{at $(0,3)$: \; $f_x(0,3)=0+3\cos0=\keyres{3}$, \quad $f_y(0,3)=0+0\cdot\cos0=\keyres{0}$ \checkmark}
\par\vspace{2pt}
\warn{Differentiate first, evaluate second} — substituting the point before differentiating turns $f$ into a constant and every "derivative" into $0$.

\filbreak \subsubsection{Interpretation — slope of a trace}
$f_x(a,b)$ is the \keyres{slope of the surface in the $x$-direction} at $(a,b)$: slice the surface with the vertical plane $y=b$, get the trace curve $z=f(x,b)$, and $f_x(a,b)$ is that curve's ordinary Calc 1 slope at $x=a$. Likewise $f_y(a,b)$ slices with $x=a$. Units: \keyres{output units per unit of that input}, other input pinned — for a temperature plate $T(x,y)$, $T_x(a,b)$ is degrees gained per meter stepped in the $x$-direction. Sign reads as always: positive $=$ \keyres{increasing in that direction}.
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=6.0cm, height=5.4cm, view={35}{22},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={$f_x(1,1)$ on $z=x^2+y^2$},
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=-1.6:1.6, y domain=-1.6:1.6, samples=13, samples y=13, z buffer=sort] {x^2+y^2};
\addplot3[keyHi, very thick, domain=-1.6:1.6, samples=30, samples y=0] (x, 1, {x^2+1});
\addplot3[warnHi, thick, domain=0.35:1.65, samples=2, samples y=0] (x, 1, {2*x});
\addplot3[only marks, mark=*, mark size=1.2pt, color=warnHi] coordinates {(1,1,2)};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize {\color{keyHi}$z=x^2+1$}: the $y=1$ trace; \; {\color{warnHi}tangent} at $(1,1,2)$, slope $f_x(1,1)=2x\,\big|_{x=1}=2$.}
\end{center}

\filbreak \subsubsection{Interpreting the \emph{value} — units and sign}
Exams ask what a partial derivative \keyres{means}, not just what it equals. Two facts answer every such question:
\par\vspace{1pt}
\stepbox{READING ANY RATE}{
\textbf{Units} $=\dfrac{\text{units of the output}}{\text{units of the input that varies}}$ \; — read them straight off the problem statement.\\[2pt]
\textbf{Sign} $=$ \keyres{increasing} or \keyres{decreasing} as that one input grows.\\[2pt]
\warn{$f_x$ holds $y$ fixed.} It describes motion \keyres{parallel to the $x$-axis} and says nothing about any other direction.}
\par\vspace{2pt}
\filbreak \subsubsection{Worked (in context): temperature on a plate}
$T(x,y)=99-x^2+xy+3y$ gives the temperature in $^\circ$C at the point $(x,y)$, with $x$ and $y$ measured in \keyres{metres} east and north. Interpret both partials at $(2,1)$.
\par\vspace{2pt}
\stepbox{1. THE PARTIALS, THEN THE VALUES}{$T_x=-2x+y$, \quad $T_y=x+3$
$$T_x(2,1)=-4+1=\keyres{-3} \qquad T_y(2,1)=2+3=\keyres{5}$$}
\stepdown
\stepbox{2. ATTACH THE UNITS}{output is $^\circ$C, inputs are metres, so both rates are in \keyres{$^\circ$C per metre}.}
\stepdown
\stepbox{3. SAY IT IN WORDS — SIGN CARRIES THE MEANING}{$T_x(2,1)=-3$: moving \keyres{east} from $(2,1)$, the temperature \warn{falls} about $3\,^\circ$C per metre.
\par\vspace{1pt}
$T_y(2,1)=5$: moving \keyres{north}, it \keyres{rises} about $5\,^\circ$C per metre.
\par\vspace{1pt}
\emph{\scriptsize("about" is honest — the rate is exact only at the instant you leave the point.)}}
\par\vspace{2pt}
\warn{Neither number describes walking northeast.} A partial derivative only ever looks along an axis. For any other direction you need a \keyres{directional derivative} — worked below, on this same plate.

\filbreak \subsubsection{Three or more variables}
Same rule, more freezes: for $f(x,y,z)$, each partial holds the \emph{two} other variables constant.

\filbreak \subsubsection{Worked: all three partials of $f=x^2y-yz^3$}
\stepbox{1. $f_x$ — FREEZE $y,z$}{$x^2y$: constant $y$ times $x^2\to2xy$; \; $yz^3$: no $x$ at all $\to0$. \;$\Rightarrow$\; $f_x=\keyres{2xy}$}
\stepdown
\stepbox{2. $f_y$ — FREEZE $x,z$}{both terms are (constant)$\cdot y$: \;$f_y=\keyres{x^2-z^3}$ \; \emph{\scriptsize(the frozen $z^3$ survives as a coefficient)}}
\stepdown
\stepbox{3. $f_z$ — FREEZE $x,y$}{only $-yz^3$ has $z$: \; $f_z=\keyres{-3yz^2}$}

\filbreak \subsubsection{Second partials — there are four}
Differentiate twice, choosing a variable each time: pure $f_{xx}=(f_x)_x$, \; $f_{yy}=(f_y)_y$; mixed $f_{xy}=(f_x)_y$, \; $f_{yx}=(f_y)_x$. \warn{Read the notation in the right direction}: subscripts left-to-right ($f_{xy}$ = "$x$ first, then $y$"); Leibniz right-to-left ($\frac{\partial^2 f}{\partial y\,\partial x}$ = \emph{also} "$x$ first, then $y$") — \keyres{the two notations name the same thing in opposite reading order}.

\filbreak \subsubsection{Worked: all four second partials of $f(x,y)=x^3y^2-3xy$}
\par\vspace{2pt}
\stepbox{1. FIRST PARTIALS}{$f_x=3x^2y^2-3y \qquad f_y=2x^3y-3x$}
\stepdown
\stepbox{2. PURE SECONDS}{$f_{xx}=(f_x)_x=6xy^2 \qquad f_{yy}=(f_y)_y=2x^3$}
\stepdown
\stepbox{3. MIXED SECONDS}{$f_{xy}=(f_x)_y=6x^2y-3 \qquad f_{yx}=(f_y)_x=6x^2y-3$}
\stepdown
\stepbox{4. CHECK}{$f_{xy}=f_{yx}$ \checkmark \; \emph{\scriptsize(Clairaut says they had to match)}}

\filbreak \subsubsection{Clairaut's theorem — mixed partials agree}
If $f_{xy}$ and $f_{yx}$ are \keyres{both continuous} on a disk around a point, then \keyres{$f_{xy}=f_{yx}$} there. Every function in this course qualifies, so the theorem doubles as a \keyres{free error check}: compute both mixed partials — \warn{if they disagree, a differentiation slipped somewhere}.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Frozen $\neq$ erased}: $\frac{\partial}{\partial x}(xy)=y$ — the constant multiplier survives. But $\frac{\partial}{\partial x}(y^3)=0$ — no $x$ at all.
\item \warn{Chain rule still fires}: $\frac{\partial}{\partial x}\sin(xy)=y\cos(xy)$ — the inner derivative is the frozen variable.
\item \warn{Notation direction}: $\frac{\partial^2 f}{\partial y\,\partial x}=f_{xy}$, not $f_{yx}$ (Clairaut usually bails you out, but quote the right one).
\item \warn{Evaluate after differentiating}, never before — a substituted point is a constant with derivative $0$.
\item $f_x(a,b)$ is a \keyres{slope in a vertical slice} ($y$ pinned at $b$), not a rate along a diagonal — each partial owns exactly one axis direction.
\end{itemize}

\filbreak \subsection{tangent planes \& linear approximation}
Calc 1's tangent line, leveled up: at $(a,b)$ the surface $z=f(x,y)$ has one height and \keyres{two slopes}, and the flat object carrying all of that is a \term{tangent plane}. Build it like point–slope form, once per direction — \keyres{start at the height, add slope$\,\times\,$run for each input}:
$$z=f(a,b)+f_x(a,b)\,(x-a)+f_y(a,b)\,(y-b)$$
Compare Calc 1's $y=f(a)+f'(a)(x-a)$ — \keyres{same skeleton, one more term}. Rearranged, the plane's \term{normal vector} is $\langle f_x(a,b),\,f_y(a,b),\,-1\rangle$.

\filbreak \subsubsection{How is the surface written? — two forms, one machine}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{a graph}, $z=f(x,y)$ $\Rightarrow$ $z=f(a,b)+f_x(a,b)(x-a)+f_y(a,b)(y-b)$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{a level surface}, $F(x,y,z)=c$ $\Rightarrow$ $\nabla F$ \keyres{is} the normal: $\nabla F\cdot\langle x-x_0,y-y_0,z-z_0\rangle=0$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{A is B in disguise.} Put the graph in level-surface form as $F=f(x,y)-z$, and $\nabla F=\langle f_x,f_y,-1\rangle$ — which is the coefficient pattern in A. Use B whenever $z$ cannot be isolated, as in $x^2+4y^2+z^2=18$. \; The level-surface case is worked in the gradient section below.
\par\vspace{2pt}
\warn{Evaluate the partials at the point before building the plane.} Leaving $f_x$ as a formula produces a surface, not a plane.
\filbreak \subsubsection{Worked: tangent plane to $z=x^2+y^2$ at $(1,2)$}
\par\vspace{2pt}
\stepbox{1. HEIGHT}{$f(1,2)=1+4=5$ — the plane must pass through $(1,2,5)$}
\stepdown
\stepbox{2. SLOPES — EVALUATE AT THE POINT}{$f_x=2x\;\to\;f_x(1,2)=2 \qquad f_y=2y\;\to\;f_y(1,2)=4$ \; \emph{\scriptsize(\warn{numbers}, not formulas, go in the plane)}}
\stepdown
\stepbox{3. ASSEMBLE}{$z=5+2(x-1)+4(y-2)$}
\stepdown
\stepbox{4. SIMPLIFY \& CHECK}{distribute: $z=5+2x-2+4y-8$; collect: $z=\keyres{2x+4y-5}$; \; plug the point back: $2+8-5=5$ \checkmark \; \emph{\scriptsize(the plane must contain the point of tangency)}}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=6.0cm, height=5.4cm, view={35}{22},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={same recipe at $(1,1)$: tangent plane $(1,1,2)$ on $z=x^2+y^2$},
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=-1.6:1.6, y domain=-1.6:1.6, samples=13, samples y=13, z buffer=sort] {x^2+y^2};
\addplot3[draw=duHi, thick, fill=duHi, fill opacity=0.18] coordinates {(0.4,0.4,-0.4) (1.6,0.4,2) (1.6,1.6,4.4) (0.4,1.6,2)} --cycle;
\addplot3[only marks, mark=*, mark size=1.2pt, color=warnHi] coordinates {(1,1,2)};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize {\color{duHi}$z=2+2(x-1)+2(y-1)$} at $(1,1)$ — the $f_x$-trace tangent and the $D_{\hat u}$ tangent from the nearby figures both \keyres{lie inside this plane}: the plane is what all the direction-slopes sweep out.}
\end{center}

\filbreak \subsubsection{Linear approximation — the plane as a calculator}
Near $(a,b)$ the surface hugs its tangent plane, so the plane's height \keyres{estimates the function}:
$$f(x,y)\approx L(x,y)=f(a,b)+f_x(a,b)(x-a)+f_y(a,b)(y-b)$$
The move: \keyres{base point $=$ a nearby \emph{nice} point} (exact values by hand); \keyres{target $=$ the ugly point} the problem actually asks about.

\filbreak \subsubsection{Worked: estimate $\sqrt{3.06^2+3.92^2}$ by hand}
\par\vspace{2pt}
\stepbox{1. NAME $f$ AND PICK THE NICE BASE}{$f(x,y)=\sqrt{x^2+y^2}$; \; the $3$-$4$-$5$ triangle sits next door: $(a,b)=(3,4)$, $f(3,4)=5$}
\stepdown
\stepbox{2. PARTIALS AT THE BASE}{chain rule on the root: $f_x=\tfrac12(x^2+y^2)^{-1/2}\cdot2x=\dfrac{x}{\sqrt{x^2+y^2}}$; at $(3,4)$: $\dfrac{3}{\sqrt{9+16}}=\dfrac35=0.6$; \; likewise $f_y=\dfrac{4}{5}=0.8$}
\stepdown
\stepbox{3. BUILD $L$}{$L(x,y)=5+0.6\,(x-3)+0.8\,(y-4)$}
\stepdown
\stepbox{4. PLUG THE UGLY POINT}{$L(3.06,3.92)=5+0.6(0.06)+0.8(-0.08)=5+0.036-0.064=\keyres{4.972}$}
\par\vspace{2pt}
Exact value: $4.97293\ldots$ — \keyres{the aha}: two small multiplications replaced a square root, and the error only shows up in the 4th digit. That's the whole point of the tangent plane.

\filbreak \subsubsection{Differentials — error propagation}
Rename the runs $dx=x-a$, $dy=y-b$; the plane's \emph{rise} is the \term{total differential}:
$$dz=f_x\,dx+f_y\,dy \qquad \Delta z\approx dz$$
$dz$ estimates the \keyres{change} in $f$ when the inputs wiggle — the tool for measurement error.

\filbreak \subsubsection{Worked: area error — $A=xy$, $x=30\pm0.1$, $y=20\pm0.1$}
\stepbox{1. PARTIALS}{$A_x=y=20, \qquad A_y=x=30$}
\stepdown
\stepbox{2. TOTAL DIFFERENTIAL}{$dA=20(0.1)+30(0.1)=5$ — worst-case area error $\keyres{\pm5}$}
\stepdown
\stepbox{3. SANITY CHECK VS THE TRUE CHANGE}{$30.1\cdot20.1=605.01$: \; $605.01-600=5.01$ — $dz$ nailed it \checkmark}
\par\vspace{2pt}
\term{Percent-error flavor}: for products/powers, \keyres{relative errors add with their exponents}: $V=\pi r^2h$ with $r$ off by $2\%$ and $h$ by $1\%$: $\frac{dV}{V}=2\frac{dr}{r}+\frac{dh}{h}=2(2\%)+1\%=\keyres{5\%}$ \emph{\scriptsize(take $\ln$, then differentiate — logarithmic differentiation's day job)}.

\filbreak \subsubsection{Differentiability — when the plane is trustworthy}
$f$ is \term{differentiable} at $(a,b)$ when the tangent-plane error dies faster than the distance to $(a,b)$ — that is, the plane is a genuinely good local stand-in. Practical test: \keyres{if $f_x$ and $f_y$ exist and are continuous near the point, $f$ is differentiable there} (everything in this course). Differentiable $\Rightarrow$ continuous. \warn{Partials merely existing is not enough}: $\frac{xy}{x^2+y^2}$ has both partials at the origin yet isn't even continuous there (the two-path example) — no tangent plane exists.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Numbers, not formulas, in the plane}: evaluate $f_x,f_y$ \emph{at} $(a,b)$ before assembling — a leftover $2x$ in the plane equation is the classic slip.
\item \warn{Subtract the base point}: the runs are $(x-a)$ and $(y-b)$ — sign errors here shift the whole plane.
\item \warn{$dz$ is the change, not the value}: new value $\approx f(a,b)+dz$; don't report $dz$ alone when asked for the estimate of $f$.
\item \warn{Local only}: $L$ degrades as you leave $(a,b)$ — pick the nice base point \emph{adjacent} to the target, not the nicest one anywhere.
\item Check step 4 always: \keyres{the plane must reproduce $f(a,b)$ at the point} — free error catch.
\end{itemize}

\filbreak \subsection{multivariable chain rule}
Calc 1 chained \emph{one} inner function: $\frac{d}{dt}f(g(t))=f'(g(t))\,g'(t)$. Now $z=f(x,y)$ where $x$ and $y$ \emph{both} depend on $t$: $z$ changes because $x$ moves it \emph{and} because $y$ moves it, and the total rate is the \keyres{sum of one chain-rule product per route} from $z$ down to $t$:
$$\frac{dz}{dt}=\frac{\partial z}{\partial x}\frac{dx}{dt}+\frac{\partial z}{\partial y}\frac{dy}{dt}$$

\filbreak \subsubsection{Which tree? — three shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{one independent variable} ($x,y$ both depend on $t$) $\Rightarrow$ a \keyres{total derivative}: $\dfrac{dz}{dt}=\dfrac{\partial z}{\partial x}\dfrac{dx}{dt}+\dfrac{\partial z}{\partial y}\dfrac{dy}{dt}$ \\[4pt]
\textcolor{keyHi}{\textbf{B}} & \term{two independent variables} ($x,y$ depend on $u,v$) $\Rightarrow$ one \keyres{partial} per independent variable, each a full sum \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{implicit} — no explicit formula, only $F(x,y)=0$ $\Rightarrow$ $\dfrac{dy}{dx}=-\dfrac{F_x}{F_y}$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Draw the tree.} Put the output on top and the independent variables at the bottom.\\
\textbf{2.} \term{Count the paths} from the output down to the variable you differentiate by.\\
\textbf{3.} \term{Multiply along each path}, then \term{add the paths}.\\
\textbf{4.} \term{Substitute} the inner functions only at the end.}
\par\vspace{2pt}
\keyres{Build the formula before you compute anything.} The tree tells you how many terms to expect, so a missing term becomes visible immediately.
\par\vspace{2pt}
\filbreak \subsubsection{Tree diagrams — build the formula before computing}
Draw the dependency tree and the formula assembles itself: \keyres{multiply down each route, add the routes}.
\begin{enumerate}
\item \term{Top}: the dependent variable ($z$). \term{Middle}: the intermediates ($x,y$). \term{Bottom}: the independent variable(s) ($t$; or $u,v$).
\item \term{Label each edge} with the derivative of its upper node with respect to its lower node. \keyres{Count the inputs} to pick the letter: upper node depends on \emph{one} variable $\Rightarrow$ $d$; on \emph{several} $\Rightarrow$ $\partial$.
\item For a target derivative, \keyres{trace every route} from the top to that bottom variable: multiply the edge labels along a route, then \keyres{add the routes}.
\end{enumerate}
\begin{center}
\begin{tikzpicture}[every node/.style={white, font=\scriptsize, inner sep=2pt}]
\node (z) at (0,0) {$z$};
\node (x) at (-0.9,-0.95) {$x$};
\node (y) at (0.9,-0.95) {$y$};
\node (tx) at (-0.9,-1.9) {$t$};
\node (ty) at (0.9,-1.9) {$t$};
\draw[uHi,->] (z)--(x) node[midway, above left=-3pt, font=\tiny]{$\frac{\partial z}{\partial x}$};
\draw[uHi,->] (x)--(tx) node[midway, left, font=\tiny]{$\frac{dx}{dt}$};
\draw[duHi,->] (z)--(y) node[midway, above right=-3pt, font=\tiny]{$\frac{\partial z}{\partial y}$};
\draw[duHi,->] (y)--(ty) node[midway, right, font=\tiny]{$\frac{dy}{dt}$};
\node[font=\tiny] at (0,-2.55) {$\frac{dz}{dt}={\color{uHi}\frac{\partial z}{\partial x}\frac{dx}{dt}}+{\color{duHi}\frac{\partial z}{\partial y}\frac{dy}{dt}}$};
\end{tikzpicture}
\hspace{14pt}
\begin{tikzpicture}[every node/.style={white, font=\scriptsize, inner sep=2pt}]
\node (z) at (0,0) {$z$};
\node (x) at (-1.0,-0.95) {$x$};
\node (y) at (1.0,-0.95) {$y$};
\node (xu) at (-1.5,-1.9) {$u$};
\node (xv) at (-0.5,-1.9) {$v$};
\node (yu) at (0.5,-1.9) {$u$};
\node (yv) at (1.5,-1.9) {$v$};
\draw[keyHi,->] (z)--(x) node[midway, above left=-3pt, font=\tiny]{$\frac{\partial z}{\partial x}$};
\draw[keyHi,->] (x)--(xu) node[midway, left, font=\tiny]{$\frac{\partial x}{\partial u}$};
\draw[keyHi,->] (z)--(y) node[midway, above right=-3pt, font=\tiny]{$\frac{\partial z}{\partial y}$};
\draw[keyHi,->] (y)--(yu) node[midway, left, font=\tiny]{$\frac{\partial y}{\partial u}$};
\draw[white!35,->] (x)--(xv);
\draw[white!35,->] (y)--(yv);
\node[font=\tiny] at (0,-2.55) {routes to $u$ lit: $\frac{\partial z}{\partial u}={\color{keyHi}\frac{\partial z}{\partial x}\frac{\partial x}{\partial u}+\frac{\partial z}{\partial y}\frac{\partial y}{\partial u}}$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{The urge to cancel — wrong as algebra, useful as a check}
The notation begs you to cancel: it \emph{looks} like the $\partial x$'s in $\frac{\partial z}{\partial x}\frac{dx}{dt}$ should cancel to leave $\frac{dz}{dt}$. \warn{Partials are not fractions and never cancel} — if they did, \emph{each} term would equal $\frac{dz}{dt}$ on its own and the formula would collapse to the nonsense $\frac{dz}{dt}=\frac{dz}{dt}+\frac{dz}{dt}$. Each $\frac{\partial z}{\partial x}$ is a single limit taken with the other variable frozen. The top and bottom don't split apart.
\par\vspace{2pt}
\keyres{But the would-cancel pattern is a legal bookkeeping check}: in a correctly built term the middles match — the variable under the first $\partial$ reappears on top of the next factor, so every route reads $z\to\text{intermediate}\to t$ with no gaps, and each intermediate shows up in exactly one term. If the pattern \emph{wouldn't} cancel cleanly, a term is mis-written. \keyres{Verify with it. Never derive with it.}

\filbreak \subsubsection{Worked: $\frac{dz}{dt}$ for $z=x^2y$, \; $x=t^2$, \; $y=t^3$}
\par\vspace{2pt}
\stepbox{1. PARTIALS OF THE OUTER}{$\dfrac{\partial z}{\partial x}=2xy \qquad \dfrac{\partial z}{\partial y}=x^2$}
\stepdown
\stepbox{2. DERIVATIVES OF THE INNER}{$\dfrac{dx}{dt}=2t \qquad \dfrac{dy}{dt}=3t^2$}
\stepdown
\stepbox{3. MULTIPLY EACH ROUTE, ADD}{$\dfrac{dz}{dt}=(2xy)(2t)+(x^2)(3t^2)$}
\stepdown
\stepbox{4. SUBSTITUTE $x(t),y(t)$ BACK}{$=(2\,t^2 t^3)(2t)+(t^4)(3t^2)=4t^6+3t^6=\keyres{7t^6}$ \; \emph{\scriptsize(the answer must become in $t$ only)}}
\stepdown
\stepbox{5. CHECK — SUBSTITUTE FIRST INSTEAD}{$z=(t^2)^2\,t^3=t^7 \;\Rightarrow\; \dfrac{dz}{dt}=7t^6$ \checkmark}
\par\vspace{2pt}
\keyres{The aha}: when the pieces are simple you can always substitute first and differentiate with Calc 1 — the chain rule \emph{must} agree. It earns its keep when substitution is ugly or when $x(t),y(t)$ are only known numerically.

\filbreak \subsubsection{Worked: riding a level curve — $z=x^2+y^2$, \; $x=\cos t$, \; $y=\sin t$}
\par\vspace{2pt}
\stepbox{1. ROUTES}{$\dfrac{dz}{dt}=(2x)(-\sin t)+(2y)(\cos t)$}
\stepdown
\stepbox{2. SUBSTITUTE}{$=-2\cos t\sin t+2\sin t\cos t=\keyres{0}$}
\par\vspace{2pt}
The path $(\cos t,\sin t)$ walks the unit circle — a \keyres{level curve of the bowl} — so the height never changes. \term{Preview}: the gradient section explains this as $\nabla f$ being \keyres{perpendicular to the direction of motion}.

\filbreak \subsubsection{Two independent variables}
Same tree, wider bottom row: $z=f(x,y)$ with $x=x(u,v)$, $y=y(u,v)$. Two targets, \keyres{two routes each} (all derivatives now $\partial$ — every node has several inputs somewhere below):
$$\frac{\partial z}{\partial u}=\frac{\partial z}{\partial x}\frac{\partial x}{\partial u}+\frac{\partial z}{\partial y}\frac{\partial y}{\partial u} \qquad\quad \frac{\partial z}{\partial v}=\frac{\partial z}{\partial x}\frac{\partial x}{\partial v}+\frac{\partial z}{\partial y}\frac{\partial y}{\partial v}$$

\filbreak \subsubsection{Worked: $z=x^2+xy$, \; $x=u+v$, \; $y=u-v$}
\par\vspace{2pt}
\stepbox{1. ALL SIX EDGE LABELS}{$\dfrac{\partial z}{\partial x}=2x+y, \; \dfrac{\partial z}{\partial y}=x \qquad \dfrac{\partial x}{\partial u}=1, \; \dfrac{\partial x}{\partial v}=1, \; \dfrac{\partial y}{\partial u}=1, \; \dfrac{\partial y}{\partial v}=-1$}
\stepdown
\stepbox{2. ROUTES TO $u$}{$\dfrac{\partial z}{\partial u}=(2x+y)(1)+(x)(1)=3x+y$}
\stepdown
\stepbox{3. ROUTES TO $v$}{$\dfrac{\partial z}{\partial v}=(2x+y)(1)+(x)(-1)=x+y$}
\stepdown
\stepbox{4. SUBSTITUTE BACK}{$\dfrac{\partial z}{\partial u}=3(u+v)+(u-v)=\keyres{4u+2v} \qquad \dfrac{\partial z}{\partial v}=(u+v)+(u-v)=\keyres{2u}$}
\stepdown
\stepbox{5. CHECK — SUBSTITUTE FIRST}{$z=(u+v)^2+(u+v)(u-v)=2u^2+2uv \;\Rightarrow\; z_u=4u+2v,\; z_v=2u$ \checkmark}

\filbreak \subsubsection{Generalized chain rule}
Any number of intermediates, any number of independents: for $w=f(x_1,\ldots,x_m)$ with each $x_i$ a function of $t_1,\ldots,t_n$,
$$\frac{\partial w}{\partial t_j}=\frac{\partial w}{\partial x_1}\frac{\partial x_1}{\partial t_j}+\frac{\partial w}{\partial x_2}\frac{\partial x_2}{\partial t_j}+\cdots+\frac{\partial w}{\partial x_m}\frac{\partial x_m}{\partial t_j}$$
\keyres{Term count $=$ number of intermediate variables} — one term per route. Draw the tree when in doubt. A missing branch is the classic miss.

\filbreak \subsubsection{Worked: three intermediates — $w=xyz$, \; $x=t$, $y=t^2$, $z=t^3$}
\stepbox{1. THREE ROUTES}{$\dfrac{dw}{dt}=yz\cdot1+xz\cdot2t+xy\cdot3t^2$}
\stepdown
\stepbox{2. SUBSTITUTE BACK}{$(t^2)(t^3)(1)+(t)(t^3)(2t)+(t)(t^2)(3t^2)=t^5+2t^5+3t^5=\keyres{6t^5}$}
\stepdown
\stepbox{3. CHECK — SUBSTITUTE FIRST}{$w=t\cdot t^2\cdot t^3=t^6\Rightarrow \dfrac{dw}{dt}=6t^5$ \checkmark \; \emph{\scriptsize(three routes, three terms — drop one and the check fails)}}

\filbreak \subsubsection{Worked: chain-rule related rates — the exam's favorite costume}
A cylinder's radius grows at $2$ cm/s while its height shrinks at $3$ cm/s. How fast is the volume changing at $r=5$, $h=10$?
\par\vspace{2pt}
\stepbox{1. NAME THE CHAIN}{$V=\pi r^2h$ with $r(t)$, $h(t)$: \; $\dfrac{dV}{dt}=\dfrac{\partial V}{\partial r}\dfrac{dr}{dt}+\dfrac{\partial V}{\partial h}\dfrac{dh}{dt}$}
\stepdown
\stepbox{2. PARTIALS}{$V_r=2\pi rh, \qquad V_h=\pi r^2$}
\stepdown
\stepbox{3. PLUG THE SNAPSHOT — VALUES LAST}{$\dfrac{dV}{dt}=2\pi(5)(10)(2)+\pi(25)(-3)=200\pi-75\pi=\keyres{125\pi\ \mathrm{cm^3/s}}$ \; \emph{\scriptsize(shrinking $h$ enters as $-3$ — signs carry the physics)}}

\filbreak \subsubsection{Interpreting the value — a chain rule rate is \emph{per unit time}}
$\frac{dz}{dt}$ differs from a partial in one way that decides its units: the input is \keyres{time}, so the answer is
$$\frac{dz}{dt} \;\text{in}\; \frac{\text{units of }z}{\text{unit of time}}$$
\keyres{One number, even though two inputs move at once.} Each term of the sum is one input's contribution; the total is what the moving object actually experiences.
\par\vspace{2pt}
\filbreak \subsubsection{Worked (in context): the bug on the plate}
The same plate, $T(x,y)=99-x^2+xy+3y$ in $^\circ$C with $x,y$ in metres. A bug crawls along $x(t)=2+t$, \; $y(t)=1+2t$, with $t$ in \keyres{seconds}. How fast is the temperature changing \keyres{for the bug} at $t=0$?
\par\vspace{2pt}
\stepbox{1. WHAT THE BUG'S MOTION SUPPLIES}{at $t=0$ the bug is at $(2,1)$; \; $x'(t)=1$ and $y'(t)=2$, so it moves \keyres{$1$ m/s east and $2$ m/s north}}
\stepdown
\stepbox{2. THE PARTIALS THERE — ALREADY COMPUTED ABOVE}{$T_x(2,1)=-3$, \quad $T_y(2,1)=5$ \; \emph{\scriptsize(both in $^\circ$C per metre)}}
\stepdown
\stepbox{3. CHAIN RULE — ONE TERM PER INPUT}{$$\frac{dT}{dt}=T_x\,\frac{dx}{dt}+T_y\,\frac{dy}{dt}=(-3)(1)+(5)(2)=-3+10=\keyres{7}$$}
\stepdown
\stepbox{4. UNITS, THEN THE SENTENCE}{$\dfrac{^\circ\text{C}}{\text{m}}\cdot\dfrac{\text{m}}{\text{s}}=\dfrac{^\circ\text{C}}{\text{s}}$ \; \emph{\scriptsize(the metres cancel — that cancellation \keyres{is} the chain rule)}
\par\vspace{1pt}
At $t=0$ the bug feels the temperature \keyres{rising at $7\,^\circ$C per second}.}
\par\vspace{2pt}
\keyres{Read the two terms}: heading east costs $-3$, heading north gains $+10$. The northward motion \keyres{wins}, so the bug warms up even though it is walking into a cooling direction. \warn{A term with the wrong sign is not an error} — it is one influence losing to another.

\filbreak \subsubsection{Implicit differentiation — the one-line upgrade}
Write the equation as \keyres{$F(x,y)=0$} (move everything to one side). Differentiating both sides with respect to $x$ by the chain rule ($y$ depends on $x$) \emph{builds} the formula:
$$F_x\cdot 1+F_y\cdot\frac{dy}{dx}=0 \quad\Longrightarrow\quad \frac{dy}{dx}=\keyres{-\frac{F_x}{F_y}} \qquad (F_y\neq0)$$
For a surface $F(x,y,z)=0$ defining $z$ implicitly, the same move gives
$$\frac{\partial z}{\partial x}=-\frac{F_x}{F_z} \qquad \frac{\partial z}{\partial y}=-\frac{F_y}{F_z} \qquad (F_z\neq0)$$

\filbreak \subsubsection{Worked: slope of $x^2+y^2=25$ at $(3,-4)$}
\par\vspace{2pt}
\stepbox{1. SET $F=0$}{$F(x,y)=x^2+y^2-25$}
\stepdown
\stepbox{2. TWO PARTIALS}{$F_x=2x \qquad F_y=2y$}
\stepdown
\stepbox{3. FORMULA}{$\dfrac{dy}{dx}=-\dfrac{F_x}{F_y}=-\dfrac{2x}{2y}=-\dfrac{x}{y}$}
\stepdown
\stepbox{4. EVALUATE}{at $(3,-4)$: $\;-\dfrac{3}{-4}=\keyres{\dfrac34}$ \checkmark}
\par\vspace{2pt}
\keyres{The aha}: this is the entire Calc 1 implicit-differentiation grind (differentiate term-by-term, collect $\frac{dy}{dx}$, solve) compressed into \keyres{two partials and a ratio}.

\filbreak \subsubsection{Worked (surface flavor): $\frac{\partial z}{\partial x}$ on $x^2+y^2+z^2=14$ at $(1,2,3)$}
\stepbox{1. SET $F=0$}{$F=x^2+y^2+z^2-14$}
\stepdown
\stepbox{2. THE TWO PARTIALS THAT MATTER}{$F_x=2x, \qquad F_z=2z$ \; \emph{\scriptsize($F_y$ only matters for $\partial z/\partial y$)}}
\stepdown
\stepbox{3. RATIO \& EVALUATE}{$\dfrac{\partial z}{\partial x}=-\dfrac{2x}{2z}=-\dfrac{x}{z}\;\to\;$ at $(1,2,3)$: $\keyres{-\tfrac13}$ \; \emph{\scriptsize(check the point is on the surface: $1+4+9=14$ \checkmark)}}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{$d$ vs $\partial$}: one independent variable at the bottom $\Rightarrow$ $\frac{dz}{dt}$; several $\Rightarrow$ $\frac{\partial z}{\partial u}$. Count inputs, don't guess.
\item \warn{One term per intermediate variable} — a dropped route is the \#1 chain-rule error. Draw the tree.
\item \warn{Never cancel the $\partial$'s} — partials aren't fractions (canceling would prove $\frac{dz}{dt}=2\frac{dz}{dt}$). The matching-middles pattern is only a \keyres{check} that each term chains correctly.
\item \warn{Finish in the independent variable}: after the routes are added, substitute $x(t),y(t)$ back so the answer contains only $t$ (or $u,v$) — or plug in the numeric point.
\item \warn{The implicit formula has a minus sign}: $-F_x/F_y$, from moving the $F_y\frac{dy}{dx}$ term across. Forgetting it flips every slope.
\item \warn{Set $F=0$ first} — the formula reads partials off $F$, so everything must be on one side before differentiating.
\end{itemize}

\filbreak \subsection{directional derivatives \& the gradient}
$f_x$ and $f_y$ are slopes in exactly two directions — parallel to the axes. The \term{directional derivative} is the slope of the surface walking in \keyres{any} direction: for a \warn{unit} vector $\hat u=\langle u_1,u_2\rangle$,
$$D_{\hat u}f(a,b)=\lim_{h\to0}\frac{f(a+hu_1,\;b+hu_2)-f(a,b)}{h}$$
No new limit work is ever needed — the partials already contain every direction:
$$D_{\hat u}f=f_x\,u_1+f_y\,u_2$$
An angle version of the same thing: any unit direction is $\hat u=\langle\cos\theta,\sin\theta\rangle$, so $D_{\hat u}f=f_x\cos\theta+f_y\sin\theta$.

\filbreak \subsubsection{What is being asked? — four questions}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{rate in a given direction} $\Rightarrow$ $D_{\hat u}f=\nabla f\cdot\hat u$. \warn{Normalize the direction first.} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{steepest ascent} $\Rightarrow$ direction is $\nabla f$, and the rate is $|\nabla f|$. Steepest descent is $-\nabla f$. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{no change} $\Rightarrow$ any direction \keyres{perpendicular} to $\nabla f$ — that is along the level curve. \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{tangent plane to a level surface} $\Rightarrow$ $\nabla F$ \keyres{is} the normal vector. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{The gradient answers all four}, so compute $\nabla f$ first and then read the question again. \warn{The single most common lost mark is skipping the normalization in A.}
\par\vspace{2pt}
\filbreak \subsubsection{The gradient — package the partials}
$$\nabla f=\langle f_x,\;f_y\rangle \qquad\Longrightarrow\qquad D_{\hat u}f=\keyres{\nabla f\cdot\hat u}$$
One vector now answers every direction question via a dot product. Sanity check: $\hat u=\langle1,0\rangle$ gives $\nabla f\cdot\hat u=f_x$ — \keyres{the partials are just the axis-direction special cases}.

\filbreak \subsubsection{Worked: $D_{\hat u}f$ for $f(x,y)=x^2-xy+3y^2$ at $P(1,2)$ toward $\vec v=\langle3,4\rangle$}
\par\vspace{2pt}
\stepbox{1. PARTIALS}{$f_x=2x-y \qquad f_y=-x+6y$}
\stepdown
\stepbox{2. GRADIENT AT THE POINT}{$\nabla f(1,2)=\langle 2-2,\;-1+12\rangle=\langle 0,\,11\rangle$}
\stepdown
\stepbox{3. UNIT VECTOR — ALWAYS NORMALIZE}{$|\vec v|=\sqrt{9+16}=5 \;\Rightarrow\; \hat u=\left\langle\tfrac35,\tfrac45\right\rangle$ \; \emph{\scriptsize(\warn{never} dot with the raw $\vec v$)}}
\stepdown
\stepbox{4. DOT}{$D_{\hat u}f(1,2)=\nabla f\cdot\hat u=0\cdot\tfrac35+11\cdot\tfrac45=\keyres{\tfrac{44}{5}}$}
\par\vspace{2pt}
\term{"Toward the point $Q$" variant}: direction of $Q(4,6)$ from $P(1,2)$ means $\vec v=Q-P=\langle3,4\rangle$ — \keyres{subtract first, then normalize}; it's the same problem.
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=6.0cm, height=5.4cm, view={35}{22},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={$D_{\hat u}f(1,1)$ on $z=x^2+y^2$, \; $\hat u=\langle\tfrac{1}{\sqrt2},\tfrac{1}{\sqrt2}\rangle$},
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=-1.6:1.6, y domain=-1.6:1.6, samples=13, samples y=13, z buffer=sort] {x^2+y^2};
\addplot3[keyHi, very thick, domain=-1.3:1.3, samples=30, samples y=0] (x, x, {2*x^2});
\addplot3[warnHi, thick, domain=0.55:1.45, samples=2, samples y=0] (x, x, {4*x-2});
\addplot3[only marks, mark=*, mark size=1.2pt, color=warnHi] coordinates {(1,1,2)};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize {\color{keyHi}diagonal trace} along $\hat u$; \; {\color{warnHi}tangent} at $(1,1,2)$, slope $D_{\hat u}f=\nabla f\cdot\hat u=\langle2,2\rangle\cdot\langle\tfrac{1}{\sqrt2},\tfrac{1}{\sqrt2}\rangle=2\sqrt2$ — same picture as the $f_x$ trace, tilted to a chosen direction.}
\end{center}

\filbreak \subsubsection{Interpreting the value — why $\hat u$ \emph{must} be a unit vector}
$D_{\hat u}f$ carries the \keyres{same units as a partial derivative} — output per unit of distance travelled. That is true \keyres{only because $\hat u$ has length $1$}, so one step of $\hat u$ is one unit of distance.
\par\vspace{1pt}
\warn{Skip the normalization and the units become meaningless}, not merely scaled: you would be reporting change per step of some arbitrary length. This is the most common lost mark in the section.
\par\vspace{1pt}
Two more readings that exam questions ask for directly:
\begin{itemize}
\item $\keyres{|\nabla f|}$ is the \keyres{greatest possible} rate at that point. No direction beats it.
\item Therefore $D_{\hat u}f$ always lies in $\keyres{\left[-|\nabla f|,\;|\nabla f|\right]}$ — a value outside that range is an arithmetic error.
\end{itemize}
\par\vspace{2pt}
\filbreak \subsubsection{Worked (in context): walking northeast on the plate}
The plate from the partials section: $T(x,y)=99-x^2+xy+3y$ in $^\circ$C, $x,y$ in metres, and at $(2,1)$ we found $\nabla T=\langle-3,\,5\rangle$. Walk \keyres{northeast}.
\par\vspace{2pt}
\stepbox{1. BUILD $\hat u$ — NORMALIZE FIRST}{northeast is $\vec v=\langle1,1\rangle$, \; $\|\vec v\|=\sqrt2$, so $\hat u=\left\langle\dfrac{1}{\sqrt2},\,\dfrac{1}{\sqrt2}\right\rangle$}
\stepdown
\stepbox{2. DOT WITH THE GRADIENT}{$$D_{\hat u}T=\nabla T\cdot\hat u=\frac{-3}{\sqrt2}+\frac{5}{\sqrt2}=\frac{2}{\sqrt2}=\keyres{\sqrt2}\approx1.41$$}
\stepdown
\stepbox{3. SAY IT — WITH UNITS}{walking northeast from $(2,1)$, the temperature \keyres{rises about $1.41\,^\circ$C per metre}.}
\stepdown
\stepbox{4. SANITY-CHECK AGAINST THE MAXIMUM}{$|\nabla T|=\sqrt{(-3)^2+5^2}=\sqrt{9+25}=\sqrt{34}\approx5.83$
\par\vspace{1pt}
$1.41$ sits inside $[-5.83,\,5.83]$ \checkmark, and it is \keyres{well below} the maximum — northeast is not the steepest way up. That direction is $\nabla T=\langle-3,5\rangle$, which points \keyres{north and west}.}
\par\vspace{2pt}
\keyres{The aha}: the two partials said "east cools, north warms". Northeast mixes them, so it lands \keyres{between} the two — positive, but far short of the best available climb.

\filbreak \subsubsection{What the gradient means — three directions that matter}
With $\varphi$ the angle between $\nabla f$ and $\hat u$: \; $D_{\hat u}f=\nabla f\cdot\hat u=|\nabla f|\cos\varphi$. Reading off the extremes of $\cos\varphi$:
\begin{itemize}
\item \term{Steepest ascent} ($\varphi=0$): $f$ increases fastest \keyres{in the direction of $\nabla f$}, at rate \keyres{$|\nabla f|$}.
\item \term{Steepest descent} ($\varphi=\pi$): fastest decrease in the direction of $-\nabla f$, at rate $-|\nabla f|$.
\item \term{No change} ($\varphi=\tfrac\pi2$): $D_{\hat u}f=0$ perpendicular to $\nabla f$ — walking \keyres{along the level curve}.
\end{itemize}
Consequence: \keyres{$\nabla f$ is perpendicular to the level curve} of $f$ through the point — contour maps and gradients are orthogonal families.

\filbreak \subsubsection{Worked: steepest ascent on $f(x,y)=x^2+y^2$ at $(1,2)$}
\par\vspace{2pt}
\stepbox{1. GRADIENT AT THE POINT}{$\nabla f=\langle2x,2y\rangle \;\Rightarrow\; \nabla f(1,2)=\langle2,4\rangle$}
\stepdown
\stepbox{2. RATE — MAGNITUDE OF THE GRADIENT}{max rate of increase $=|\nabla f(1,2)|=\sqrt{2^2+4^2}=\sqrt{20}=\keyres{2\sqrt5}$}
\stepdown
\stepbox{3. DIRECTION — NORMALIZE THE GRADIENT}{$\hat u=\dfrac{1}{2\sqrt5}\langle2,4\rangle=\left\langle\tfrac{2}{2\sqrt5},\tfrac{4}{2\sqrt5}\right\rangle=\keyres{\left\langle\tfrac{1}{\sqrt5},\tfrac{2}{\sqrt5}\right\rangle}$}
\stepdown
\stepbox{4. THE OTHER TWO ANSWERS FOR FREE}{steepest descent: $-\hat u$, rate $-2\sqrt5$; \; no change: $\pm\left\langle-\tfrac{2}{\sqrt5},\tfrac{1}{\sqrt5}\right\rangle$ \; \emph{\scriptsize(tangent to the circle through $(1,2)$)}}
\par\vspace{2pt}
$\nabla f$ points \keyres{radially away from the bowl's bottom} — straight across the contour circles. This is the chain-rule level-curve example closing its loop: walking the circle gave $\frac{dz}{dt}=0$ because that walk is the $\varphi=\tfrac\pi2$ direction.
\begin{center}
\begin{tikzpicture}[scale=0.62]
\draw[white!45,->] (-3.4,0)--(3.4,0) node[right,font=\tiny]{$x$};
\draw[white!45,->] (0,-3.4)--(0,3.4) node[above,font=\tiny]{$y$};
\draw[white!35] (0,0) circle (1);
\draw[white!35] (0,0) circle (1.65);
\draw[uHi, thick] (0,0) circle (2.236);
\draw[white!35] (0,0) circle (2.9);
\fill[white] (1,2) circle (1.6pt);
\draw[keyHi, very thick, ->] (1,2)--(1.55,3.1) node[above right=-2pt, font=\tiny, keyHi]{$\nabla f$};
\draw[warnHi, thick, ->] (1,2)--(0.45,0.9) node[below left=-3pt, font=\tiny, warnHi]{$-\nabla f$};
\draw[termHi, thick, dashed] (0.1,2.45)--(1.9,1.55) node[right, font=\tiny, termHi]{$D_{\hat u}f=0$};
\node[white!70, font=\tiny] at (0,-3.9) {$\nabla f$ crosses every contour at $90^\circ$};
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{Three variables — nothing changes}
$$\nabla f=\langle f_x,\;f_y,\;f_z\rangle \qquad D_{\hat u}f=\nabla f\cdot\hat u \quad (\hat u \text{ a unit vector in 3D})$$
Quick run: $f(x,y,z)=xy+z^2$ at $P(1,2,1)$ toward $\vec v=\langle1,2,2\rangle$: \; $\nabla f=\langle y,x,2z\rangle=\langle2,1,2\rangle$, \; $|\vec v|=3$, \; $D_{\hat u}f=\frac{2\cdot1+1\cdot2+2\cdot2}{3}=\keyres{\frac83}$.
\par\vspace{2pt}
Perpendicularity levels up a dimension: \keyres{$\nabla f$ is normal to the level \emph{surface}} $f=c$. Instant example: $f=x^2+y^2+z^2$ has $\nabla f=2\langle x,y,z\rangle$ — radial, perpendicular to every concentric sphere, as it must be.

\filbreak \subsubsection{Tangent plane to a level surface \& the normal line}
The normal fact is a machine: at a point $P$ on the surface $F(x,y,z)=c$,
$$\text{tangent plane: } \nabla F(P)\cdot\langle x-x_0,\,y-y_0,\,z-z_0\rangle=0 \qquad \text{normal line: } P+t\,\nabla F(P)$$
One gradient hands over \keyres{both} objects — it's the plane's normal and the line's direction.

\filbreak \subsubsection{Worked: ellipsoid $x^2+4y^2+z^2=18$ at $(1,2,1)$}
\stepbox{1. CHECK THE POINT, TAKE $\nabla F$}{$1+16+1=18$ \checkmark; \quad $\nabla F=\langle2x,8y,2z\rangle\to\langle2,16,2\rangle$}
\stepdown
\stepbox{2. TANGENT PLANE}{$2(x-1)+16(y-2)+2(z-1)=0$: distribute: $2x-2+16y-32+2z-2=0$; collect: $2x+16y+2z=36$; divide by $2$: $\keyres{x+8y+z=18}$}
\stepdown
\stepbox{3. NORMAL LINE — SAME VECTOR, NEW JOB}{$\keyres{x=1+t, \; y=2+8t, \; z=1+t}$ \; \emph{\scriptsize(scaled $\nabla F$ by $\tfrac12$ — any multiple works)}}
\par\vspace{2pt}
\keyres{The aha}: the graph case $z=f(x,y)$ is this machine on $F=f(x,y)-z$: $\nabla F=\langle f_x,f_y,-1\rangle$ — exactly the tangent-plane formula from the linear-approximation section, now explained.

\filbreak \subsubsection{Worked (reverse): recover $\nabla f$ from two directional derivatives}
At $P$: $D_{\hat u}f=3$ along $\hat u=\langle1,0\rangle$, and $D_{\hat w}f=\sqrt2$ along $\hat w=\langle\tfrac{1}{\sqrt2},\tfrac{1}{\sqrt2}\rangle$. Find $\nabla f$ and the max rate.
\par\vspace{2pt}
\stepbox{1. EACH $D$ IS A LINEAR EQUATION}{$\nabla f\cdot\langle1,0\rangle=f_x=3; \qquad \tfrac{1}{\sqrt2}(f_x+f_y)=\sqrt2$}
\stepdown
\stepbox{2. SOLVE THE SYSTEM}{multiply the second by $\sqrt2$: $f_x+f_y=\sqrt2\cdot\sqrt2=2$; substitute $f_x=3$: $3+f_y=2\Rightarrow f_y=-1$: \quad $\nabla f=\keyres{\langle3,-1\rangle}$}
\stepdown
\stepbox{3. MAX RATE FOR FREE}{$|\nabla f|=\sqrt{3^2+(-1)^2}=\keyres{\sqrt{10}}$, in direction $\tfrac{1}{\sqrt{10}}\langle3,-1\rangle$ \; \emph{\scriptsize(two dots pin two unknowns — $n$ directions recover an $n$-dim gradient)}}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Normalize the direction first} — $D_{\hat u}f$ demands a \emph{unit} vector. Dotting with a raw $\vec v$ scales the slope by $|\vec v|$. This is the \#1 miss.
\item \warn{Direction vs rate are different answers}: the direction of fastest increase is $\nabla f$ (a vector); the fastest rate is $|\nabla f|$ (a number). Answer the one asked.
\item \warn{$\nabla f$ lives on the floor} — it is a vector in the \emph{domain} ($xy$-plane), pointing where to walk. It is not a 3D arrow lying on the surface.
\item \warn{$D_{\hat u}f$ is a scalar} (a slope); $\nabla f$ is a vector. Don't hand back a vector when a slope is asked.
\item \warn{"Toward $Q$" means $\vec v=Q-P$}, not $Q$ itself — subtract, then normalize.
\item $\nabla f=\vec 0$ $\Rightarrow$ every directional derivative is $0$: a \term{critical point} — no uphill direction exists (max/min/saddle candidates, next section's business).
\end{itemize}

\filbreak \subsection{max/min — critical points \& the second derivative test}
The gradient section's last pitfall is this section's starting gun: extrema can only happen where \keyres{$\nabla f=\vec 0$} — both partials zero \emph{simultaneously} — or where a partial is undefined. These are the \term{critical points}: the spots where the \keyres{tangent plane is horizontal} (or missing). Finding them means \keyres{solving the system} $f_x=0$, $f_y=0$ — that's where the actual work lives.

\filbreak \subsubsection{Which hunt is this? — three problems}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{classify critical points} (no region given) $\Rightarrow$ solve $\nabla f=\vec 0$, then run the \keyres{$D$ test} on each. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{absolute max/min on a closed region} $\Rightarrow$ collect three sets of candidates: \keyres{interior} critical points, each \keyres{edge}, and every \keyres{corner}. Compare values. \warn{No $D$ test needed.} \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{optimize with a constraint} $\Rightarrow$ substitute the constraint to remove a variable, or use \keyres{Lagrange}: $\nabla f=\lambda\nabla g$. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{The system $f_x=0$, $f_y=0$} — both zero at the \keyres{same} point. Factor and enumerate cases.\\
\textbf{2.} \term{Each boundary edge} — substitute the edge equation into $f$ to get a \keyres{one-variable} Calc 1 problem.\\
\textbf{3.} \term{Which quantity is constrained} — read whether the volume or the material is the given one. The roles swap. The recipe does not.}
\par\vspace{2pt}
\filbreak \subsubsection{Second derivative test — the discriminant $D$}
A critical point can be a min, a max, or a \term{saddle} (min in one slice, max in another). The classifier, built from the second partials at the critical point:
$$D=f_{xx}\,f_{yy}-\left(f_{xy}\right)^2$$
\begin{itemize}
\item $D>0$, \; $f_{xx}>0$: \keyres{local min} \; (both slices bend up — a bowl)
\item $D>0$, \; $f_{xx}<0$: \keyres{local max} \; (both bend down — a dome)
\item $D<0$: \keyres{saddle point} \; — definitive, \warn{not} "test failed"
\item $D=0$: \warn{inconclusive} — the only case the test can't decide
\end{itemize}
Read it as: $D>0$ means the pure seconds \keyres{agree and dominate the mixed term} — a genuine bowl or dome, and the sign of $f_{xx}$ says which; $D<0$ means the slices \keyres{disagree} — saddle.

\filbreak \subsubsection{Worked: classify all critical points of $f(x,y)=x^3+y^2-6xy$}
\par\vspace{2pt}
\stepbox{1. SET BOTH PARTIALS TO ZERO — A SYSTEM}{$f_x=3x^2-6y=0 \qquad f_y=2y-6x=0$}
\stepdown
\stepbox{2. SOLVE SIMULTANEOUSLY}{$f_y$ gives $y=3x$; substitute into $f_x$: $3x^2-6(3x)=3x^2-18x=3x(x-6)=0$ $\Rightarrow$ $x=0,6$; then $y=3x$ gives $y=0,18$: critical points $\keyres{(0,0)}$ and $\keyres{(6,18)}$}
\stepdown
\stepbox{3. SECOND PARTIALS \& $D$}{$f_{xx}=6x, \quad f_{yy}=2, \quad f_{xy}=-6 \qquad D=(6x)(2)-(-6)^2=12x-36$}
\stepdown
\stepbox{4. CLASSIFY EACH POINT SEPARATELY}{$(0,0)$: $D=-36<0$ $\Rightarrow$ \keyres{saddle}. \quad $(6,18)$: $D=36>0$, $f_{xx}=36>0$ $\Rightarrow$ \keyres{local min}; value: $f(6,18)=6^3+18^2-6(6)(18)=216+324-648=-108$}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=6.0cm, height=5.2cm, view={35}{22},
xtick=\empty, ytick=\empty, ztick=\empty, clip=false,
xlabel={$x$}, ylabel={$y$}, zlabel={$z$},
label style={font=\tiny, text=white!80},
title style={font=\scriptsize, text=white},
title={$z=x^2-y^2$: \; $D<0$ at the origin — saddle},
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, domain=-1.5:1.5, y domain=-1.5:1.5, samples=13, samples y=13, z buffer=sort] {x^2-y^2};
\addplot3[keyHi, very thick, domain=-1.5:1.5, samples=30, samples y=0] (x, 0, {x^2});
\addplot3[warnHi, very thick, domain=-1.5:1.5, samples=30, samples y=0] (0, x, {-x^2});
\addplot3[only marks, mark=*, mark size=1.2pt, color=white] coordinates {(0,0,0)};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the {\color{keyHi}$x$-slice} bends up (min through the point), the {\color{warnHi}$y$-slice} bends down (max through it) — the slices \warn{disagree}, so the point is neither: that disagreement is exactly what $D<0$ detects.}
\end{center}

\filbreak \subsubsection{Worked: when the system \emph{factors} — $f(x,y)=\left(x^2-y^2\right)e^{-x^2-y^2}$}
The example above solved by substitution and gave two points. Most exam systems instead \keyres{factor}, and then you enumerate cases.
\par\vspace{2pt}
\stepbox{1. PRODUCT RULE, AND FACTOR IMMEDIATELY}{write $g=e^{-x^2-y^2}$ \emph{\scriptsize(so $g_x=-2xg$, $g_y=-2yg$)} and $u=x^2-y^2$:
$$f_x=2x\,g+u\left(-2xg\right)=\keyres{2xg\left(1-u\right)} \qquad f_y=-2y\,g+u\left(-2yg\right)=\keyres{-2yg\left(1+u\right)}$$}
\stepdown
\stepbox{2. KILL THE EXPONENTIAL — IT IS NEVER ZERO}{$g=e^{-x^2-y^2}>0$ always, so it \keyres{cannot} supply a root and divides out:
$$f_x=0 \iff x=0 \;\text{ or }\; u=1 \qquad\qquad f_y=0 \iff y=0 \;\text{ or }\; u=-1$$
\warn{Never cancel a factor without saying why it is nonzero} — that sentence is worth marks}
\stepdown
\stepbox{3. ENUMERATE ALL FOUR CASES}{\emph{\scriptsize(two choices from $f_x$ $\times$ two from $f_y$ — every combination must be checked)}
\par\vspace{1pt}
$x=0$ \textbf{and} $y=0$: \; $\Rightarrow$ \keyres{$(0,0)$}
\par\vspace{1pt}
$x=0$ \textbf{and} $u=-1$: \; $u=0-y^2=-1 \Rightarrow y^2=1 \Rightarrow$ \keyres{$(0,\pm1)$}
\par\vspace{1pt}
$u=1$ \textbf{and} $y=0$: \; $u=x^2-0=1 \Rightarrow x^2=1 \Rightarrow$ \keyres{$(\pm1,0)$}
\par\vspace{1pt}
$u=1$ \textbf{and} $u=-1$: \; \warn{impossible} — this case is empty, and saying so \emph{is} the work
\par\vspace{1pt}
Five critical points total.}
\stepdown
\stepbox{4. SECOND PARTIALS — DIFFERENTIATE THE FACTORED FORMS}{$$f_{xx}=2g\left(1-u\right)-4x^2g\left(1-u\right)-4x^2g \qquad f_{yy}=-2g\left(1+u\right)+4y^2g\left(1+u\right)+4y^2g$$
$$f_{xy}=2x\Big[\left(-2yg\right)\left(1-u\right)+g\left(2y\right)\Big]=4xyg\,u$$}
\stepdown
\stepbox{5. CLASSIFY $(0,0)$ — HERE $u=0$, $g=1$}{$f_{xx}=2(1)(1)-0-0=2$, \quad $f_{yy}=-2(1)(1)+0+0=-2$, \quad $f_{xy}=4(0)(0)(1)(0)=0$
$$D=(2)(-2)-0^2=-4<0 \;\Rightarrow\; \keyres{\text{saddle}}$$}
\stepdown
\stepbox{6. CLASSIFY $(1,0)$ — HERE $u=1$, $g=e^{-1}$}{$f_{xx}=2g(0)-4g(0)-4g=-4g$, \quad $f_{yy}=-2g(2)+0+0=-4g$, \quad $f_{xy}=4(1)(0)g(1)=0$
$$D=\left(-4g\right)\left(-4g\right)-0=16g^2=\frac{16}{e^2}>0, \quad f_{xx}=-\frac4e<0 \;\Rightarrow\; \keyres{\text{local max}}, \; f=\frac1e$$}
\stepdown
\stepbox{7. CLASSIFY $(0,1)$ — HERE $u=-1$, $g=e^{-1}$}{$f_{xx}=2g(2)-0-0=4g$, \quad $f_{yy}=-2g(0)+4g(0)+4g=4g$, \quad $f_{xy}=4(0)(1)g(-1)=0$
$$D=16g^2>0, \quad f_{xx}=\frac4e>0 \;\Rightarrow\; \keyres{\text{local min}}, \; f=-\frac1e$$}
\stepdown
\stepbox{8. THE LAST TWO BY SYMMETRY}{$f$ is unchanged by $x\to-x$ and by $y\to-y$, so $(-1,0)$ copies $(1,0)$ \emph{\scriptsize(max, $\frac1e$)} and $(0,-1)$ copies $(0,1)$ \emph{\scriptsize(min, $-\frac1e$)} — \keyres{state the symmetry, don't redo the algebra}}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=6.0cm, height=4.6cm, view={40}{26},
xmin=-2.4, xmax=2.4, ymin=-2.4, ymax=2.4, zmin=-0.45, zmax=0.45, clip=false,
colormap={cm}{color=(keyHi) color=(uHi) color=(warnHi)}]
\addplot3[mesh, domain=-1.85:1.85, y domain=-1.85:1.85, samples=24, samples y=24, z buffer=sort]
  {(x^2-y^2)*exp(-x^2-y^2)};
\node[font=\tiny, text=white!85, anchor=south] at (axis cs:0,0,0.34) {$(0,0)$ saddle};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize height is colour-coded: two {\color{warnHi}red ridges} at $(\pm1,0)$ \emph{(max $\frac1e$)}, two {\color{keyHi}green troughs} at $(0,\pm1)$ \emph{(min $-\frac1e$)}, and the saddle where they cross — the five points the case table found, and nothing else}
\end{center}
\keyres{The aha}: when both partials \keyres{factor}, the system is not "solve two equations" — it is \keyres{a grid of cases}. Take one root from each factored equation, every combination, and \warn{check each pairing for consistency}. Cases that contradict are answers too: writing "impossible" is what stops you from inventing a sixth critical point.

\filbreak \subsubsection{Worked: classify with $f$ \emph{never given} — only its partials}
Sometimes the problem hands you $f_x$ and $f_y$ and nothing else. You can still find and classify every critical point, because the test only ever uses \keyres{derivatives}.
$$f_x=3\left(x^2-1\right)\left(y+2\right) \qquad\qquad f_y=x\left(x^2-3\right)$$
\par\vspace{2pt}
\stepbox{1. SANITY-CHECK THAT THESE CAN COME FROM ONE $f$}{Clairaut says the mixed partials must agree:
$$\frac{\partial}{\partial y}\left[3\left(x^2-1\right)\left(y+2\right)\right]=3x^2-3 \qquad \frac{\partial}{\partial x}\left[x^3-3x\right]=3x^2-3 \;\checkmark$$
\emph{\scriptsize(if these disagreed, no $f$ exists and the question is broken)}}
\stepdown
\stepbox{2. BOTH ZERO — READ THE ROOTS OFF THE FACTORS}{$f_x=0 \iff x=1,\; x=-1,\; \text{or } y=-2$
\par\vspace{1pt}
$f_y=0 \iff x=0,\; x=\sqrt3,\; \text{or } x=-\sqrt3$ \; \emph{\scriptsize($x^2-3=0 \Rightarrow x=\pm\sqrt3$)}}
\stepdown
\stepbox{3. INTERSECT THE TWO SOLUTION SETS}{$x=\pm1$ paired with $x\in\{0,\pm\sqrt3\}$: \; \warn{contradiction} — $x$ cannot be two different numbers. \keyres{Empty.}
\par\vspace{1pt}
$y=-2$ paired with each $x$: \; \keyres{$(0,-2)$}, \; \keyres{$(\sqrt3,-2)$}, \; \keyres{$(-\sqrt3,-2)$}
\par\vspace{1pt}
\emph{\scriptsize($f_y$ never mentions $y$, so it constrains $x$ only — every critical point must sit on the line $y=-2$)}}
\stepdown
\stepbox{4. SECOND PARTIALS — DIFFERENTIATE WHAT YOU WERE GIVEN}{$$f_{xx}=\frac{\partial}{\partial x}\Big[3\left(x^2-1\right)\left(y+2\right)\Big]=6x\left(y+2\right)$$
$$f_{yy}=\frac{\partial}{\partial y}\Big[x^3-3x\Big]=0 \qquad\qquad f_{xy}=3\left(x^2-1\right)$$}
\stepdown
\stepbox{5. THE DISCRIMINANT COLLAPSES}{$$D=f_{xx}f_{yy}-\left(f_{xy}\right)^2=f_{xx}\cdot0-9\left(x^2-1\right)^2=-9\left(x^2-1\right)^2$$
a square is $\geq0$, so $\keyres{D\leq0}$ \keyres{everywhere} — with $f_{yy}\equiv0$, $D$ can \warn{never} be positive}
\stepdown
\stepbox{6. EVALUATE $D$ AT EACH POINT}{$(0,-2)$: \; $D=-9\left(0-1\right)^2=-9<0 \Rightarrow \keyres{\text{saddle}}$
\par\vspace{1pt}
$(\pm\sqrt3,-2)$: \; $D=-9\left(3-1\right)^2=-9(4)=-36<0 \Rightarrow \keyres{\text{saddle}}$
\par\vspace{1pt}
All three are saddles. \warn{Report locations and types only} — without $f$ there are no heights to report, and inventing one is the trap.}
\par\vspace{2pt}
\keyres{The aha}: the second derivative test never touches $f$ itself — it reads $f_{xx}$, $f_{yy}$, $f_{xy}$, all of which are one derivative away from what you were handed. And the structure gave the answer before the arithmetic did: \keyres{$f_{yy}\equiv0$ forces $D\leq0$}, so no maximum or minimum was ever possible. \keyres{Look at the shape of $D$ before plugging in points.}

\filbreak \subsubsection{Absolute extrema on a closed region — the candidate hunt}
EVT levels up: $f$ continuous on a \keyres{closed, bounded} region $R$ \emph{must} attain an absolute max and min — the hunt is the Closed Interval Method with a boundary instead of two endpoints:
\begin{enumerate}
\item \term{Interior}: find critical points inside $R$ (solve the system as above. No need to classify — just collect values).
\item \term{Boundary}: substitute each edge's equation into $f$ — the problem \keyres{drops to one-variable Calc 1} on an interval. Collect its critical values \emph{and} the endpoints (corners).
\item \term{Compare}: biggest collected value $=$ abs max, smallest $=$ abs min.
\end{enumerate}

\filbreak \subsubsection{Worked: $f(x,y)=x^2-2xy+2y$ on the rectangle $0\leq x\leq3$, \; $0\leq y\leq2$}
\par\vspace{2pt}
\stepbox{1. INTERIOR CRITICAL POINTS}{$f_y=-2x+2=0\Rightarrow x=1$; put $x=1$ into $f_x=2x-2y=0$: $2-2y=0\Rightarrow y=1$. Value: $f(1,1)=1-2(1)(1)+2(1)=\keyres{1}$}
\stepdown
\stepbox{2. WALK THE FOUR EDGES — EACH IS CALC 1}{%
$y{=}0$: $f=x^2$ on $[0,3]$ — increasing: $f(0,0)=0$, \; $f(3,0)=9$\\
$y{=}2$: $f=x^2-2x(2)+2(2)=x^2-4x+4=(x-2)^2$ — vertex at $x{=}2$: $f(0,2)=4$, \; $f(2,2)=0$, \; $f(3,2)=1$\\
$x{=}0$: $f=2y$ — $f(0,0)=0$ to $f(0,2)=4$, no interior critical point\\
$x{=}3$: $f=9-6y+2y=9-4y$ — $f(3,0)=9$ down to $f(3,2)=1$, none}
\stepdown
\stepbox{3. COMPARE ALL CANDIDATE VALUES}{$\{1,\;0,\;9,\;4,\;0,\;1\}$ $\Rightarrow$ \keyres{abs max $9$ at $(3,0)$}; \; \keyres{abs min $0$ at $(0,0)$ and $(2,2)$}}
\par\vspace{2pt}
\keyres{The aha}: on each edge one variable freezes at a number, and a 2-variable problem \keyres{collapses to four 1-variable problems} — nothing new to learn, just bookkeeping. Note the interior critical point ($f=1$) won \emph{neither} title: the extremes lived on the boundary, which is why it can never be skipped.

\filbreak \needspace{12\baselineskip}\subsubsection{Worked (sloped edge): $f=x^2+y^2-2x-2y$ on the triangle $(0,0),(4,0),(0,4)$}
The exam version — one boundary piece isn't axis-aligned, so its substitution actually does something:
\par\vspace{2pt}
\stepbox{1. INTERIOR}{$f_x=2x-2=0,\ f_y=2y-2=0 \Rightarrow (1,1)$, inside \checkmark: $f(1,1)=1+1-2-2=\keyres{-2}$}
\stepdown
\stepbox{2. TWO AXIS EDGES}{$y=0$: $f=x^2-2x$, vertex $x=1$: $f=-1$; ends $0,\,8$. \quad $x=0$: symmetric: $-1$; ends $0,\,8$}
\stepdown
\stepbox{3. THE SLOPED EDGE — SUBSTITUTE $y=4-x$}{$f=x^2+(4-x)^2-2x-2(4-x)$; expand each piece: $(4-x)^2=16-8x+x^2$ and $-2(4-x)=-8+2x$: $$f=x^2+16-8x+x^2-2x-8+2x=2x^2-8x+8=2(x-2)^2$$ vertex $x=2$: $f=0$; corners: $2(0-2)^2=8$ and $2(4-2)^2=8$}
\stepdown
\stepbox{4. COMPARE ALL CANDIDATES}{$\{-2,\,-1,\,-1,\,0,\,0,\,8,\,8\}$: \keyres{abs min $-2$ at $(1,1)$}; \keyres{abs max $8$ at $(4,0)$ and $(0,4)$}}
\par\vspace{2pt}
Same hunt, one new move: \keyres{the sloped edge's equation substitutes in} exactly like an axis edge — it just leaves more algebra behind.

\filbreak \subsubsection{Worked: applied — open-top box, volume $4$, least material}
Minimize surface area $S=xy+2xz+2yz$ (base $+$ four sides, no top) subject to $xyz=4$.
\par\vspace{2pt}
\stepbox{1. OBJECTIVE $+$ CONSTRAINT}{minimize $S=xy+2xz+2yz$ \quad with \quad $xyz=4$}
\stepdown
\stepbox{2. SOLVE THE CONSTRAINT FOR $z$, SUBSTITUTE}{$xyz=4\Rightarrow z=\dfrac{4}{xy}$. Each $z$-term simplifies by cancellation:
$$S=xy+2x\cdot\frac{4}{xy}+2y\cdot\frac{4}{xy}=xy+\frac{8}{y}+\frac{8}{x}$$ \emph{\scriptsize(the $x$ cancels in the first fraction, the $y$ in the second — now an ordinary critical-point problem)}}
\stepdown
\stepbox{3. SOLVE THE SYSTEM}{$S_x=y-\dfrac{8}{x^2}=0\Rightarrow y=\dfrac{8}{x^2}$; \; put that into $S_y=x-\dfrac{8}{y^2}=0$:
$$x=\frac{8}{(8/x^2)^2}=\frac{8x^4}{64}=\frac{x^4}{8} \;\Rightarrow\; 8x=x^4 \;\Rightarrow\; x^3=8 \;\Rightarrow\; x=2$$
back-substitute: $y=\dfrac{8}{2^2}=2$, \quad $z=\dfrac{4}{2\cdot2}=\keyres{1}$}
\stepdown
\stepbox{4. CONFIRM IT'S A MIN, ANSWER THE QUESTION}{$S_{xx}=\dfrac{16}{x^3}=2,\; S_{yy}=2,\; S_{xy}=1$: \; $D=(2)(2)-1^2=3>0$, $S_{xx}>0$ \checkmark min. \quad $S=(2)(2)+\tfrac82+\tfrac82=4+4+4=\keyres{12}$}
\par\vspace{2pt}
\keyres{The applied recipe}: write the objective, \keyres{kill a variable with the constraint}, then it's the same critical-point machine — and step 4's $D$-check is what upgrades "a critical point" to "the minimum".

\filbreak \subsubsection{Worked: applied, flipped — given the material $S=12$, most volume}
Same box, roles swapped: now the \emph{surface area is the given} and volume is the objective. Maximize $V=xyz$ subject to $xy+2xz+2yz=12$.
\par\vspace{2pt}
\stepbox{1. OBJECTIVE $+$ CONSTRAINT — SPOT THE SWAP}{maximize $V=xyz$ \quad with \quad $xy+2xz+2yz=12$ \; \emph{\scriptsize("given $S=\ldots$" $\Rightarrow$ $S$ is the constraint now)}}
\stepdown
\stepbox{2. SOLVE THE CONSTRAINT FOR $z$}{$z$ appears linearly, so isolate it: move the $z$-free term, factor, divide:
$$2xz+2yz=12-xy \;\Rightarrow\; 2z(x+y)=12-xy \;\Rightarrow\; z=\dfrac{12-xy}{2(x+y)}$$}
\stepdown
\stepbox{3. SUBSTITUTE INTO THE OBJECTIVE}{$V=xy\cdot z=xy\cdot\dfrac{12-xy}{2(x+y)}=\dfrac{12xy-x^2y^2}{2(x+y)}$ — now a two-variable critical-point problem}
\stepdown
\stepbox{4. QUOTIENT RULE FOR $V_x$ (freeze $y$)}{top$\,'=12y-2xy^2$, \; bottom$\,'=2$:
$$V_x=\frac{(12y-2xy^2)\cdot2(x+y)-(12xy-x^2y^2)\cdot 2}{[2(x+y)]^2}$$
$$=\frac{(12y-2xy^2)(x+y)-(12xy-x^2y^2)}{2(x+y)^2}$$}
\stepdown
\stepbox{5. SIMPLIFY THE NUMERATOR}{expand: $(12y-2xy^2)(x+y)=12xy+12y^2-2x^2y^2-2xy^3$; subtract $12xy-x^2y^2$:
$$12y^2-x^2y^2-2xy^3=y^2(12-x^2-2xy) \;\Rightarrow\; V_x=\frac{y^2(12-x^2-2xy)}{2(x+y)^2}$$}
\stepdown
\stepbox{6. $V_y$ BY SYMMETRY, SET BOTH TO ZERO}{$V$ is unchanged under $x\leftrightarrow y$, so $V_y=\dfrac{x^2(12-y^2-2xy)}{2(x+y)^2}$. With $x,y>0$ the $y^2,x^2$ factors can't vanish — the zeros live in the parentheses: $$12-x^2-2xy=0 \qquad\text{and}\qquad 12-y^2-2xy=0$$}
\stepdown
\stepbox{7. SUBTRACT THE TWO EQUATIONS}{$(12-x^2-2xy)-(12-y^2-2xy)=y^2-x^2=0 \;\Rightarrow\; x=y$ (both positive). Substitute $y=x$ into either: $12-x^2-2x^2=0 \Rightarrow x^2=4 \Rightarrow \keyres{x=y=2}$; then step 2's formula: $z=\dfrac{12-4}{2(2+2)}=\keyres{1}$}
\stepdown
\stepbox{8. CONFIRM IT'S A MAX — BOUNDARY ARGUMENT}{$V\to0$ whenever the box degenerates ($x\to0$, $y\to0$, or $xy\to12$ so $z\to0$); one interior critical point $\Rightarrow$ it must be the max: $V=2\cdot2\cdot1=\keyres{4}$}
\par\vspace{2pt}
\keyres{The aha}: it's \keyres{the same box} — $V=4$ needed $S=12$, and $S=12$ buys $V=4$. Min-material and max-volume are \keyres{dual problems}: the winning shape (square base, height half the base) is identical. Only which quantity is pinned changes. Working notes:
\begin{itemize}
\item Eliminate \keyres{whichever variable the constraint is linear in}.
\item Symmetric equations in $x,y$: \keyres{subtract them} ($\Rightarrow x=y$) instead of grinding substitutions.
\item The $D$-test isn't the only closer: \keyres{when every boundary kills the objective, the lone critical point wins by elimination}.
\end{itemize}

\filbreak \subsubsection{Worked: applied — closest point on a plane}
Find the point on $x+y+z=1$ nearest the origin:
\par\vspace{2pt}
\stepbox{1. MINIMIZE $d^2$, NOT $d$}{same minimizer, no square root: $g=x^2+y^2+z^2$}
\stepdown
\stepbox{2. KILL A VARIABLE}{$z=1-x-y$: \; $g(x,y)=x^2+y^2+(1-x-y)^2$}
\stepdown
\stepbox{3. SOLVE THE SYSTEM}{$g_x=2x-2(1-x-y)=0\Rightarrow x=1-x-y$; \quad $g_y=2y-2(1-x-y)=0\Rightarrow y=1-x-y$. Same right side $\Rightarrow$ $x=y$; then $x=1-x-x=1-2x\Rightarrow3x=1\Rightarrow x=\tfrac13$, so $y=\tfrac13$, \; $z=1-\tfrac13-\tfrac13=\tfrac13$}
\stepdown
\stepbox{4. ANSWER \& FORMULA CHECK}{point $\keyres{(\tfrac13,\tfrac13,\tfrac13)}$, with
$$d=\sqrt{3\cdot\big(\tfrac13\big)^2}=\sqrt{\tfrac13}=\tfrac{1}{\sqrt3}=\tfrac{\sqrt3}{3}$$
— the point-to-plane formula agrees: $\frac{|0+0+0-1|}{\sqrt3}$ \checkmark}

\filbreak \subsubsection{Lagrange multipliers — the no-elimination route}
When the constraint won't solve cleanly for a variable, don't eliminate — \keyres{align the gradients}: at a constrained extremum the level curve of $f$ kisses the constraint $g=c$, so
$$\nabla f=\lambda\,\nabla g \qquad \text{plus the constraint } g=c$$
One equation per variable $+$ the constraint; $\lambda$ is bookkeeping, \warn{not} part of the answer.

\filbreak \subsubsection{Worked: the box again — minimize $S$ with $xyz=4$}
\stepbox{1. BUILD THE SYSTEM}{$\nabla S=\langle y+2z,\ x+2z,\ 2x+2y\rangle$, \; $\nabla g=\langle yz,\ xz,\ xy\rangle$. Component by component, plus the constraint:
$$y+2z=\lambda yz, \qquad x+2z=\lambda xz, \qquad 2x+2y=\lambda xy, \qquad xyz=4$$}
\stepdown
\stepbox{2. KILL $\lambda$ — MULTIPLY EACH BY ITS VARIABLE}{each right side becomes $\lambda xyz=4\lambda$: \; $x(y+2z)=y(x+2z)=z(2x+2y)=4\lambda$; expand the left sides:
$$xy+2xz \;=\; xy+2yz \;=\; 2xz+2yz$$}
\stepdown
\stepbox{3. READ OFF THE PROPORTIONS}{first pair: cancel $xy$: $2xz=2yz\Rightarrow x=y$ (divide by $2z>0$). \; First vs third: cancel $2xz$: $xy=2yz\Rightarrow x=2z$ (divide by $y>0$)}
\stepdown
\stepbox{4. CONSTRAINT CLOSES IT}{$x=y=2z$: \; $(2z)(2z)z=4z^3=4\Rightarrow z^3=1\Rightarrow z=1$, so $x=y=2$. \; $S=(2)(2)+2(2)(1)+2(2)(1)=4+4+4=\keyres{12}$ — \keyres{same box as substitution}, no variable ever eliminated}

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Both partials zero at the \emph{same} point} — solve the simultaneous system. A zero of $f_x$ alone is nothing.
\item \warn{When both partials factor, enumerate every case}: one root from each factored equation, all combinations. Pairings that contradict are \keyres{empty} — write that down, or you will invent a critical point that does not exist.
\item A never-zero factor ($e^{\,\text{anything}}$, $x^2+1$) \keyres{cannot supply a root} — divide it out, but \warn{say why it is nonzero}.
\item \warn{You do not need $f$ to classify}: the test reads only $f_{xx}$, $f_{yy}$, $f_{xy}$. Given just $f_x$ and $f_y$, report \keyres{locations and types} — there are no heights to report.
\item \warn{$D<0$ is a definitive saddle}, not a failed test; \keyres{$D=0$ is the only inconclusive case}.
\item \warn{The mixed partial is squared}: $-(f_{xy})^2$ always subtracts — forgetting the square (or the sign) flips classifications.
\item \warn{Consult $f_{xx}$ only after $D>0$} — its sign means nothing at a saddle.
\item \warn{Absolute extrema: never skip the boundary or its corners} — the interior critical point often loses (it did above).
\item \warn{Read which quantity is \emph{given}}: "volume must be $4$" $\Rightarrow$ $V$ is the constraint, minimize $S$; "you have $12$ of material" $\Rightarrow$ $S$ is the constraint, maximize $V$. Same recipe either way — only the roles swap.
\item \warn{Answer with the value \emph{and} the location}: "max $=9$ at $(3,0)$" — coordinates alone aren't the max.
\item Critical points also occur where a partial is \warn{undefined} — the cone's tip $z=\sqrt{x^2+y^2}$ has a min with no horizontal tangent plane.
\end{itemize}

\filbreak \subsection{double integrals — rectangular regions}
Calc 2's definite integral summed \keyres{skinny rectangles} under a curve. One dimension up: chop the rectangle $R=[a,b]\times[c,d]$ into little cells of area $\Delta A$, sample $f$ in each, and sum the \keyres{column volumes} $f\cdot\Delta A$:
$$\iint_R f(x,y)\,dA=\lim_{m,n\to\infty}\sum_{i=1}^{m}\sum_{j=1}^{n}f(x_{ij}^*,y_{ij}^*)\,\Delta A$$
When $f\geq0$ this is the \keyres{volume under the surface} $z=f(x,y)$ over $R$; where $f<0$ the contribution counts \warn{negative} — signed volume, the same bookkeeping as signed area.

\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Iterate} — write it as two nested single integrals \emph{\scriptsize(Fubini: over a rectangle the order is \keyres{free})}.\\
\textbf{2.} \term{Inner} — \keyres{freeze the outer variable}; treat it like the constant $5$.\\
\textbf{3.} \term{Outer} — now ordinary Calc 1.\\
\textbf{4.} \term{Sanity ladder} — each pass kills one variable. The answer is a \keyres{pure number}.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — pick the order}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & $f$ \term{factors} as $g(x)h(y)$ \keyres{and} $R$ is a rectangle $\Rightarrow$ split into a \keyres{product of two singles}. Fastest route. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & $f$ \warn{does not factor} ($\sin(x+y)$, $x+2y$) $\Rightarrow$ nested passes, ordinary way. \keyres{Exception}: $e^{x+y}=e^xe^y$ does factor. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & both orders legal, \keyres{one is far easier} $\Rightarrow$ scout ten seconds first. For $xe^{xy}$: $dx$ first needs parts; $dy$ first, $\frac{\partial}{\partial y}e^{xy}=xe^{xy}$ — the integrand is \keyres{already somebody's derivative}. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{The only thing you solve here}: "does $f$ literally equal $g(x)$ times $h(y)$?" Everything else is Calc 1 twice.

\filbreak \subsubsection{Fubini's theorem — the workhorse}
Nobody evaluates that limit. Fubini converts the double integral into two \keyres{single integrals run in sequence} — an \term{iterated integral} — and over a rectangle the order is a free choice:
$$\iint_R f\,dA=\int_a^b\!\!\int_c^d f(x,y)\,dy\,dx=\int_c^d\!\!\int_a^b f(x,y)\,dx\,dy$$
The mechanic is the partial-derivative aha run in reverse: during the inner integral the \keyres{outer variable is frozen} — treat it like the constant $5$. Work \keyres{inside out}; each pass is ordinary one-variable calculus.

\filbreak \subsubsection{Worked: $\iint_R xy^2\,dA$, \; $R=[0,3]\times[1,2]$}
\par\vspace{2pt}
\stepbox{1. WRITE IT ITERATED — PICK $dy\,dx$}{$\displaystyle\int_0^3\!\!\int_1^2 xy^2\,dy\,dx$ \; \emph{\scriptsize(inner integral matches the inner differential: $y$ runs $1\to2$)}}
\stepdown
\stepbox{2. INNER — FREEZE $x$}{$x$ is a constant here, so it factors out and rides along:
$$\int_1^2 xy^2\,dy=x\Big[\frac{y^3}{3}\Big]_1^2=x\left(\frac{8}{3}-\frac{1}{3}\right)=\frac{7}{3}x$$}
\stepdown
\stepbox{3. OUTER — NOW PURE CALC 1}{$$\int_0^3 \frac{7}{3}x\,dx=\frac{7}{3}\Big[\frac{x^2}{2}\Big]_0^3=\frac{7}{3}\left(\frac{9}{2}-0\right)=\keyres{\frac{21}{2}}$$}
\par\vspace{2pt}
Note the \keyres{sanity ladder}: after the inner pass, $y$ is gone. After the outer pass, $x$ is gone — the answer is a \keyres{pure number}. A surviving variable means a limit never got plugged in.

\filbreak \subsubsection{Worked (dual): same integral, other order — Fubini verified}
\par\vspace{2pt}
\stepbox{1. FLIP TO $dx\,dy$}{$\displaystyle\int_1^2\!\!\int_0^3 xy^2\,dx\,dy$ \; \emph{\scriptsize(limits travel with their variable: $x$ still runs $0\to3$, $y$ still $1\to2$)}}
\stepdown
\stepbox{2. INNER — NOW $y$ IS FROZEN}{$$\int_0^3 xy^2\,dx=y^2\Big[\frac{x^2}{2}\Big]_0^3=y^2\left(\frac{9}{2}-0\right)=\frac{9}{2}y^2$$}
\stepdown
\stepbox{3. OUTER}{$$\int_1^2 \frac{9}{2}y^2\,dy=\frac{9}{2}\Big[\frac{y^3}{3}\Big]_1^2=\frac{9}{2}\left(\frac{8}{3}-\frac{1}{3}\right)=\frac{9}{2}\cdot\frac{7}{3}=\keyres{\frac{21}{2}}\;\checkmark$$}
\par\vspace{2pt}
\keyres{The aha}: both orders land on $\frac{21}{2}$ — that's Fubini in action, and re-running the other order is a \keyres{built-in answer check}.

\filbreak \subsubsection{Separable shortcut — when $f$ factors over a rectangle}
If $f(x,y)=g(x)\,h(y)$ \emph{and} the region is a rectangle, the iterated integral splits into a \keyres{product of two singles}:
$$\iint_R g(x)\,h(y)\,dA=\left(\int_a^b g(x)\,dx\right)\!\left(\int_c^d h(y)\,dy\right)$$
Route three for the same example — $xy^2$ factors as $(x)(y^2)$:
$$\left(\int_0^3 x\,dx\right)\!\left(\int_1^2 y^2\,dy\right)=\frac{9}{2}\cdot\frac{7}{3}=\frac{21}{2}\;\checkmark$$
\warn{Only if it factors}: $x+2y$ is a sum, not a product — no shortcut. And \warn{only over a rectangle}: curved limits chain the variables together (next section).

\filbreak \subsubsection{Worked: a \emph{sum} inside the function — $\iint_R\sin(x+y)\,dA$, \; $R=\left[0,\frac{\pi}{2}\right]^2$}
The shortcut above needs a \keyres{product}. $\sin(x+y)$ has a sum \emph{inside} a function, which is the most common way to be tempted into it.
\par\vspace{2pt}
\stepbox{1. CHECK THE SHORTCUT — IT FAILS}{is $\sin(x+y)=g(x)h(y)$? \; \warn{No.} And the two standard misreads:
$$\sin(x+y)\neq\sin x\sin y \qquad \sin(x+y)\neq\sin x+\sin y$$
\emph{\scriptsize(the real identity is $\sin x\cos y+\cos x\sin y$ — a sum of two products, still not one product)}
\par\vspace{1pt}
So run the passes \keyres{nested}, the ordinary way.}
\stepdown
\stepbox{2. INNER — FREEZE $x$, SUBSTITUTE MENTALLY}{with $x$ frozen, $\frac{\partial}{\partial y}\left[-\cos(x+y)\right]=\sin(x+y)$:
$$\int_0^{\pi/2}\!\!\sin(x+y)\,dy=\Big[-\cos(x+y)\Big]_{y=0}^{y=\pi/2}=-\cos\!\left(x+\frac{\pi}{2}\right)+\cos x$$}
\stepdown
\stepbox{3. SIMPLIFY WITH A SHIFT IDENTITY}{$\cos\!\left(x+\frac{\pi}{2}\right)=-\sin x$, so
$$-\left(-\sin x\right)+\cos x=\keyres{\sin x+\cos x}$$
\emph{\scriptsize(the $x$ survived the inner pass — as it must, it was frozen, not deleted)}}
\stepdown
\stepbox{4. OUTER}{$$\int_0^{\pi/2}\!\left(\sin x+\cos x\right)dx=\Big[-\cos x+\sin x\Big]_0^{\pi/2}=\left(-0+1\right)-\left(-1+0\right)=1+1=\keyres{2}$$}
\par\vspace{2pt}
\filbreak \subsubsection{Worked (dual): the look-alike that \emph{does} factor}
Same rectangle, same trig flavour, opposite verdict: $\displaystyle\iint_R \sin x\cos y\,dA$.
\par\vspace{2pt}
\stepbox{1. CHECK THE SHORTCUT — IT PASSES}{$\sin x\cos y=g(x)h(y)$ with $g=\sin x$, $h=\cos y$ \checkmark, and $R$ is a rectangle \checkmark $\Rightarrow$ split into a product of singles}
\stepdown
\stepbox{2. TWO INDEPENDENT ONE-VARIABLE INTEGRALS}{$$\left(\int_0^{\pi/2}\!\sin x\,dx\right)\!\left(\int_0^{\pi/2}\!\cos y\,dy\right)=\Big[-\cos x\Big]_0^{\pi/2}\cdot\Big[\sin y\Big]_0^{\pi/2}$$
$$=\Big(0-(-1)\Big)\cdot\Big(1-0\Big)=1\cdot1=\keyres{1}$$}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.0cm, height=3.6cm, view={35}{26},
xmin=0, xmax=1.6, ymin=0, ymax=1.6, zmin=0, zmax=1.05, clip=false,
colormap={wire}{color=(warnHi) color=(warnHi)}]
\addplot3[mesh, domain=0:1.5708, y domain=0:1.5708, samples=13, samples y=13, z buffer=sort]
  {sin(deg(x+y))};
\node[font=\tiny, text=warnHi, anchor=south] at (axis cs:0.8,0.8,1.06) {$\sin(x{+}y)$};
\end{axis}
\end{tikzpicture}
\hspace{2pt}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.0cm, height=3.6cm, view={35}{26},
xmin=0, xmax=1.6, ymin=0, ymax=1.6, zmin=0, zmax=1.05, clip=false,
colormap={wire}{color=(keyHi) color=(keyHi)}]
\addplot3[mesh, domain=0:1.5708, y domain=0:1.5708, samples=13, samples y=13, z buffer=sort]
  {sin(deg(x))*cos(deg(y))};
\node[font=\tiny, text=keyHi, anchor=south] at (axis cs:0.8,0.8,1.06) {$\sin x\cos y$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize two different surfaces over the same square: the {\color{warnHi}sum} runs a diagonal ridge and \keyres{cannot} be split. The {\color{keyHi}product} is one curve swept by another, so it can}
\end{center}
\keyres{The aha}: the test is \warn{not} "does the formula look separable" — it is "\keyres{is $f$ literally $g(x)$ times $h(y)$}". A sum \emph{inside} a function ($\sin(x+y)$, $e^{x+y}$, $\sqrt{x+y}$) almost never factors — though $e^{x+y}=e^xe^y$ is the one that \keyres{does}, because that exponent law exists and no other function has one. When in doubt, skip the shortcut: nested passes always work.

\filbreak \subsubsection{Average value over a rectangle}
Same shape as Calc 2's average value, with area standing in for length:
$$f_{\text{avg}}=\frac{1}{\text{Area}(R)}\iint_R f\,dA$$
For the first worked example: $\text{Area}(R)=(3-0)(2-1)=3$, so $f_{\text{avg}}=\dfrac{1}{3}\cdot\dfrac{21}{2}=\keyres{\dfrac{7}{2}}$.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Work inside out} — the inner integral belongs to the \keyres{inner differential}, and its limits belong to that variable.
\item \warn{The frozen variable is a constant, not zero}: while integrating in $y$, an $x$ factors out and survives — it doesn't vanish.
\item \warn{A variable in the final answer} = a limit that never got substituted — run the sanity ladder after each pass.
\item \warn{The separable shortcut needs both conditions}: a factored integrand \emph{and} a rectangle. A sum \emph{inside} a function ($\sin(x+y)$, $\sqrt{x+y}$) does not factor — \keyres{except $e^{x+y}=e^xe^y$}, the one function with an exponent law. Run nested passes when unsure.
\item Regions where $f<0$ \warn{subtract} — $\iint_R f\,dA$ is signed volume, exactly like signed area in Calc 2.
\end{itemize}

\filbreak \subsection{double integrals — general regions}
Real regions are bounded by \keyres{curves}, not four straight fences. The fix: keep the outer limits \keyres{numbers}, and let the \keyres{inner limits be functions of the outer variable} — the slice length adapts as it sweeps.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} the region. \warn{Limits come from the picture}, never from the integrand.\\
\textbf{2.} \term{Pick a slice direction} — vertical (Type I) or horizontal (Type II).\\
\textbf{3.} \term{Run one test slice}: where does it \keyres{enter}, where does it \keyres{exit}? Those are the inner limits.\\
\textbf{4.} \term{How far do slices sweep?} That range is the outer limits — \keyres{numbers}.\\
\textbf{5.} \term{Integrate inside out.}}
\par\vspace{2pt}
\term{Iron rule}: outer limits are constants. Inner limits may carry the outer variable — \warn{never the reverse}.

\filbreak \subsubsection{Step 2 decoded — three region shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Type I}, vertical slices, $dy\,dx$: \; \keyres{$a\leq x\leq b$}, \; \keyres{$g_1(x)\leq y\leq g_2(x)$} — bottom curve up to top curve \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{Type II}, horizontal slices, $dx\,dy$: \; \keyres{$c\leq y\leq d$}, \; \keyres{$h_1(y)\leq x\leq h_2(y)$} — left curve across to right curve \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{must split} — the entering or exiting curve \warn{changes formula} partway. Two integrals, added. \\
\end{tabular}}
\par\vspace{2pt}
Every region is \keyres{both} A and B, but rarely at the same price. Run a test slice \keyres{both ways} and count how many times the boundary formula changes: \keyres{that count is the number of integrals}.
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45},
width=5.8cm, height=5.4cm,
xmin=-0.35, xmax=2.75, ymin=-0.5, ymax=4.7,
xtick={2}, ytick={4}, tick label style={font=\tiny, text=white!70},
xlabel={$x$}, ylabel={$y$}, label style={font=\tiny, text=white!80}]
\addplot[name path=top, uHi, thick, domain=0:2, samples=40] {2*x};
\addplot[name path=bot, duHi, thick, domain=0:2.1, samples=40] {x^2};
\addplot[termHi, opacity=0.18] fill between[of=top and bot, soft clip={domain=0:2}];
\addplot[keyHi, very thick] coordinates {(0.9,0.81) (0.9,1.8)};
\addplot[warnHi, very thick] coordinates {(1.5,3) (1.7321,3)};
\node[font=\tiny, text=uHi, anchor=east] at (axis cs:0.52,1.9) {$y=2x$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:2.12,3.6) {$y=x^2$};
\node[font=\tiny, text=keyHi, anchor=north] at (axis cs:0.9,0.68) {$x^2\to2x$};
\node[font=\tiny, text=warnHi, anchor=west] at (axis cs:1.8,3) {$\frac{y}{2}\to\sqrt{y}$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize one region, two descriptions: a {\color{keyHi}vertical slice} enters at $y=x^2$, exits at $y=2x$ (Type I); a {\color{warnHi}horizontal slice} enters at $x=\frac{y}{2}$, exits at $x=\sqrt{y}$ (Type II)}
\end{center}

\filbreak \subsubsection{The four things you actually \emph{solve}}
\stepbox{1. WHERE DO THE CURVES MEET? — OUTER LIMITS}{set them equal and solve. \; $x^2=2x \Rightarrow x(x-2)=0 \Rightarrow \keyres{x=0,2}$ \; $\cdot$ \; $x^2=2-x^2 \Rightarrow \keyres{x=\pm1}$}
\stepdown
\stepbox{2. WHICH IS TOP / WHICH IS LEFT?}{\keyres{Plug in one interior point.} \; at $x=1$: $2x=2$ vs $x^2=1$ $\Rightarrow$ the line is on top: $x^2\leq y\leq2x$}
\stepdown
\stepbox{3. SOLVE EACH CURVE FOR THE \emph{OTHER} VARIABLE (TYPE II)}{$y=x^2 \Rightarrow \keyres{x=\sqrt{y}}$ \; $\cdot$ \; $y=2x \Rightarrow \keyres{x=\frac{y}{2}}$ \; $\cdot$ \; $y=2-x^2 \Rightarrow \keyres{x=\pm\sqrt{2-y}}$
\par\vspace{1pt}
\warn{Both roots survive} if the region straddles the axis.}
\stepdown
\stepbox{4. DOES THE BOUNDARY CHANGE FORMULA?}{run a test slice at \keyres{two different heights}. If they enter/exit on different curves, \warn{split there} — and the split value is where the two boundary curves cross.}

\filbreak \subsubsection{Worked (A $\to$ B): $\iint_D xy\,dA$, \; $D$ between $y=x^2$ and $y=2x$}
\stepbox{1--2. MEET, THEN ORDER \emph{\scriptsize(things 1, 2)}}{$x^2=2x \Rightarrow x=0,2$; \; at $x=1$ the line wins $\Rightarrow$ \keyres{$x^2\leq y\leq2x$}, \; \keyres{$0\leq x\leq2$}}
\stepdown
\stepbox{3. TYPE I — INNER PLUGS THE \emph{CURVES} INTO $y$}{$$\int_{x^2}^{2x}\!xy\,dy=x\Big[\frac{y^2}{2}\Big]_{x^2}^{2x}=x\left(2x^2-\frac{x^4}{2}\right)=2x^3-\frac{x^5}{2}$$
$$\int_0^2\!\left(2x^3-\frac{x^5}{2}\right)dx=\Big[\frac{x^4}{2}-\frac{x^6}{12}\Big]_0^2=8-\frac{16}{3}=\keyres{\frac83}$$}
\stepdown
\stepbox{4. TYPE II — RE-DERIVE, DON'T RE-LETTER \emph{\scriptsize(thing 3)}}{$x=\frac{y}{2}$ enters, $x=\sqrt{y}$ exits \emph{\scriptsize(test $y=1$: $\frac12<1$)}, \; $y$ spans $0\to4$:
$$\int_0^4\!\!\int_{y/2}^{\sqrt{y}}\!xy\,dx\,dy=\int_0^4\! y\left(\frac{y}{2}-\frac{y^2}{8}\right)dy=\Big[\frac{y^3}{6}-\frac{y^4}{32}\Big]_0^4=\frac{32}{3}-8=\keyres{\frac83}\;\checkmark$$}
\par\vspace{2pt}
\keyres{The aha}: the new bounds are \warn{not the old ones with letters swapped} — $[0,2],[x^2,2x]$ became $[0,4],[\frac{y}{2},\sqrt{y}]$. That re-derivation \keyres{is} the skill.
\par\vspace{2pt}
\term{Area}: set $f=1$ and the inner pass returns $\text{top}-\text{bottom}$ — Calc 2's area-between-curves \keyres{was} a double integral all along. Here $\int_0^2(2x-x^2)dx=\frac43$.

\filbreak \subsubsection{Worked: swap the order to rescue a stuck integral — $\displaystyle\int_0^1\!\!\int_y^1 e^{x^2}dx\,dy$}
\stepbox{1. WHY IT'S STUCK}{$\int e^{x^2}dx$ has \warn{no elementary antiderivative} — the inner integral cannot even start}
\stepdown
\stepbox{2. READ THE REGION OFF THE LIMITS}{$y\leq x\leq1$, $0\leq y\leq1$: the triangle $(0,0),(1,0),(1,1)$ — the half of the unit square \keyres{below $y=x$}}
\stepdown
\stepbox{3. RE-SLICE VERTICALLY, THEN INTEGRATE}{sweep $x:0\to1$; each slice runs $y=0$ up to $y=x$:
$$\int_0^1\!\!\int_0^x\! e^{x^2}dy\,dx=\int_0^1\! e^{x^2}\Big[y\Big]_0^x dx=\int_0^1\! \keyres{x}\,e^{x^2}dx$$
$u=x^2$, $du=2x\,dx$: \; $=\frac12\Big[e^u\Big]_0^1=\keyres{\dfrac{e-1}{2}}$}
\par\vspace{2pt}
\keyres{The aha}: the swap \keyres{manufactured the missing $x$} the $u$-sub needed. Exam signals: \keyres{$e^{x^2}$, $\sin(x^2)$, $\cos(x^2)$} as the inner integrand $\Rightarrow$ flip the order.

\filbreak \subsubsection{Worked (C): reversing the order forces a \emph{split}}
$D$ between $y=x^2$ and $y=2-x^2$. One direction needs \keyres{one} integral, the other \keyres{two}.
\stepbox{1--2. MEET, THEN ORDER}{$x^2=2-x^2 \Rightarrow x=\pm1$ \emph{\scriptsize(both give $y=1$)}. \; Type I: \keyres{$x^2\leq y\leq2-x^2$, $-1\leq x\leq1$} — one integral, nothing to split}
\stepdown
\stepbox{3. TEST SLICE AT TWO HEIGHTS \emph{\scriptsize(thing 4)}}{at $y=\frac12$ the slice enters and exits on \keyres{$y=x^2$}; \; at $y=\frac32$ on \keyres{$y=2-x^2$} $\Rightarrow$ \warn{split at $y=1$}}
\stepdown
\stepbox{4. SOLVE EACH PIECE FOR $x$ \emph{\scriptsize(thing 3)}}{$y=x^2 \Rightarrow x=\pm\sqrt{y}$ on $0\leq y\leq1$; \quad $y=2-x^2 \Rightarrow x=\pm\sqrt{2-y}$ on $1\leq y\leq2$
$$\int_0^1\!\!\int_{-\sqrt{y}}^{\sqrt{y}}\! f\,dx\,dy \;+\; \int_1^2\!\!\int_{-\sqrt{2-y}}^{\sqrt{2-y}}\! f\,dx\,dy$$}
\stepdown
\stepbox{5. CHECK WITH $f=1$ — BOTH ROUTES GIVE THE AREA}{Type I: $\displaystyle\int_{-1}^{1}\!\left(2-2x^2\right)dx=\Big[2x-\frac{2x^3}{3}\Big]_{-1}^{1}=\frac83$
\par\vspace{1pt}
Type II: $\displaystyle\int_0^1\!2\sqrt{y}\,dy+\int_1^2\!2\sqrt{2-y}\,dy=\frac43+\frac43=\keyres{\frac83}\;\checkmark$}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=center, axis line style={white!45}, clip=false,
width=5.9cm, height=5.2cm,
xmin=-1.6, xmax=1.6, ymin=-0.3, ymax=2.35,
xtick={-1,1}, ytick={2}, tick label style={font=\tiny, text=white!70},
xlabel={$x$}, ylabel={$y$}, label style={font=\tiny, text=white!80}]
\addplot[name path=top, uHi, thick, domain=-1.35:1.35, samples=60] {2-x^2};
\addplot[name path=bot, duHi, thick, domain=-1.35:1.35, samples=60] {x^2};
\addplot[termHi, opacity=0.18] fill between[of=top and bot, soft clip={domain=-1:1}];
\addplot[white!45, dashed, domain=-1.5:1.5, samples=2] {1};
\addplot[keyHi, very thick] coordinates {(0.55,0.3025) (0.55,1.6975)};
\addplot[warnHi, very thick] coordinates {(-0.7071,0.5) (0.7071,0.5)};
\addplot[warnHi, very thick] coordinates {(-0.7071,1.5) (0.7071,1.5)};
\node[font=\tiny, text=uHi, anchor=south] at (axis cs:0,2.04) {$y=2-x^2$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:1.28,1.72) {$y=x^2$};
\node[font=\tiny, text=warnHi, anchor=west] at (axis cs:0.75,0.5) {$\pm\sqrt{y}$};
\node[font=\tiny, text=warnHi, anchor=west] at (axis cs:0.75,1.5) {$\pm\sqrt{2-y}$};
\node[font=\tiny, text=white!70, anchor=east] at (axis cs:-1.05,1.16) {split at $y=1$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the {\color{keyHi}vertical slice} runs $x^2\to2-x^2$ everywhere — \keyres{one} integral. The {\color{warnHi}horizontal slices} change formula at $y=1$ — \keyres{two} integrals}
\end{center}

\filbreak \subsubsection{Worked: roof $=$ floor sets the shadow — in Cartesian}
Below the plane $z=x+2$, above the cylinder $z=x^2$, between $y=0$ and $y=2$. \keyres{Only two of the four shadow edges are stated.}
\stepbox{1. THE SURFACES SUPPLY THE $x$-RANGE \emph{\scriptsize(thing 1)}}{$x+2=x^2 \Rightarrow x^2-x-2=0 \Rightarrow (x-2)(x+1)=0 \Rightarrow \keyres{x=-1,\,2}$}
\stepdown
\stepbox{2. THE GIVEN PLANES SUPPLY THE $y$-RANGE}{\keyres{$0\leq y\leq2$}, handed over directly. \; \emph{\scriptsize(The shadow is assembled from \keyres{two sources} — read every boundary and ask which job it does.)}}
\stepdown
\stepbox{3. WHICH IS ROOF \emph{\scriptsize(thing 2)}, THEN INTEGRATE}{at $x=0$: plane $=2$, cylinder $=0$ $\Rightarrow$ height $=(x+2)-x^2=2+x-x^2$
$$V=\int_{-1}^{2}\!\!\int_0^2\!\left(2+x-x^2\right)dy\,dx=2\Big[2x+\frac{x^2}{2}-\frac{x^3}{3}\Big]_{-1}^{2}=2\left(\frac{10}{3}+\frac76\right)=2\cdot\frac{27}{6}=\keyres{9}$$}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=5.4cm, height=4.4cm, view={56}{18},
xmin=-1.3, xmax=2.3, ymin=-0.3, ymax=2.3, zmin=-0.2, zmax=4.4, clip=false]
\addplot3[mesh, uHi, domain=-1:2, y domain=0:2, samples=13, samples y=4, z buffer=sort] {x^2};
\addplot3[mesh, duHi, domain=-1:2, y domain=0:2, samples=13, samples y=4, z buffer=sort] {x+2};
\addplot3[keyHi, very thick] coordinates {(-1,0,1) (-1,2,1)};
\addplot3[keyHi, very thick] coordinates {(2,0,4) (2,2,4)};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:2.05,2.2,4.2) {$z=x+2$};
\node[font=\tiny, text=uHi, anchor=east] at (axis cs:-1.2,0,1.6) {$z=x^2$};
\node[font=\tiny, text=keyHi, anchor=east] at (axis cs:-1.1,1,0.75) {$x={-}1$};
\node[font=\tiny, text=keyHi, anchor=west] at (axis cs:2.1,1,3.6) {$x=2$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the {\color{duHi}plane} and the {\color{uHi}cylinder} pinch shut on the two {\color{keyHi}green edges} — those, not the problem statement, supply the $x$-limits}
\end{center}

\filbreak \subsubsection{Average value over \emph{any} region}
The rectangle version above divides by a side-length product, which only works for a rectangle. The general statement divides by the region's own measure:
$$f_{\text{avg}}=\frac{1}{\text{Area}(D)}\iint_D f\,dA \qquad\qquad f_{\text{avg}}=\frac{1}{\text{Vol}(E)}\iiint_E f\,dV$$
\keyres{The denominator is itself an integral you already know}: $\text{Area}(D)=\iint_D 1\,dA$ and $\text{Vol}(E)=\iiint_E 1\,dV$ — the $f=1$ aha. So this is \keyres{two integrals over the same region}, not a new technique.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Set up the region once.} The limits serve both integrals.\\
\textbf{2.} \term{Integrate $f$} over it — the numerator.\\
\textbf{3.} \term{Integrate $1$} over it — the denominator.\\
\textbf{4.} \term{Divide.}}
\par\vspace{2pt}
\filbreak \subsubsection{Worked: average of $f=xy$ over the region between $y=x^2$ and $y=2x$}
The running region of this section. Both pieces are already computed above — this only assembles them.
\par\vspace{2pt}
\stepbox{1. NUMERATOR — WORKED ABOVE}{$\displaystyle\iint_D xy\,dA=\keyres{\frac83}$ \; \emph{\scriptsize(the Type I / Type II example)}}
\stepdown
\stepbox{2. DENOMINATOR — ALSO WORKED ABOVE}{$\displaystyle\text{Area}(D)=\iint_D 1\,dA=\int_0^2\left(2x-x^2\right)dx=\keyres{\frac43}$}
\stepdown
\stepbox{3. DIVIDE}{$$f_{\text{avg}}=\frac{8/3}{4/3}=\frac83\cdot\frac34=\keyres{2}$$}
\par\vspace{2pt}
Sanity: $f=xy$ ranges from $0$ up to $8$ on this region \emph{\scriptsize(at the corner $(2,4)$)}, so an average of $2$ sits sensibly inside that span. \warn{An average outside the function's range means the denominator is wrong} — usually a region measure computed as if it were a rectangle.

\filbreak \subsubsection{Common pitfalls}
\begin{itemize}
\item \warn{Outer limits must be numbers} — an outer limit carrying a variable leaves that variable alive in the "answer".
\item \warn{Match limits to the differential order}: $dy\,dx$ means the inner limits are $y$-curves $g_1(x)\to g_2(x)$.
\item \warn{Swapping the order $\neq$ swapping the symbols} — re-derive from the sketch every time \emph{\scriptsize(thing 3)}.
\item If a boundary \warn{changes formula mid-run}, split and add — one curve per limit slot \emph{\scriptsize(thing 4)}.
\item \warn{A stuck inner integral is a hint, not a wall}: $e^{x^2}$-type integrands are order-swap problems by design.
\item \keyres{Sketch first, always} — every limit above came from the picture, none from the integrand.
\end{itemize}

\filbreak \subsection{double integrals — polar coordinates}
Circular regions fight Cartesian limits ($\sqrt{a^2-x^2}$ everywhere) but \keyres{describe themselves} in polar. Conversion kit: \; $x=r\cos\theta$, \; $y=r\sin\theta$, \; $x^2+y^2=r^2$, \; $\tan\theta=\frac{y}{x}$. One new rule — the area element gains a \keyres{factor of $r$}:
$$\iint_R f(x,y)\,dA=\int_{\alpha}^{\beta}\!\!\int_{a}^{b} f(r\cos\theta,\,r\sin\theta)\;\keyres{r}\,dr\,d\theta \qquad \keyres{dA=r\,dr\,d\theta}$$
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Region} $\to$ polar: \keyres{rays give $\theta$}, \keyres{arcs and curves give $r$}.\\
\textbf{2.} \term{Integrand} $\to$ polar: every $x$ and $y$, \warn{no exceptions}.\\
\textbf{3.} \term{Attach the $r$} — $dA=r\,dr\,d\theta$, even when the integrand never asked.\\
\textbf{4.} \term{Integrate inside out}, $r$ first.}
\par\vspace{2pt}
\term{Iron rule, polar edition}: outer ($\theta$) limits are \keyres{numbers}; the inner ($r$) limit may carry $\theta$ — never the reverse.

\filbreak \subsubsection{Step 1 decoded — three region shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{polar rectangle} — two arcs, two rays $\Rightarrow$ \keyres{all four limits constant}. Disks, annuli, quarter-disks. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{wedge cut by a line} — a boundary $y=mx$ \keyres{is} the ray $\theta=\arctan m$. \warn{$\theta$ comes from the line}, not from habit. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{$r=f(\theta)$} — a curve \keyres{through the origin} (cardioid, or a circle not centred there) $\Rightarrow$ the inner limit carries $\theta$. \\
\end{tabular}}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.52, font=\tiny]
\draw[white!45,->] (-0.25,0)--(2.5,0) node[right] {$x$};
\draw[white!45,->] (0,-0.25)--(0,2.5) node[above] {$y$};
\fill[termHi, opacity=0.20] (1,0) -- (2,0) arc[start angle=0, end angle=90, radius=2] -- (0,1) arc[start angle=90, end angle=0, radius=1] -- cycle;
\draw[uHi, thick] (2,0) arc[start angle=0, end angle=90, radius=2];
\draw[uHi, thick] (1,0) arc[start angle=0, end angle=90, radius=1];
\draw[keyHi, very thick] (1,0)--(2,0); \draw[keyHi, very thick] (0,1)--(0,2);
\node[text=keyHi, anchor=north] at (1.3,2.7) {\textbf{A} \; $a\!\leq\!r\!\leq\!b$};
\begin{scope}[xshift=88pt]
\draw[white!45,->] (-0.25,0)--(2.5,0) node[right] {$x$};
\draw[white!45,->] (0,-0.25)--(0,2.5) node[above] {$y$};
\fill[termHi, opacity=0.20] (0,0) -- (60:2) arc[start angle=60, end angle=90, radius=2] -- cycle;
\draw[uHi, thick] (60:2) arc[start angle=60, end angle=90, radius=2];
\draw[duHi, thick] (0,0) -- (60:2.2);
\draw[warnHi] (0.55,0) arc[start angle=0, end angle=60, radius=0.55];
\node[text=warnHi, anchor=west] at (26:0.62) {$\theta$};
\node[text=keyHi, anchor=north] at (1.3,2.7) {\textbf{B} \; $\theta$ from a line};
\end{scope}
\begin{scope}[xshift=176pt]
\draw[white!45,->] (-1.3,0)--(1.4,0) node[right] {$x$};
\draw[white!45,->] (0,-0.25)--(0,2.5) node[above] {$y$};
\fill[termHi, opacity=0.20] (0,1.1) circle (1.1);
\draw[uHi, thick] (0,1.1) circle (1.1);
\draw[warnHi, thick, ->] (0,0) -- (55:1.8);
\node[text=warnHi, anchor=south east] at (58:1.75) {$r{=}f(\theta)$};
\node[text=keyHi, anchor=north] at (0,2.7) {\textbf{C} \; through origin};
\end{scope}
\end{tikzpicture}
\end{center}

\filbreak \subsubsection{The four things you actually \emph{solve}}
\stepbox{1. DOES $\theta$ SURVIVE? — CONVERT FIRST, THEN LOOK}{if the converted integrand still has $\cos\theta$ or $\sin\theta$, the outer pass is a \keyres{real trig integral}. An $x$, $y$ or $xy$ always leaves one behind; $x^2+y^2$ never does.}
\stepdown
\stepbox{2. $\theta$ FROM A LINE}{$\tan\theta=\dfrac{y}{x}=m \Rightarrow \theta=\arctan m$.
$$y=x \Rightarrow \keyres{\theta=\tfrac{\pi}{4}} \qquad y=\sqrt3\,x \Rightarrow \keyres{\theta=\tfrac{\pi}{3}} \qquad x=0 \Rightarrow \keyres{\theta=\tfrac{\pi}{2}}$$}
\stepdown
\stepbox{3. OFF-CENTRE CIRCLE $\to$ $r=f(\theta)$}{substitute $x^2+y^2=r^2$ and divide by $r$:
$$x^2+y^2=2ay \Rightarrow r^2=2ar\sin\theta \Rightarrow \keyres{r=2a\sin\theta} \;\emph{\scriptsize($\theta:0\to\pi$)}$$
$$x^2+y^2=2ax \Rightarrow \keyres{r=2a\cos\theta} \;\emph{\scriptsize($\theta:-\tfrac{\pi}{2}\to\tfrac{\pi}{2}$)}$$
\emph{\scriptsize(complete the square to confirm the centre: $x^2+(y-a)^2=a^2$)}}
\stepdown
\stepbox{4. CLOSE THE SHADOW — SET ROOF $=$ FLOOR}{for a volume, the solid's edge is where the two surfaces meet:
$$2y=x^2+y^2 \Rightarrow \keyres{r=2\sin\theta} \qquad x^2+y^2=4 \Rightarrow \keyres{r=2}$$}

\filbreak \subsubsection{Worked (A): volume under $z=4-x^2-y^2$ over the disk $x^2+y^2\leq4$}
\stepbox{1--3. REGION, INTEGRAND, JACOBIAN}{disk: \keyres{$0\leq r\leq2$, $0\leq\theta\leq2\pi$} \emph{\scriptsize(all constants)}. \; $4-x^2-y^2=4-r^2$ \emph{\scriptsize(no $\theta$ — it will die)}. \; So $\displaystyle\int_0^{2\pi}\!\!\int_0^2\left(4-r^2\right)r\,dr\,d\theta$}
\stepdown
\stepbox{4. INSIDE OUT}{$(4-r^2)r=4r-r^3$: \; $\displaystyle\int_0^2\!\left(4r-r^3\right)dr=\Big[2r^2-\frac{r^4}{4}\Big]_0^2=8-4=4$, \; then $\displaystyle\int_0^{2\pi}\!\!4\,d\theta=\keyres{8\pi}$}
\par\vspace{2pt}
In Cartesian this needed $\int_{-2}^{2}\!\int_{-\sqrt{4-x^2}}^{\sqrt{4-x^2}}$ and a trig substitution. Polar made \keyres{every limit a constant}.

\filbreak \subsubsection{Worked (A): when $\theta$ \emph{survives} — $\iint_R xy\,dA$, $R$: $1\leq r\leq2$, $0\leq\theta\leq\frac{\pi}{2}$}
\stepbox{1--3. CONVERT — BOTH FACTORS CARRY A $\theta$}{$xy=(r\cos\theta)(r\sin\theta)=r^2\cos\theta\sin\theta$, \; times the Jacobian $r$ gives \keyres{$r^3\cos\theta\sin\theta$}}
\stepdown
\stepbox{4. IT FACTORS — SPLIT (§5.1 SHORTCUT, IN POLAR)}{$$\left(\int_1^2\! r^3\,dr\right)\!\left(\int_0^{\pi/2}\!\!\cos\theta\sin\theta\,d\theta\right)=\Big[\frac{r^4}{4}\Big]_1^2\cdot\Big[\frac{\sin^2\theta}{2}\Big]_0^{\pi/2}=\frac{15}{4}\cdot\frac12=\keyres{\frac{15}{8}}$$}
\par\vspace{2pt}
\keyres{The aha}: $\theta$ dies only when the \keyres{converted} integrand has no $\theta$ in it \emph{\scriptsize(thing 1)}. The example above got lucky. This one didn't.

\filbreak \subsubsection{Worked (rescue): Cartesian $\to$ polar — $\displaystyle\int_{-1}^{1}\!\!\int_0^{\sqrt{1-x^2}}\!\!e^{x^2+y^2}\,dy\,dx$}
\stepbox{1. STUCK — AND SWAPPING THE ORDER WON'T HELP}{$e^{x^2+y^2}$ has no elementary antiderivative in $x$ \emph{or} $y$. \; \keyres{Read the region off the limits}: $y$ runs to $\sqrt{1-x^2}$, so $x^2+y^2=1$; $x$ runs $-1\to1$ $\Rightarrow$ \keyres{upper half disk}: $0\leq r\leq1$, $0\leq\theta\leq\pi$}
\stepdown
\stepbox{2. CONVERT — THE JACOBIAN IS THE $u$-SUB FUEL}{$e^{x^2+y^2}=e^{r^2}$; \; $u=r^2$, $du=2r\,dr$:
$$\int_0^{\pi}\!\!\int_0^1 e^{r^2}r\,dr\,d\theta=\int_0^\pi\!\frac12\Big[e^u\Big]_0^1 d\theta=\frac{e-1}{2}\cdot\pi=\keyres{\frac{\pi(e-1)}{2}}$$}
\par\vspace{2pt}
Exam signals for "go polar": \keyres{$e^{x^2+y^2}$, $\sqrt{x^2+y^2}$, $\sin(x^2+y^2)$, or a $\sqrt{a^2-x^2}$ limit}.

\filbreak \subsubsection{Worked (B): read $\theta$ off a line — $\displaystyle\int_0^1\!\!\int_{\sqrt{3}\,x}^{\sqrt{4-x^2}}\frac{dy\,dx}{\sqrt{x^2+y^2}}$}
\stepbox{1. BOUNDARIES}{bottom $y=\sqrt3\,x$ \emph{\scriptsize(a line)}; \; top $x^2+y^2=4$ \emph{\scriptsize(the circle $r=2$)}; \; left $x=0$}
\stepdown
\stepbox{2. $\theta$ FROM THE LINE \emph{\scriptsize(thing 2)}}{$\tan\theta=\sqrt3 \Rightarrow \keyres{\theta=\frac{\pi}{3}}$; \; the $y$-axis is \keyres{$\theta=\frac{\pi}{2}$}; \; $r$ runs $0\to2$
\par\vspace{1pt}
\emph{\scriptsize(corner check: $\sqrt3x=\sqrt{4-x^2}\Rightarrow x=1$, $y=\sqrt3$, and $(1,\sqrt3)$ has $r=2$, $\theta=\frac{\pi}{3}$ \checkmark)}}
\stepdown
\stepbox{3. THE JACOBIAN \emph{CANCELS} THE INTEGRAND}{$\dfrac{1}{\sqrt{x^2+y^2}}=\dfrac1r$, and $dA=r\,dr\,d\theta$, so $\dfrac1r\cdot r=1$:
$$\int_{\pi/3}^{\pi/2}\!\!\int_0^2 1\,dr\,d\theta=2\left(\frac{\pi}{2}-\frac{\pi}{3}\right)=\keyres{\frac{\pi}{3}}$$}
\par\vspace{2pt}
\keyres{The aha}: the Jacobian is never a tax — read what it does to \emph{this} integrand. Here it \keyres{deleted} it.

\filbreak \subsubsection{Worked (C): area inside the cardioid $r=1+\cos\theta$}
Boundary is $r=f(\theta)$, so the \keyres{inner limit carries $\theta$}. Area means $f=1$.
\stepbox{1--2. BUILD THE INTEGRAL, INNER}{$\displaystyle\int_0^{2\pi}\!\!\int_0^{1+\cos\theta}\!\!r\,dr\,d\theta$; \quad $\displaystyle\int_0^{1+\cos\theta}\!\!r\,dr=\Big[\frac{r^2}{2}\Big]_0^{1+\cos\theta}=\frac{(1+\cos\theta)^2}{2}$}
\stepdown
\stepbox{3. EXPAND, POWER-REDUCE, INTEGRATE}{$\frac{(1+\cos\theta)^2}{2}=\frac{1+2\cos\theta+\cos^2\theta}{2}$, and $\cos^2\theta=\frac{1+\cos2\theta}{2}$, giving $\frac34+\cos\theta+\frac14\cos2\theta$:
$$\int_0^{2\pi}\!\left(\frac34+\cos\theta+\frac{\cos2\theta}{4}\right)d\theta=\Big[\frac{3\theta}{4}+\sin\theta+\frac{\sin2\theta}{8}\Big]_0^{2\pi}=\keyres{\frac{3\pi}{2}}$$}
\par\vspace{2pt}
Stop after step 2 and you are holding $\int\frac12 r(\theta)^2 d\theta$ — the \keyres{polar area formula} is a double integral with the inner pass pre-done.

\filbreak \subsubsection{Worked: volume between \emph{two} surfaces — roof minus floor}
Not every solid sits on $z=0$. Inside the cylinder $x^2+y^2=1$, above $z=y-1$, below $z=3-y$.
\stepbox{1. HEIGHT $=$ ROOF $-$ FLOOR \emph{\scriptsize(thing 1: check which is on top)}}{$(3-y)-(y-1)=\keyres{4-2y}$; \; roof is above when $y<2$, and $y\leq1$ on this disk \checkmark}
\stepdown
\stepbox{2. SHADOW COMES FROM THE \emph{WALL}}{the planes are lid and base. The cylinder alone sets the shadow: \keyres{$0\leq r\leq1$, $0\leq\theta\leq2\pi$}}
\stepdown
\stepbox{3. CONVERT AND BUILD THE INTEGRAL}{$4-2y=4-2r\sin\theta$ \emph{\scriptsize(a $\theta$ survives)}: $\displaystyle V=\int_0^{2\pi}\!\!\int_0^1\left(4-2r\sin\theta\right)r\,dr\,d\theta$}
\stepdown
\stepbox{4. INSIDE OUT — THE FULL LAP KILLS THE SINE}{$\displaystyle\int_0^1\!\left(4r-2r^2\sin\theta\right)dr=\Big[2r^2-\frac{2r^3}{3}\sin\theta\Big]_0^1=2-\frac23\sin\theta$, \; then
$$\int_0^{2\pi}\!\left(2-\frac23\sin\theta\right)d\theta=\Big[2\theta+\frac23\cos\theta\Big]_0^{2\pi}=4\pi+\left(\frac23-\frac23\right)=\keyres{4\pi}$$}
\par\vspace{2pt}
Sanity: the tilts oppose, so mean height $=4$; times the disk's area $\pi$ gives $4\pi$ \checkmark \; \warn{Over half a lap the sine does \emph{not} cancel}: $\int_0^{\pi}$ gives $2\pi-\frac43$.
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=6.4cm, height=5.4cm, view={64}{16},
xmin=-1.3, xmax=1.3, ymin=-1.3, ymax=1.3, zmin=-2.7, zmax=3.5, clip=false,
colormap={wire}{color=(uHi) color=(uHi)}]
\addplot3[mesh, uHi, thick, domain=0:360, y domain=0:1, samples=24, samples y=2, z buffer=sort]
  ({y*cos(x)}, {y*sin(x)}, {y*sin(x)-1});
\addplot3[mesh, white!28, domain=0:360, y domain=0:1, samples=15, samples y=2, z buffer=sort]
  ({cos(x)}, {sin(x)}, {(sin(x)-1)+y*(4-2*sin(x))});
\addplot3[mesh, duHi, thick, domain=0:360, y domain=0:1, samples=24, samples y=2, z buffer=sort]
  ({y*cos(x)}, {y*sin(x)}, {3-y*sin(x)});
\addplot3[keyHi, thick, domain=0:360, samples=45, samples y=0] ({cos(x)}, {sin(x)}, {-2.5});
\node[font=\tiny, text=duHi, anchor=south] at (axis cs:-0.1,1.15,3.15) {$z=3-y$};
\node[font=\tiny, text=uHi, anchor=west] at (axis cs:1.0,0,-1.15) {$z=y-1$};
\node[font=\tiny, text=keyHi, anchor=north] at (axis cs:0,-1.15,-2.6) {shadow $r\leq1$};
\node[font=\tiny, text=white!65, anchor=east] at (axis cs:-1.05,0,0.7) {wall $x^2{+}y^2{=}1$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the {\color{uHi}floor} and the {\color{duHi}roof} both tilt with $y$; the wall alone fixes the {\color{keyHi}shadow}. Height $=$ roof $-$ floor, integrated over that shadow}
\end{center}

\filbreak \subsubsection{Worked (C): find the shadow by setting roof $=$ floor}
Above the paraboloid $z=x^2+y^2$, below the plane $z=2y$. \keyres{Nobody hands you the shadow.}
\stepbox{1. SET THEM EQUAL \emph{\scriptsize(thing 4)}, THEN COMPLETE THE SQUARE}{$2y=x^2+y^2 \Rightarrow x^2+y^2-2y=0 \Rightarrow \keyres{x^2+(y-1)^2=1}$ — radius $1$, centred $(0,1)$, \warn{not the origin}}
\stepdown
\stepbox{2. OFF-CENTRE CIRCLE $\to$ $r=f(\theta)$ \emph{\scriptsize(thing 3)}}{$r^2=2r\sin\theta \Rightarrow \keyres{r=2\sin\theta}$, traced once over \keyres{$0\leq\theta\leq\pi$}}
\stepdown
\stepbox{3. HEIGHT, BUILD THE INTEGRAL}{$2y-(x^2+y^2)=2r\sin\theta-r^2$: \quad $\displaystyle V=\int_0^{\pi}\!\!\int_0^{2\sin\theta}\!\left(2r\sin\theta-r^2\right)r\,dr\,d\theta$}
\stepdown
\stepbox{4. INNER}{$\displaystyle\int_0^{2\sin\theta}\!\left(2r^2\sin\theta-r^3\right)dr=\Big[\frac{2r^3}{3}\sin\theta-\frac{r^4}{4}\Big]_0^{2\sin\theta}=\frac{16}{3}\sin^4\theta-4\sin^4\theta=\frac43\sin^4\theta$}
\stepdown
\stepbox{5. OUTER — POWER-REDUCE TWICE}{$\sin^4\theta=\left(\frac{1-\cos2\theta}{2}\right)^2=\frac38-\frac12\cos2\theta+\frac18\cos4\theta$, so $\displaystyle\int_0^\pi\!\sin^4\theta\,d\theta=\Big[\frac{3\theta}{8}-\frac{\sin2\theta}{4}+\frac{\sin4\theta}{32}\Big]_0^\pi=\frac{3\pi}{8}$
$$V=\frac43\cdot\frac{3\pi}{8}=\keyres{\frac{\pi}{2}}$$}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=5.0cm, height=4.6cm, view={72}{22},
xmin=-1.9, xmax=1.9, ymin=-0.5, ymax=2.4, zmin=-0.2, zmax=4.4, clip=false]
\addplot3[mesh, uHi, domain=0:360, y domain=0:1.75, samples=22, samples y=5, z buffer=sort]
  ({y*cos(x)}, {y*sin(x)}, {y^2});
\addplot3[surf, shader=flat, draw=duHi, fill=duHi, fill opacity=0.30, draw opacity=0.65,
  domain=-1.7:1.7, y domain=-0.3:2.3, samples=2, samples y=2] {2*y};
\addplot3[keyHi, very thick, domain=0:360, samples=50, samples y=0]
  ({cos(x)}, {1+sin(x)}, {2*(1+sin(x))});
\addplot3[keyHi, thick, dashed, domain=0:360, samples=50, samples y=0]
  ({cos(x)}, {1+sin(x)}, {-0.15});
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:1.55,2.3,4.15) {$z=2y$};
\node[font=\tiny, text=uHi, anchor=east] at (axis cs:-1.5,-0.4,3.1) {$z=x^2{+}y^2$};
\node[font=\tiny, text=keyHi, anchor=north] at (axis cs:0,1,-0.2) {shadow};
\end{axis}
\end{tikzpicture}
\hspace{2pt}
\begin{tikzpicture}[scale=0.66, font=\tiny]
\draw[white!45,->] (-1.6,0)--(1.6,0) node[right] {$x$};
\draw[white!45,->] (0,-0.3)--(0,2.7) node[above] {$y$};
\fill[termHi, opacity=0.20] (0,1.2) circle (1.2);
\draw[uHi, thick] (0,1.2) circle (1.2);
\draw[warnHi, thick, ->] (0,0) -- (55:1.966);
\draw[warnHi] (0.5,0) arc[start angle=0, end angle=55, radius=0.5];
\node[text=warnHi, anchor=west] at (24:0.58) {$\theta$};
\node[text=warnHi, anchor=south east] at (55:1.9) {$r=2\sin\theta$};
\fill[white] (0,2.4) circle (1pt);
\node[text=white!75, anchor=west] at (0.08,2.42) {$\theta{=}\frac{\pi}{2}$};
\node[text=keyHi, anchor=north] at (0,-0.12) {$\theta{=}0$ and $\theta{=}\pi$ both give $r{=}0$};
\end{tikzpicture}
\par
{\scriptsize left: the {\color{duHi}plane} slices the {\color{uHi}paraboloid} bowl. Right: their {\color{uHi}intersection}, projected down, is the off-centre disk $r=2\sin\theta$}
\end{center}

\filbreak \subsubsection{Worked: fill a bowl to depth $h$ — the unknown sits in the \emph{limits}}
Both bowls are one-liners once you see the pattern. \keyres{$a$ is a steepness dial, not part of the method} — most problems use $a=1$.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.30\linewidth}@{}p{0.40\linewidth}@{}}
\textcolor{termHi}{\textbf{bowl}} & \textcolor{termHi}{\textbf{waterline}} & \textcolor{termHi}{\textbf{water to depth $h$}} \\[1pt]
cone $z=a\sqrt{x^2+y^2}$ & $r=\dfrac{h}{a}$ & $V=\keyres{\dfrac{\pi h^3}{3a^2}}$ \\[4pt]
paraboloid $z=a(x^2+y^2)$ & $r=\sqrt{\dfrac{h}{a}}$ & $V=\keyres{\dfrac{\pi h^2}{2a}}$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{DERIVING THE CONE ROW ($a=1$)}{waterline: $r=h$. \; Height of a column: $h-r$.
$$V=\int_0^{2\pi}\!\!\int_0^{h}\left(h-r\right)r\,dr\,d\theta=2\pi\Big[\frac{hr^2}{2}-\frac{r^3}{3}\Big]_0^{h}=2\pi\left(\frac{h^3}{2}-\frac{h^3}{3}\right)=2\pi\cdot\frac{h^3}{6}=\keyres{\frac{\pi h^3}{3}}$$}
\par\vspace{2pt}
\keyres{The check worth memorising}: compare each to the \keyres{cylinder it sits in} (radius $=$ waterline, height $=h$). A \keyres{cone holds $\frac13$} of its cylinder. A \keyres{paraboloid holds $\frac12$}. Both ratios are \keyres{independent of $a$} — which is exactly why the coefficient is not part of the method.
\par\vspace{2pt}
\stepbox{REVERSE — GIVEN THE VOLUME, FIND THE DEPTH}{the cone bowl $z=\sqrt{x^2+y^2}$ holds $9\pi$:
$$\frac{\pi h^3}{3}=9\pi \Rightarrow h^3=27 \Rightarrow \keyres{h=3}$$
\warn{Integrate with $h$ as a symbol all the way to a formula, \emph{then} solve.} Substituting a number early destroys the only thing you can solve for. \; \emph{\scriptsize(Two bowls holding equal water: set the two formulas equal and solve the same way.)}}
\begin{center}
\begin{tikzpicture}[scale=0.85, font=\tiny]
\draw[white!45,->] (-1.85,0)--(1.85,0) node[right] {$x$};
\draw[white!45,->] (0,-0.2)--(0,2.5) node[above] {$z$};
\draw[uHi, thick, domain=-1.5:1.5, samples=50, smooth] plot (\x, {0.88*\x*\x});
\draw[duHi, thick] (-1.1,2.2)--(0,0)--(1.1,2.2);
\fill[termHi, opacity=0.18] (-1.43,1.8) -- plot[domain=-1.43:1.43, samples=40] (\x,{0.88*\x*\x}) -- (1.43,1.8) -- cycle;
\draw[keyHi, thick, dashed] (-1.75,1.8)--(1.75,1.8);
\node[text=keyHi, anchor=west] at (1.5,1.98) {$z=h$};
\node[text=uHi, anchor=west] at (1.45,1.55) {$z=r^2$};
\node[text=duHi, anchor=east] at (-1.05,2.1) {$z=2r$};
\fill[warnHi] (1.43,1.8) circle (1.1pt);
\fill[duHi] (0.9,1.8) circle (1.1pt);
\draw[warnHi, <->] (0,2.05) -- (1.43,2.05);
\node[text=warnHi, anchor=south] at (0.72,2.02) {$\sqrt{h}$};
\draw[duHi, <->] (0,1.45) -- (0.9,1.45);
\node[text=duHi, anchor=north] at (0.45,1.46) {$\frac{h}{2}$};
\end{tikzpicture}
\par
{\scriptsize cross-section through the axis: one waterline, \keyres{two} different waterline radii — $\sqrt{h}$ for the bowl, $\frac{h}{2}$ for the cone}
\end{center}

\filbreak \subsubsection{Common pitfalls (polar)}
\begin{itemize}
\item \warn{Forgetting the $r$} in $dA=r\,dr\,d\theta$ is THE classic lost point — the substitution never pays without it.
\item \warn{$\theta$'s range comes from the region}, not habit: full disk $0\to2\pi$, upper half $0\to\pi$, right half $-\frac{\pi}{2}\to\frac{\pi}{2}$.
\item \warn{Convert the whole integrand} — every $x$ and $y$ becomes $r$ and $\theta$ before you integrate anything.
\item \warn{"The trig term drops out" is a full-lap privilege}: $\int_0^{2\pi}\sin\theta\,d\theta=0$, but over $0\to\pi$ it does \warn{not}. Evaluate the bracket.
\item \warn{A circle not centred at the origin is still polar} — complete the square. It just gives $r=f(\theta)$ instead of a constant \emph{\scriptsize(thing 3)}.
\item A $\sqrt{a^2-x^2}$ limit or an $x^2+y^2$ integrand is a \keyres{polar invitation} — read the region off the limits first, then switch.
\end{itemize}

\filbreak \subsection{triple integrals — rectangular coordinates}
\keyres{Three nested Calc 1 integrals.} Each pass deletes one variable. After three you have a number. With $f=1$ you get \keyres{volume}; with $f=\delta$ you get \keyres{mass}. The integrating is never the hard part — \keyres{finding the limits is the whole problem}, so everything below is about limits.
$$\iiint_E f\,dV=\int_{\text{outer}}\!\!\int_{\text{middle}}\!\!\int_{\text{inner}} f \;\; d(\text{in})\,d(\text{mid})\,d(\text{out})$$
\par\vspace{2pt}
\stepbox{THE PROCESS — EVERY TRIPLE INTEGRAL, NO EXCEPTIONS}{
\textbf{1.} \term{Inner variable} — pick the one \keyres{trapped between two surfaces}.\\
\textbf{2.} \term{Solve} both of those surfaces \keyres{for that variable} $\Rightarrow$ inner limits.\\
\textbf{3.} \term{Project} the solid onto the plane of the \keyres{other two} $\Rightarrow$ the \term{shadow}.\\
\textbf{4.} \term{Read the shadow} as a §5.2 Type I/II region $\Rightarrow$ middle \& outer limits.\\
\textbf{5.} \term{Integrate inside out} — each pass kills one variable.}
\par\vspace{2pt}
\term{Limit ladder}: inner may carry \keyres{both} outer variables \;$\cdot$\; middle only the outermost \;$\cdot$\; \keyres{outer must be numbers}. A variable alive in your answer means you broke this.

\filbreak \subsubsection{Step 1 decoded — which variable goes inside?}
Read the \keyres{list of bounding surfaces} and match one of three shapes:
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & two surfaces are \keyres{$z=f(x,y)$} — a roof and a floor $\Rightarrow$ \term{inner $=z$}, project onto \term{$xy$} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & a surface \warn{never mentions one variable} ($x=z^2$ has no $y$) $\Rightarrow$ that variable is \keyres{free}: it is \term{inner}, project onto the plane of the \keyres{other two} \\[2pt]
\textcolor{keyHi}{\textbf{C}} & a \keyres{vertical wall} $x^2+y^2=a^2$ $\Rightarrow$ \term{inner $=z$}, shadow is a \keyres{disk} — go \term{cylindrical} (next section) \\
\end{tabular}}
\par\vspace{2pt}
\emph{\scriptsize(A is the default. \warn{B is the one people miss} — it is why "project onto $xy$" is a habit, not a rule.)}

\filbreak \subsubsection{The four things you actually \emph{solve}}
Every limit in every problem comes from one of these. Nothing else.
\par\vspace{1pt}
\stepbox{1. WHICH SURFACE IS ON TOP?}{\keyres{Plug in one interior point} and compare. \warn{No algebra} — and skipping it flips your sign.
\emph{\scriptsize \; for example, $z=x^2$ vs $z=x+2$ at $x=0$: $\;0<2\;\Rightarrow\; x^2\leq z\leq x+2$}}
\stepdown
\stepbox{2. SOLVE A SURFACE FOR THE INNER VARIABLE}{Rearrange \keyres{one} equation. A curved face needs a real inversion.
$$x+y+z=1 \Rightarrow \keyres{z=1-x-y} \qquad\quad x=z^2 \Rightarrow \keyres{z=\sqrt{x}}$$
$$z=1-x^2 \Rightarrow \keyres{x=\sqrt{1-z}} \qquad\quad x^2+y^2+z^2=2z \Rightarrow \keyres{\rho=2\cos\varphi}$$}
\stepdown
\stepbox{3. CLOSE THE SHADOW — SET TWO BOUNDARIES EQUAL}{When the stated fences don't close the region, the \keyres{surfaces themselves} close it. Set them equal, solve, and \keyres{those roots are outer limits}.
$$x^2=2-x \Rightarrow x=1,\,-2 \qquad z^2=3-2z \Rightarrow \keyres{z=1} \;\emph{\scriptsize(reject $z=-3$)}$$}
\stepdown
\stepbox{4. NON-EMPTY CHECK — IT \emph{IS} THE NEXT LIMIT}{If the inner run is $g\leq x\leq h$, demanding $h\geq g$ \keyres{produces the middle limit}. Easy to skip. Skipping it loses a whole limit.
$$\sqrt{1-z}\geq y \Rightarrow 1-z\geq y^2 \Rightarrow \keyres{z\leq1-y^2}$$}

\filbreak \subsubsection{Seeing the solid — four moves before any integral}
Most lost time here is spent trying to draw one good 3D picture. \keyres{Do not.} Draw flat pictures instead, in this order:
\par\vspace{1pt}
\stepbox{1. SPOT THE EXTRUDED SURFACES — THE BIGGEST SIMPLIFICATION}{A surface \keyres{missing a variable} is a \term{cylinder}: it extrudes along that axis, unchanged.
\par\vspace{1pt}
$z=1-x^2$ has no $y$ $\Rightarrow$ a parabolic sheet running the length of the $y$-axis. \; $y=1-x$ has no $z$ $\Rightarrow$ a slanted wall running straight up.
\par\vspace{1pt}
\warn{Two extruded surfaces missing \emph{different} variables is what makes a solid hard.}}
\stepdown
\stepbox{2. DRAW THE THREE TRACES}{Set $x=0$, then $y=0$, then $z=0$. Each gives a flat curve or region in a coordinate plane. \keyres{Three flat pictures beat one bad 3D sketch.}}
\stepdown
\stepbox{3. FIND THE CORNERS}{Solve the surfaces in pairs. Corners pin the solid down and catch a mis-drawn face immediately.}
\stepdown
\stepbox{4. GET ALL THREE SHADOWS AT ONCE}{Project onto $xy$, $xz$ and $yz$. \keyres{Every one of the six orderings reads its outer and middle limits off one of these three pictures.} Compute them once and the reordering drill becomes bookkeeping.}

\filbreak \subsubsection{Worked (A, warm-up): $\iiint_B xyz\,dV$, \; $B=[0,1]\times[0,2]\times[0,3]$}
A box: all six limits are constants, so steps 1--4 are free.
\par\vspace{2pt}
\stepbox{1. ITERATE, THEN WORK INSIDE OUT}{$\displaystyle\int_0^1\!\!\int_0^2\!\!\int_0^3 xyz\,dz\,dy\,dx$: \quad $\displaystyle\int_0^3 xyz\,dz=xy\Big[\frac{z^2}{2}\Big]_0^3=\frac92xy$, \quad then $\displaystyle\int_0^2\frac92xy\,dy=\frac92x\Big[\frac{y^2}{2}\Big]_0^2=9x$, \quad then $\displaystyle\int_0^1 9x\,dx=9\Big[\frac{x^2}{2}\Big]_0^1=\keyres{\frac92}$}
\par\vspace{2pt}
Separable check (§5.1, three factors — $xyz$ factors, box region): $\left(\int_0^1\!x\,dx\right)\!\left(\int_0^2\!y\,dy\right)\!\left(\int_0^3\!z\,dz\right)=\frac12\cdot2\cdot\frac92=\frac92\;\checkmark$

\filbreak \subsubsection{Worked (A): volume of the tetrahedron under $x+y+z=1$}
The solid cut from the first octant by the plane $x+y+z=1$.
\par\vspace{2pt}
\stepbox{1--2. INNER $=z$, SO SOLVE THE PLANE FOR $z$}{\emph{\scriptsize(thing 2)} \; $x+y+z=1 \Rightarrow z=1-x-y$; \; floor $z=0$. \; Inner: \keyres{$0\leq z\leq1-x-y$}}
\stepdown
\stepbox{3. PROJECT — SET $z=0$ IN THE ROOF}{the shadow's edge is where the roof hits the floor \emph{\scriptsize(thing 3)}: $x+y=1$. \; Shadow $=$ triangle}
\stepdown
\stepbox{4. READ THE SHADOW (§5.2)}{\keyres{$0\leq y\leq1-x$}, \; \keyres{$0\leq x\leq1$} — outer limits are numbers \checkmark}
\stepdown
\stepbox{5. INTEGRATE INSIDE OUT}{$$\int_0^{1-x-y}\!\!1\,dz=1-x-y \;\;\emph{\scriptsize(roof $-$ floor)}$$
$$\int_0^{1-x}\!\!(1-x-y)\,dy=\Big[(1-x)y-\frac{y^2}{2}\Big]_0^{1-x}=(1-x)^2-\frac{(1-x)^2}{2}=\frac{(1-x)^2}{2}$$
$$\int_0^1\frac{(1-x)^2}{2}\,dx=\Big[-\frac{(1-x)^3}{6}\Big]_0^1=0-\left(-\frac16\right)=\keyres{\frac16}$$}
\par\vspace{2pt}
Geometry check: $V=\frac13(\text{base})(\text{height})=\frac13\cdot\frac12\cdot1=\frac16\;\checkmark$

\filbreak \subsubsection{Worked (B): first octant, cylinder $x=z^2$, planes $x=3-2z$ and $y=4$}
The case that breaks the "project onto $xy$" habit. \warn{Scan the surface list for a missing letter first.}
\par\vspace{2pt}
\stepbox{1. INNER VARIABLE — WHICH LETTER IS MISSING?}{$x=z^2$ and $x=3-2z$ mention \keyres{only $x$ and $z$}. \; $y$ appears once, as the fence $y=4$ $\Rightarrow$ \keyres{$y$ is free}: \term{inner $=y$}, project onto \term{$xz$} \;\emph{\scriptsize(variant B)}}
\stepdown
\stepbox{2. INNER LIMITS}{$y$ runs floor to fence: \keyres{$0\leq y\leq4$} \;\emph{\scriptsize(constants — nothing to solve)}}
\stepdown
\stepbox{3. CLOSE THE $xz$ SHADOW \emph{\scriptsize(thing 3)}}{the two curved/slanted boundaries meet where
$$z^2=3-2z \Rightarrow z^2+2z-3=0 \Rightarrow (z+3)(z-1)=0 \Rightarrow \keyres{z=1}$$
\emph{\scriptsize($z=-3$ is outside the first octant — reject it, and say so)}}
\stepdown
\stepbox{4. WHICH IS LEFT, WHICH IS RIGHT \emph{\scriptsize(thing 1)}}{at $z=\frac12$: \; $z^2=\frac14$ \; vs \; $3-2z=2$ $\Rightarrow$ \keyres{$z^2\leq x\leq3-2z$}, \; with \keyres{$0\leq z\leq1$}}
\stepdown
\stepbox{5. ASSEMBLE AND INTEGRATE}{$$V=\int_0^1\!\!\int_{z^2}^{3-2z}\!\!\int_0^4 1\,dy\,dx\,dz=\int_0^1\!\!\int_{z^2}^{3-2z}\!\!4\,dx\,dz=4\int_0^1\!\left[\left(3-2z\right)-z^2\right]dz$$
$$=4\Big[3z-z^2-\frac{z^3}{3}\Big]_0^1=4\left(3-1-\frac13\right)=4\cdot\frac53=\keyres{\frac{20}{3}}$$}
\par\vspace{2pt}
\keyres{The aha}: the projection plane is a \keyres{choice}, and the surfaces tell you which. Here the same solid could be done projecting onto $xy$ (shadow $=$ the rectangle $0\leq x\leq3$, $0\leq y\leq4$) — but then $z$ is trapped between $z=\sqrt{x}$ and $z=\frac{3-x}{2}$, both inversions, for more work and the same $\frac{20}{3}$.

\filbreak \subsubsection{Re-ordering: run the process again, don't swap letters}
Asked for a different order, \keyres{re-run steps 1--4} with a new inner variable. Nothing carries over. $E$: first octant under $z=1-x^2$, beside $y=x$ — asymmetric, so no ordering is a relabelling of another.
\par\vspace{1pt}
{\scriptsize
\begin{tabular}{@{}l@{\hspace{5pt}}l@{\hspace{5pt}}l@{\hspace{5pt}}l@{}}
\textcolor{termHi}{\textbf{order}} & \textcolor{termHi}{\textbf{outer}} & \textcolor{termHi}{\textbf{middle}} & \textcolor{termHi}{\textbf{inner}} \\[1pt]
$dz\,dy\,dx$ & $0\leq x\leq1$ & $0\leq y\leq x$ & $0\leq z\leq1-x^2$ \\
$dz\,dx\,dy$ & $0\leq y\leq1$ & $y\leq x\leq1$ & $0\leq z\leq1-x^2$ \\
$dy\,dz\,dx$ & $0\leq x\leq1$ & $0\leq z\leq1-x^2$ & $0\leq y\leq x$ \\
$dy\,dx\,dz$ & $0\leq z\leq1$ & $0\leq x\leq\sqrt{1-z}$ & $0\leq y\leq x$ \\
$dx\,dz\,dy$ & $0\leq y\leq1$ & \textcolor{warnHi}{$0\leq z\leq1-y^2$} & $y\leq x\leq\sqrt{1-z}$ \\
$dx\,dy\,dz$ & $0\leq z\leq1$ & $0\leq y\leq\sqrt{1-z}$ & $y\leq x\leq\sqrt{1-z}$ \\
\end{tabular}}
\par\vspace{2pt}
The \textcolor{warnHi}{red} limit appears in \warn{no original equation}. Here is where it comes from:
\par\vspace{1pt}
\stepbox{INNER $=x$ $\Rightarrow$ SOLVE FOR $x$ \emph{\scriptsize(thing 2)}, THEN CHECK NON-EMPTY \emph{\scriptsize(thing 4)}}{$z=1-x^2 \Rightarrow x=\sqrt{1-z}$; \; the wall gives $x=y$. \; Inner: \keyres{$y\leq x\leq\sqrt{1-z}$}.
\par\vspace{1pt}
That run has positive length only when $\sqrt{1-z}\geq y \Rightarrow 1-z\geq y^2 \Rightarrow \warn{z\leq1-y^2}$ — which \keyres{is} the middle limit, and is also the $yz$-shadow's upper edge.}
\par\vspace{2pt}
Check ($f=1$): $\displaystyle\int_0^1\!\!\int_0^{x}\!\!\left(1-x^2\right)dy\,dx=\int_0^1\!\left(x-x^3\right)dx=\frac12-\frac14=\keyres{\frac14}$, and the $dx\,dy\,dz$ order gives $\displaystyle\int_0^1\!\frac{1-z}{2}\,dz=\keyres{\frac14}\;\checkmark$
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.44, font=\tiny]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$x$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$y$};
\fill[termHi, opacity=0.22] (0,0)--(1.8,0)--(1.8,1.8)--cycle;
\draw[keyHi, thick] (0,0)--(1.8,1.8);
\node[text=keyHi, anchor=south east] at (1.75,1.55) {$y{=}x$};
\node[text=white!70, anchor=north] at (0.9,-0.25) {$xy$};
\begin{scope}[xshift=64pt]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$x$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$z$};
\fill[termHi, opacity=0.22] (0,0) -- plot[domain=0:1.8, samples=30] (\x,{1.8-0.5555*\x*\x}) -- (0,0) -- cycle;
\draw[uHi, thick, domain=0:1.8, samples=30] plot (\x,{1.8-0.5555*\x*\x});
\node[text=uHi, anchor=west] at (0.95,1.35) {$z{=}1{-}x^2$};
\node[text=white!70, anchor=north] at (0.9,-0.25) {$xz$};
\end{scope}
\begin{scope}[xshift=128pt]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$y$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$z$};
\fill[termHi, opacity=0.22] (0,0) -- plot[domain=0:1.8, samples=30] (\x,{1.8-0.5555*\x*\x}) -- (0,0) -- cycle;
\draw[warnHi, thick, domain=0:1.8, samples=30] plot (\x,{1.8-0.5555*\x*\x});
\node[text=warnHi, anchor=west] at (0.95,1.35) {$z{=}1{-}y^2$};
\node[text=white!70, anchor=north] at (0.9,-0.25) {$yz$};
\end{scope}
\end{tikzpicture}
\par
{\scriptsize the \keyres{three shadows} — one per choice of inner variable. The {\color{warnHi}$yz$} one is \keyres{derived}, not stated, and it is exactly the red limit above}
\end{center}

\filbreak \subsubsection{Worked (the hard kind): two surfaces, each missing a \emph{different} variable}
$E$ in the first octant, under $z=1-x^2$ and beside $y=1-x$. Both are extruded, along different axes — the case that costs the most time.
\par\vspace{2pt}
\stepbox{MOVE 1. THE EXTRUSIONS}{$z=1-x^2$ (no $y$): parabolic sheet along $y$. \; $y=1-x$ (no $z$): slanted wall straight up. \; The floor is $z=0$, the back is $x=0$.}
\stepdown
\stepbox{MOVE 2. THE TRACES}{$y=0$: the parabola $z=1-x^2$. \; $z=0$: the line $y=1-x$. \; $x=0$: the \keyres{unit square} $0\leq y\leq1$, $0\leq z\leq1$.}
\stepdown
\stepbox{MOVE 3. THE CORNERS}{$(0,0,0)$, $(0,1,0)$, $(0,0,1)$, $(0,1,1)$, and $(1,0,0)$ — at $x=1$ both $1-x$ and $1-x^2$ vanish, so the solid \keyres{pinches to a single point}.}
\stepdown
\stepbox{MOVE 4. THE THREE SHADOWS}{$xy$: the triangle $0\leq y\leq1-x$. \; $xz$: the region under $z=1-x^2$. \; $yz$: the \keyres{full unit square} \emph{\scriptsize(at $x=0$ every $(y,z)$ in it is reached)}.}
\par\vspace{2pt}
Four orderings now fall straight out of the shadows:
\par\vspace{1pt}
{\scriptsize
\begin{tabular}{@{}l@{\hspace{5pt}}l@{\hspace{5pt}}l@{\hspace{5pt}}l@{}}
\textcolor{termHi}{\textbf{order}} & \textcolor{termHi}{\textbf{outer}} & \textcolor{termHi}{\textbf{middle}} & \textcolor{termHi}{\textbf{inner}} \\[1pt]
$dz\,dy\,dx$ & $0\leq x\leq1$ & $0\leq y\leq1-x$ & $0\leq z\leq1-x^2$ \\
$dz\,dx\,dy$ & $0\leq y\leq1$ & $0\leq x\leq1-y$ & $0\leq z\leq1-x^2$ \\
$dy\,dz\,dx$ & $0\leq x\leq1$ & $0\leq z\leq1-x^2$ & $0\leq y\leq1-x$ \\
$dy\,dx\,dz$ & $0\leq z\leq1$ & $0\leq x\leq\sqrt{1-z}$ & $0\leq y\leq1-x$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE LAST TWO ORDERINGS \warn{SPLIT} — AND HERE IS WHY}{put $x$ innermost. It is capped by \keyres{both} walls at once:
$$x\leq1-y \quad\text{and}\quad x\leq\sqrt{1-z} \qquad\Rightarrow\qquad x\leq\keyres{\min\left(1-y,\;\sqrt{1-z}\right)}$$
\warn{A $\min$ in a limit always means a split.} Find where the two caps trade places:
$$\sqrt{1-z}=1-y \Rightarrow 1-z=(1-y)^2 \Rightarrow \keyres{z=2y-y^2}$$
That curve cuts the $yz$ square in two.}
\stepdown
\stepbox{SO $dx\,dz\,dy$ IS TWO INTEGRALS}{$$\int_0^1\!\!\int_0^{2y-y^2}\!\!\int_0^{1-y}\!\!f\,dx\,dz\,dy \;+\; \int_0^1\!\!\int_{2y-y^2}^{1}\!\!\int_0^{\sqrt{1-z}}\!\!f\,dx\,dz\,dy$$
below the curve the \keyres{plane} is the binding cap; above it the \keyres{parabola} is.}
\par\vspace{2pt}
Check with $f=1$: \; $\displaystyle\int_0^1\!(1-x)\left(1-x^2\right)dx=\int_0^1\!\left(1-x-x^2+x^3\right)dx=1-\frac12-\frac13+\frac14=\keyres{\frac{5}{12}}$
\par\vspace{1pt}
and the split route gives $\frac14+\frac16=\keyres{\frac{5}{12}}\;\checkmark$
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.4cm, height=4.0cm, view={58}{18},
xmin=0, xmax=1.05, ymin=0, ymax=1.05, zmin=0, zmax=1.05, clip=false]
\addplot3[mesh, uHi, domain=0:1, y domain=0:1, samples=12, samples y=5, z buffer=sort]
  ({x}, {y*(1-x)}, {1-x^2});
\addplot3[mesh, duHi, domain=0:1, y domain=0:1, samples=12, samples y=5, z buffer=sort]
  ({x}, {1-x}, {y*(1-x^2)});
\addplot3[keyHi, very thick] coordinates {(0,0,0) (1,0,0)};
\addplot3[keyHi, very thick, domain=0:1, samples=20, samples y=0] ({x},{1-x},{0});
\node[font=\tiny, text=uHi, anchor=east] at (axis cs:0,0.15,1.05) {$z{=}1{-}x^2$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:0.6,1.0,0.62) {$y{=}1{-}x$};
\end{axis}
\end{tikzpicture}
\hspace{1pt}
\begin{tikzpicture}[scale=0.40, font=\tiny]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$x$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$y$};
\fill[termHi, opacity=0.22] (0,0)--(1.8,0)--(0,1.8)--cycle;
\draw[keyHi, thick] (1.8,0)--(0,1.8);
\node[text=white!70, anchor=north] at (0.9,-0.25) {$xy$};
\begin{scope}[xshift=62pt]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$x$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$z$};
\fill[termHi, opacity=0.22] (0,0) -- plot[domain=0:1.8, samples=30] (\x,{1.8-0.5555*\x*\x}) -- (0,0) -- cycle;
\draw[uHi, thick, domain=0:1.8, samples=30] plot (\x,{1.8-0.5555*\x*\x});
\node[text=white!70, anchor=north] at (0.9,-0.25) {$xz$};
\end{scope}
\begin{scope}[xshift=124pt]
\draw[white!45,->] (-0.2,0)--(2.1,0) node[right] {$y$};
\draw[white!45,->] (0,-0.2)--(0,2.1) node[above] {$z$};
\fill[termHi, opacity=0.18] (0,0) rectangle (1.8,1.8);
\draw[white!50] (0,0) rectangle (1.8,1.8);
\draw[warnHi, very thick, domain=0:1.8, samples=40] plot (\x,{1.8*(2*(\x/1.8)-(\x/1.8)^2)});
\node[text=warnHi, anchor=north east, font=\tiny] at (1.75,1.05) {$z{=}2y{-}y^2$};
\node[text=white!70, anchor=north] at (0.9,-0.25) {$yz$ — \keyres{splits}};
\end{scope}
\end{tikzpicture}
\par
{\scriptsize the solid, then its three shadows. The {\color{warnHi}red curve} on the $yz$ square is where the two caps trade places — \keyres{that is the split}, and it appears in no original equation}
\end{center}

\filbreak \subsubsection{Common pitfalls (triple)}
\begin{itemize}
\item \warn{Match the ladder to the differential order} — $dz\,dy\,dx$ means $z$-limits innermost, $x$-limits outermost, outer a \keyres{number}.
\item \warn{Re-ordering is re-running the process}, not exchanging letters. A symmetric solid (the tetrahedron) makes the swap \emph{look} legal. An asymmetric one exposes it.
\item \warn{A $\min$ or $\max$ in a limit means the shadow splits} — two surfaces cap the inner variable, and the split curve is where they trade places. Solve them equal to find it.
\item \warn{An inner limit pair must not be empty} — that check \keyres{is} the next limit out \emph{\scriptsize(thing 4)}. Skip it and a middle limit vanishes.
\item \warn{The $xy$-plane is not the only shadow} — a surface that never mentions a variable marks it free \emph{\scriptsize(variant B)}.
\item \warn{Volume is $f=1$}, not $f=z$ — roof-minus-floor appears by \emph{integrating} $1\,dz$; don't also make it the integrand.
\end{itemize}

\filbreak \subsection{coordinate conversions — the full table}
Three systems, \keyres{six} directions between them. \; \term{Rectangular} $(x,y,z)$, \; \term{cylindrical} $(r,\theta,z)$, \; \term{spherical} $(\rho,\theta,\varphi)$.
\par\vspace{1pt}
\warn{This document's convention}: $\rho$ is the distance \keyres{from the origin}, $\varphi$ is the angle \keyres{down from the $+z$ axis} ($0\leq\varphi\leq\pi$), and $\theta$ is the same floor angle in all three systems. \warn{Physics texts swap $\theta$ and $\varphi$} — trust the definition, never the letter.
\par\vspace{2pt}
\stepbox{THE ONLY THREE FACTS TO MEMORIZE}{
\textbf{1.} $\keyres{r=\rho\sin\varphi}$ — the shadow of $\rho$ on the floor.\\
\textbf{2.} $\keyres{z=\rho\cos\varphi}$ — the height of $\rho$.\\
\textbf{3.} $\keyres{\theta}$ \textbf{never changes} — it is the same angle in cylindrical and spherical.\\
Everything below follows from these three plus $x=r\cos\theta$, $y=r\sin\theta$.}
\par\vspace{2pt}
\filbreak \subsubsection{All six directions}
\begin{center}
{\small
\begin{tabular}{@{}l@{\hspace{6pt}}l@{}}
\textcolor{termHi}{\textbf{direction}} & \textcolor{termHi}{\textbf{formulas}} \\[2pt]
\hline
\\[-6pt]
\term{rect $\to$ cyl} & $r=\sqrt{x^2+y^2}$, \quad $\theta=\arctan\!\left(\dfrac{y}{x}\right)$, \quad $z=z$ \\[6pt]
\term{cyl $\to$ rect} & $x=r\cos\theta$, \quad $y=r\sin\theta$, \quad $z=z$ \\[6pt]
\hline
\\[-6pt]
\term{rect $\to$ sph} & $\rho=\sqrt{x^2+y^2+z^2}$, \quad $\theta=\arctan\!\left(\dfrac{y}{x}\right)$, \quad $\varphi=\arccos\!\left(\dfrac{z}{\rho}\right)$ \\[6pt]
\term{sph $\to$ rect} & $x=\rho\sin\varphi\cos\theta$, \quad $y=\rho\sin\varphi\sin\theta$, \quad $z=\rho\cos\varphi$ \\[6pt]
\hline
\\[-6pt]
\term{cyl $\to$ sph} & $\rho=\sqrt{r^2+z^2}$, \quad $\theta=\theta$, \quad $\varphi=\arccos\!\left(\dfrac{z}{\sqrt{r^2+z^2}}\right)$ \\[6pt]
\term{sph $\to$ cyl} & $r=\rho\sin\varphi$, \quad $\theta=\theta$, \quad $z=\rho\cos\varphi$ \\[2pt]
\hline
\\[-6pt]
\term{rect $\to$ polar} & $r=\sqrt{x^2+y^2}$, \quad $\theta=\arctan\!\left(\dfrac{y}{x}\right)$ \quad \emph{\scriptsize(2D — same quadrant fix)} \\[6pt]
\term{polar $\to$ rect} & $x=r\cos\theta$, \quad $y=r\sin\theta$ \\[2pt]
\end{tabular}}
\end{center}
The 2D pair is cylindrical with the $z$ dropped — \keyres{polar is cylindrical, flattened}. A worked quadrant fix lives in the Trigonometry section; the \warn{same $\arctan$ trap below applies}. \keyres{The cyl/sph pair is the easiest} — cylindrical and spherical differ only in how they name the floor distance and the height. \; \term{Volume elements}: $dV=dz\,dy\,dx$, \; $dV=\keyres{r}\,dz\,dr\,d\theta$, \; $dV=\keyres{\rho^2\sin\varphi}\,d\rho\,d\varphi\,d\theta$.
\par\vspace{2pt}
\stepbox{TWO TRAPS IN THE ANGLES}{
\warn{$\arctan$ returns only QI and QIV.} If $x<0$, add $\pi$ to $\theta$. \; Sketch the point and check the quadrant every time.\\[2pt]
\warn{Use $\arccos$ for $\varphi$, not $\arctan\!\left(\frac{r}{z}\right)$.} With $r=3$, $z=-4$: \; $\arccos\!\left(\frac{-4}{5}\right)=143^\circ$ \checkmark, \; but $\arctan\!\left(\frac{3}{-4}\right)=-37^\circ$ \warn{fails} — it lands below the $xy$-plane, where $\varphi$ can never go.}
\par\vspace{2pt}
\filbreak \subsubsection{Converting \emph{surfaces} — the row you will use most}
Points are rare on an exam. \keyres{Surfaces are the real job}: you convert a boundary to read a limit off it.
\begin{center}
{\small
\begin{tabular}{@{}l@{\hspace{4pt}}l@{\hspace{4pt}}l@{\hspace{4pt}}c@{}}
\textcolor{termHi}{\textbf{rectangular}} & \textcolor{termHi}{\textbf{cylindrical}} & \textcolor{termHi}{\textbf{spherical}} & \textcolor{termHi}{\textbf{use}} \\[2pt]
\hline
\\[-6pt]
$x^2+y^2$ & $r^2$ & $\rho^2\sin^2\varphi$ & \\[3pt]
$x^2+y^2+z^2$ & $r^2+z^2$ & $\rho^2$ & \\[3pt]
$z$ & $z$ & $\rho\cos\varphi$ & \\[3pt]
\hline
\\[-6pt]
cylinder $x^2{+}y^2{=}a^2$ & $r=a$ & $\rho\sin\varphi=a$ & \keyres{cyl} \\[3pt]
plane $z=c$ & $z=c$ & $\rho\cos\varphi=c$ & \keyres{either} \\[3pt]
cone $z=a\sqrt{x^2{+}y^2}$ & $z=ar$ & $\varphi=\arctan\frac1a$ & \keyres{sph} \\[3pt]
sphere $x^2{+}y^2{+}z^2{=}a^2$ & $r^2+z^2=a^2$ & $\rho=a$ & \keyres{sph} \\[3pt]
sphere $x^2{+}y^2{+}z^2{=}2az$ & $r^2+z^2=2az$ & $\rho=2a\cos\varphi$ & \keyres{sph} \\[3pt]
paraboloid $z=a(x^2{+}y^2)$ & $z=ar^2$ & $\rho=\dfrac{\cos\varphi}{a\sin^2\varphi}$ & \keyres{cyl} \\[3pt]
\end{tabular}}
\end{center}
The \keyres{use} column names the system where that surface is \keyres{simplest} — integrate there. A cone is one \emph{number} in spherical ($\varphi$ is constant). A paraboloid stays ugly in spherical and is clean in cylindrical.
\par\vspace{2pt}
\keyres{The $45^\circ$ cone}: $a=1$ gives $\varphi=\arctan1=\frac{\pi}{4}$. \; Steeper cone $z=2r$: $\varphi=\arctan\frac12\approx26.6^\circ$ — \warn{not a nice angle}, which is why textbook cones are almost always $z=\sqrt{x^2+y^2}$.
\par\vspace{2pt}
\filbreak \subsubsection{Worked: one point, all three systems}
Convert $(x,y,z)=\left(-1,\,\sqrt3,\,2\right)$ to cylindrical, then to spherical.
\par\vspace{2pt}
\stepbox{1. RECT $\to$ CYL — AND MIND THE QUADRANT}{$r=\sqrt{(-1)^2+(\sqrt3)^2}=\sqrt{1+3}=2$
\par\vspace{1pt}
$\arctan\!\left(\dfrac{\sqrt3}{-1}\right)=\arctan(-\sqrt3)=-\dfrac{\pi}{3}$ \; \emph{\scriptsize(a QIV angle)}, but $x<0$ and $y>0$ put the point in \warn{QII}:
$$\theta=-\frac{\pi}{3}+\pi=\keyres{\frac{2\pi}{3}}, \qquad z=2 \qquad\Rightarrow\qquad \keyres{\left(2,\;\tfrac{2\pi}{3},\;2\right)}$$}
\stepdown
\stepbox{2. CYL $\to$ SPH — REUSE $r$ AND $z$}{$\rho=\sqrt{r^2+z^2}=\sqrt{4+4}=2\sqrt2$
$$\varphi=\arccos\!\left(\frac{z}{\rho}\right)=\arccos\!\left(\frac{2}{2\sqrt2}\right)=\arccos\!\left(\frac{1}{\sqrt2}\right)=\keyres{\frac{\pi}{4}}$$
$\theta$ is \keyres{unchanged}: $\;\keyres{\left(2\sqrt2,\;\tfrac{2\pi}{3},\;\tfrac{\pi}{4}\right)}$}
\stepdown
\stepbox{3. CHECK — CONVERT BACK}{$x=\rho\sin\varphi\cos\theta=2\sqrt2\cdot\dfrac{1}{\sqrt2}\cdot\left(-\dfrac12\right)=2\cdot\left(-\dfrac12\right)=-1$ \checkmark
\par\vspace{1pt}
$y=\rho\sin\varphi\sin\theta=2\cdot\dfrac{\sqrt3}{2}=\sqrt3$ \checkmark \qquad $z=\rho\cos\varphi=2\sqrt2\cdot\dfrac{1}{\sqrt2}=2$ \checkmark}
\par\vspace{2pt}
\keyres{Always route through cylindrical.} Going rectangular $\to$ spherical directly means computing $\rho$ and $\varphi$ from three coordinates at once. Finding $r$ first reduces it to a 2D problem you have done since trigonometry.

\filbreak \subsection{triple integrals — cylindrical coordinates}
Cylindrical $=$ \keyres{polar $+$ z}: \; $(r,\theta,z)$ with $x=r\cos\theta$, \; $y=r\sin\theta$, \; $z=z$, \; $x^2+y^2=r^2$. The volume element inherits polar's $r$:
$$\keyres{dV=r\,dz\,dr\,d\theta}$$
Symmetry cue: solids built \keyres{around an axis} — cylinders, cones, paraboloids (the quadric gallery) — where cross-sections are circles.

\par\vspace{2pt}
\stepbox{THE PROCESS — IT IS THE TRIPLE PROCESS, SHADOW IN POLAR}{
\textbf{1.} \term{Inner $=z$} — roof and floor, solved for $z$ \emph{\scriptsize(variant A or C of the triple table)}.\\
\textbf{2.} \term{Project} onto $xy$ $\Rightarrow$ the shadow, then read it in \keyres{polar} (§5.3's three shapes).\\
\textbf{3.} \term{Attach the $r$} — $dV=r\,dz\,dr\,d\theta$.\\
\textbf{4.} \term{Integrate inside out}: $z$, then $r$, then $\theta$.}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & shadow is a \term{full disk} $\Rightarrow$ $0\leq\theta\leq2\pi$ and odd trig terms \keyres{cancel} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & shadow is a \term{part lap} (half-disk, wedge) $\Rightarrow$ $\theta$ from the bounding rays; \warn{trig terms survive} \\[2pt]
\textcolor{keyHi}{\textbf{C}} & shadow is \term{$r=f(\theta)$} $\Rightarrow$ the $r$-limit carries $\theta$ (set roof $=$ floor to find it) \\
\end{tabular}}
\par\vspace{2pt}
\warn{Two different $r$'s can appear}: one from the integrand ($x^2+y^2=r^2$), one from the Jacobian. \keyres{Both are mandatory.}

\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.6cm, height=4.0cm, view={62}{18},
xmin=-0.3, xmax=2.0, ymin=-0.3, ymax=2.0, zmin=-0.15, zmax=2.0, clip=false]
\addplot3[white!45, ->] coordinates {(0,0,0) (1.9,0,0)};
\addplot3[white!45, ->] coordinates {(0,0,0) (0,1.9,0)};
\addplot3[white!45, ->] coordinates {(0,0,0) (0,0,1.9)};
\addplot3[keyHi, very thick] coordinates {(0,0,0) (0.932,1.110,0)};
\addplot3[duHi, very thick, dashed] coordinates {(0.932,1.110,0) (0.932,1.110,1.449)};
\addplot3[warnHi, thick, domain=0:50, samples=20, samples y=0] ({0.55*cos(x)}, {0.55*sin(x)}, {0});
\addplot3[only marks, mark=*, mark size=1.1pt, white] coordinates {(0.932,1.110,1.449)};
\node[font=\tiny, text=white, anchor=south west] at (axis cs:0.932,1.110,1.5) {$P$};
\node[font=\tiny, text=keyHi, anchor=north] at (axis cs:0.78,0.90,-0.02) {$r$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:0.95,1.15,0.75) {$z$};
\node[font=\tiny, text=warnHi, anchor=west] at (axis cs:0.62,0.28,0) {$\theta$};
\node[font=\tiny, text=white!70, anchor=west] at (axis cs:1.9,0,0) {$x$};
\node[font=\tiny, text=white!70, anchor=west] at (axis cs:0,1.95,0) {$y$};
\node[font=\tiny, text=white!70, anchor=south] at (axis cs:0,0,1.92) {$z$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize \term{cylindrical} $=$ polar in the floor plus an \keyres{elevator}: $r$ and $\theta$ locate the {\color{keyHi}shadow} of $P$, then $z$ lifts it straight up}
\end{center}

\filbreak \subsubsection{Worked: volume between $z=x^2+y^2$ and $z=4$}
\par\vspace{2pt}
\stepbox{1. FIND THE SHADOW}{roof meets floor where $x^2+y^2=4$ $\Rightarrow$ $r=2$: shadow $=$ disk, \; $0\leq r\leq2$, \; $0\leq\theta\leq2\pi$}
\stepdown
\stepbox{2. CONVERT THE $z$ LIMITS}{floor: paraboloid $z=x^2+y^2=r^2$; \; roof: $z=4$. Inner: $r^2\leq z\leq4$ \; \emph{\scriptsize(inner limits may carry $r$ — the ladder rule, cylindrical edition)}}
\stepdown
\stepbox{3. BUILD THE INTEGRAL WITH $f=1$}{$\displaystyle\int_0^{2\pi}\!\!\int_0^2\!\!\int_{r^2}^{4} r\,dz\,dr\,d\theta$ \; \emph{\scriptsize($dV=r\,dz\,dr\,d\theta$)}}
\stepdown
\stepbox{4. INNER = COLUMN HEIGHT, TIMES $r$}{$$\int_{r^2}^4 r\,dz=r\Big[z\Big]_{r^2}^4=r\left(4-r^2\right)=4r-r^3$$}
\stepdown
\stepbox{5. MIDDLE}{$$\int_0^2\left(4r-r^3\right)dr=\Big[2r^2-\frac{r^4}{4}\Big]_0^2=(8-4)-0=4$$}
\stepdown
\stepbox{6. OUTER}{$$\int_0^{2\pi}4\,d\theta=4\Big[\theta\Big]_0^{2\pi}=\keyres{8\pi}$$}
\par\vspace{2pt}
\keyres{The aha}: steps 4–6 are \keyres{literally the polar worked example} ($8\pi$, same passes) — that double integral \keyres{was} this triple integral with the $z$-pass pre-done. Area$\to\iint1$, polar area$\to$ inner pass, and now volume$\to\iiint1$: every formula below is an integral with early passes baked in.

\filbreak \subsubsection{Worked (dual): $\iiint_E (x^2+y^2)\,dV$, \; $E$: cylinder $x^2+y^2\leq1$, \; $0\leq z\leq2$}
\par\vspace{2pt}
\stepbox{1. CONVERT REGION AND INTEGRAND}{region: $0\leq r\leq1$, \; $0\leq\theta\leq2\pi$, \; $0\leq z\leq2$; \quad integrand: $x^2+y^2=r^2$}
\stepdown
\stepbox{2. BUILD THE INTEGRAL — TWO DIFFERENT $r$'S}{$$\int_0^{2\pi}\!\!\int_0^1\!\!\int_0^2 r^2\cdot r\,dz\,dr\,d\theta=\int_0^{2\pi}\!\!\int_0^1\!\!\int_0^2 r^3\,dz\,dr\,d\theta$$
\warn{$r^2$ is the integrand, $r$ is the Jacobian} — both mandatory, and they merge into $r^3$}
\stepdown
\stepbox{3. INNER}{$$\int_0^2 r^3\,dz=r^3\Big[z\Big]_0^2=2r^3$$}
\stepdown
\stepbox{4. MIDDLE}{$$\int_0^1 2r^3\,dr=2\Big[\frac{r^4}{4}\Big]_0^1=2\left(\frac14-0\right)=\frac12$$}
\stepdown
\stepbox{5. OUTER}{$$\int_0^{2\pi}\frac12\,d\theta=\frac12\Big[\theta\Big]_0^{2\pi}=\keyres{\pi}$$}
\par\vspace{2pt}
\emph{\scriptsize(This integral is the moment of inertia of a uniform cylinder about its axis — the $x^2+y^2$ weight counts mass by its distance$^2$ from the axis.)}

\filbreak \subsection{triple integrals — spherical coordinates}
$(\rho,\theta,\varphi)$: \; $\rho=$ \keyres{distance from the origin}, \; $\theta=$ the same polar angle as always, \; $\varphi=$ \keyres{angle down from the $+z$ axis}, \; $0\leq\varphi\leq\pi$.
$$x=\rho\sin\varphi\cos\theta \qquad y=\rho\sin\varphi\sin\theta \qquad z=\rho\cos\varphi \qquad x^2+y^2+z^2=\rho^2$$
$$\keyres{dV=\rho^2\sin\varphi\;d\rho\,d\varphi\,d\theta}$$
\warn{Physics texts swap the letters $\theta$ and $\varphi$} — trust the definition (which angle drops from the $z$-axis), never the letter. Symmetry cue: spheres, $x^2+y^2+z^2$, cones through the origin.

\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.6cm, height=4.0cm, view={62}{18},
xmin=-0.3, xmax=2.0, ymin=-0.3, ymax=2.0, zmin=-0.15, zmax=2.0, clip=false]
\addplot3[white!45, ->] coordinates {(0,0,0) (1.9,0,0)};
\addplot3[white!45, ->] coordinates {(0,0,0) (0,1.9,0)};
\addplot3[white!45, ->] coordinates {(0,0,0) (0,0,1.9)};
\addplot3[uHi, very thick] coordinates {(0,0,0) (0.932,1.110,1.449)};
\addplot3[white!35, dashed] coordinates {(0.932,1.110,0) (0.932,1.110,1.449)};
\addplot3[warnHi, thick, domain=0:50, samples=20, samples y=0] ({0.55*cos(x)}, {0.55*sin(x)}, {0});
\addplot3[duHi, thick, domain=0:45, samples=20, samples y=0]
  ({0.75*sin(x)*cos(50)}, {0.75*sin(x)*sin(50)}, {0.75*cos(x)});
\addplot3[only marks, mark=*, mark size=1.1pt, white] coordinates {(0.932,1.110,1.449)};
\node[font=\tiny, text=white, anchor=south west] at (axis cs:0.932,1.110,1.5) {$P$};
\node[font=\tiny, text=uHi, anchor=south east] at (axis cs:0.5,0.6,0.85) {$\rho$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:0.22,0.26,0.78) {$\varphi$};
\node[font=\tiny, text=warnHi, anchor=west] at (axis cs:0.62,0.28,0) {$\theta$};
\node[font=\tiny, text=white!70, anchor=west] at (axis cs:1.9,0,0) {$x$};
\node[font=\tiny, text=white!70, anchor=west] at (axis cs:0,1.95,0) {$y$};
\node[font=\tiny, text=white!70, anchor=south] at (axis cs:0,0,1.92) {$z$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize \term{spherical}: $\rho$ is the \keyres{straight-line distance} from the origin to $P$; $\varphi$ is measured \keyres{down from the $+z$ axis} (\warn{not} up from the floor); $\theta$ is the same floor angle as always}
\end{center}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Convert every surface} to $\rho,\varphi,\theta$ — use $x^2+y^2+z^2=\rho^2$ and $z=\rho\cos\varphi$.\\
\textbf{2.} \term{$\rho$ innermost}, $\varphi$ middle, $\theta$ outer — almost always.\\
\textbf{3.} \term{Attach} $dV=\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta$.\\
\textbf{4.} \term{Integrate inside out.} If all six limits are constants, the integral \keyres{separates} into three.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — three region shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{ball / spherical shell} $\Rightarrow$ $\rho$ between \keyres{constants}, $\varphi:0\to\pi$, $\theta:0\to2\pi$. Fully separable. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{cone} $z=a\sqrt{x^2+y^2}$ $\Rightarrow$ it is just a \keyres{$\varphi$ limit}: $\tan\varphi=\frac1a$. The $45^\circ$ cone $z=\sqrt{x^2+y^2}$ is $\varphi=\frac{\pi}{4}$. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{sphere through the origin} $x^2+y^2+z^2=2az$ $\Rightarrow$ $\keyres{\rho=2a\cos\varphi}$ — the $\rho$-limit \warn{carries $\varphi$}, and the integral no longer separates. \\
\end{tabular}}

\filbreak \subsubsection{Worked: volume of a sphere of radius $a$ — derive the grade-school formula}
\par\vspace{2pt}
\stepbox{1. DESCRIBE THE BALL}{$0\leq\rho\leq a$, \; $0\leq\varphi\leq\pi$ \emph{\scriptsize(pole to pole)}, \; $0\leq\theta\leq2\pi$ \emph{\scriptsize(full lap)} — all constants}
\stepdown
\stepbox{2. BUILD THE INTEGRAL — FULLY SEPARABLE}{$$\int_0^{2\pi}\!\!\int_0^{\pi}\!\!\int_0^{a}\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta=\left(\int_0^a\rho^2\,d\rho\right)\!\left(\int_0^{\pi}\sin\varphi\,d\varphi\right)\!\left(\int_0^{2\pi}d\theta\right)$$
\emph{\scriptsize(the §5.1 separable shortcut, three factors: integrand factors, limits all constants)}}
\stepdown
\stepbox{3. THE $\rho$ FACTOR}{$\displaystyle\int_0^a\rho^2\,d\rho=\Big[\frac{\rho^3}{3}\Big]_0^a=\frac{a^3}{3}-0=\frac{a^3}{3}$}
\stepdown
\stepbox{4. THE $\varphi$ FACTOR}{$\displaystyle\int_0^{\pi}\sin\varphi\,d\varphi=\Big[-\cos\varphi\Big]_0^{\pi}=-(-1)-(-1)=2$}
\stepdown
\stepbox{5. THE $\theta$ FACTOR, THEN MULTIPLY}{$\displaystyle\int_0^{2\pi}d\theta=\Big[\theta\Big]_0^{2\pi}=2\pi$, so
$$V=\frac{a^3}{3}\cdot2\cdot2\pi=\keyres{\frac{4}{3}\pi a^3}$$}
\par\vspace{2pt}
\keyres{The aha}: the formula memorized since grade school just fell out of a coordinate system — three one-line integrals.

\filbreak \subsubsection{Worked (dual): $\iiint_B e^{(x^2+y^2+z^2)^{3/2}}dV$ over the unit ball — the rescue}
\par\vspace{2pt}
\stepbox{1. WHY SPHERICAL}{Cartesian and cylindrical are both hopeless. But $x^2+y^2+z^2=\rho^2$, so $(x^2+y^2+z^2)^{3/2}=(\rho^2)^{3/2}=\rho^3$: the integrand collapses to $e^{\rho^3}$. Ball: $\rho\!:0\to1$, \; $\varphi\!:0\to\pi$, \; $\theta\!:0\to2\pi$}
\stepdown
\stepbox{2. BUILD THE INTEGRAL — SEPARABLE AGAIN}{$$\int_0^{2\pi}\!\!\int_0^{\pi}\!\!\int_0^1 e^{\rho^3}\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta=\left(\int_0^1 e^{\rho^3}\rho^2\,d\rho\right)\!\left(\int_0^{\pi}\sin\varphi\,d\varphi\right)\!\left(\int_0^{2\pi}d\theta\right)$$}
\stepdown
\stepbox{3. THE $\rho^2$ IS THE $u$-SUB FUEL}{$u=\rho^3$, \; $du=3\rho^2\,d\rho \Rightarrow \rho^2\,d\rho=\frac{du}{3}$; \; bounds: $\rho=0\to u=0$, \; $\rho=1\to u=1$:
$$\int_0^1 e^{\rho^3}\rho^2\,d\rho=\frac13\int_0^1 e^u\,du=\frac13\Big[e^u\Big]_0^1=\frac{e-1}{3}$$}
\stepdown
\stepbox{4. ANGULAR FACTORS — SAME BRACKETS AS THE SPHERE}{$\Big[-\cos\varphi\Big]_0^{\pi}=2$, \qquad $\Big[\theta\Big]_0^{2\pi}=2\pi$}
\stepdown
\stepbox{5. MULTIPLY}{$$\frac{e-1}{3}\cdot2\cdot2\pi=\keyres{\frac{4\pi(e-1)}{3}}$$}
\par\vspace{2pt}
\keyres{The aha} — the manufactured-factor thread, complete: the order swap manufactured the $x$ that $e^{x^2}$ needed (§5.2), the polar $r$ fueled $e^{r^2}$ (§5.3), and here $\rho^2$ fuels $e^{\rho^3}$. \keyres{The Jacobian is never a tax — it's the missing piece.}

\filbreak \subsubsection{Worked: the ice-cream cone — $\varphi$ as a region limit}
The solid inside the cone $\varphi=\frac{\pi}{3}$, capped by the sphere $\rho=1$:
\par\vspace{2pt}
\stepbox{1. THE CONE IS JUST A $\varphi$ RANGE}{$\varphi=\frac{\pi}{3}$ names every ray $60^\circ$ off the $+z$ axis — "inside the cone" means $0\leq\varphi\leq\frac{\pi}{3}$; \; cap: $0\leq\rho\leq1$; \; $\theta$: full lap}
\stepdown
\stepbox{2. BUILD THE INTEGRAL}{$\displaystyle\int_0^{2\pi}\!\!\int_0^{\pi/3}\!\!\int_0^1 \rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta$}
\stepdown
\stepbox{3. EVALUATE THE FACTORS}{$\Big[\dfrac{\rho^3}{3}\Big]_0^1=\dfrac13$, \qquad $\Big[-\cos\varphi\Big]_0^{\pi/3}=-\dfrac12-(-1)=\dfrac12$, \qquad $\Big[\theta\Big]_0^{2\pi}=2\pi$}
\stepdown
\stepbox{4. MULTIPLY}{$$V=\frac13\cdot\frac12\cdot2\pi=\keyres{\frac{\pi}{3}}$$}
\par\vspace{2pt}
In Cartesian this solid is a nightmare. In spherical it's a \keyres{box} — three constant ranges. That's the whole game: \keyres{pick coordinates that make the region a box}.

\filbreak \subsubsection{Worked: when the $\rho$ limit is a function of $\varphi$}
Every spherical example above had \keyres{three constant ranges}. Here is the general case: the solid inside the cone $\varphi=\frac{\pi}{4}$ and inside the sphere $x^2+y^2+z^2=2z$.
\par\vspace{2pt}
\stepbox{1. CONVERT THE SPHERE}{$x^2+y^2+z^2=\rho^2$ and $z=\rho\cos\varphi$, so $$\rho^2=2\rho\cos\varphi$$}
\stepdown
\stepbox{2. DIVIDE BY $\rho$}{legal away from the origin: $$\keyres{\rho=2\cos\varphi}$$
\emph{\scriptsize(completing the square in Cartesian confirms it: $x^2+y^2+(z-1)^2=1$ — radius $1$, centred at $(0,0,1)$, so the sphere sits \keyres{on} the origin)}}
\stepdown
\stepbox{3. THE CONE IS JUST A $\varphi$ RANGE}{"inside the cone $\varphi=\frac{\pi}{4}$" means $0\leq\varphi\leq\frac{\pi}{4}$; \; $\theta$ runs a full lap $0\to2\pi$; \; $\rho$ runs $0\to2\cos\varphi$ \; \warn{the inner limit carries $\varphi$} — the ladder rule, spherical edition}
\stepdown
\stepbox{4. BUILD THE INTEGRAL}{$$V=\int_0^{2\pi}\!\!\int_0^{\pi/4}\!\!\int_0^{2\cos\varphi}\rho^2\sin\varphi\;d\rho\,d\varphi\,d\theta$$
\warn{Not separable} this time — the $\rho$-limit mentions $\varphi$, so the §5.1 shortcut is off the table}
\stepdown
\stepbox{5. INNER}{$$\int_0^{2\cos\varphi}\!\!\rho^2\,d\rho=\Big[\frac{\rho^3}{3}\Big]_0^{2\cos\varphi}=\frac{\left(2\cos\varphi\right)^3}{3}-0=\frac{8\cos^3\varphi}{3}$$
carry the $\sin\varphi$ along: the middle integrand is $\dfrac{8}{3}\cos^3\varphi\sin\varphi$}
\stepdown
\stepbox{6. MIDDLE — THE $\sin\varphi$ IS THE $u$-SUB FUEL}{$u=\cos\varphi$, \; $du=-\sin\varphi\,d\varphi$; \; bounds: $\varphi=0\to u=1$, \; $\varphi=\frac{\pi}{4}\to u=\frac{\sqrt2}{2}$:
$$\frac83\int_0^{\pi/4}\!\!\cos^3\varphi\sin\varphi\,d\varphi=-\frac83\int_1^{\sqrt2/2}\!\!u^3\,du=\frac83\int_{\sqrt2/2}^{1}\!\!u^3\,du=\frac83\Big[\frac{u^4}{4}\Big]_{\sqrt2/2}^{1}$$
$$=\frac83\cdot\frac14\left(1-\frac14\right)=\frac23\cdot\frac34=\frac12 \qquad \emph{\scriptsize$\left(\left(\tfrac{\sqrt2}{2}\right)^4=\tfrac{4}{16}=\tfrac14\right)$}$$}
\stepdown
\stepbox{7. OUTER}{$$\int_0^{2\pi}\frac12\,d\theta=\frac12\Big[\theta\Big]_0^{2\pi}=\frac12\cdot2\pi=\keyres{\pi}$$}
\par\vspace{2pt}
Sanity: the whole sphere has radius $1$, so volume $\frac43\pi$; the cone keeps only a piece, and $\pi<\frac43\pi$ \checkmark
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}
\begin{axis}[axis lines=none, width=4.6cm, height=4.4cm, view={62}{16},
xmin=-1.2, xmax=1.2, ymin=-1.2, ymax=1.2, zmin=-0.1, zmax=2.15, clip=false]
\addplot3[mesh, uHi, domain=0:360, y domain=0:90, samples=20, samples y=8, z buffer=sort]
  ({sin(2*y)*cos(x)}, {sin(2*y)*sin(x)}, {1+cos(2*y)});
\addplot3[mesh, duHi, domain=0:360, y domain=0:1, samples=20, samples y=3, z buffer=sort]
  ({y*cos(x)}, {y*sin(x)}, {y});
\addplot3[keyHi, very thick, domain=0:360, samples=45, samples y=0] ({cos(x)}, {sin(x)}, {1});
\addplot3[white!45, ->] coordinates {(0,0,0) (0,0,2.1)};
\node[font=\tiny, text=uHi, anchor=west] at (axis cs:1.3,0,1.7) {$\rho=2\cos\varphi$};
\node[font=\tiny, text=duHi, anchor=west] at (axis cs:1.3,0,0.35) {$\varphi=\frac{\pi}{4}$};
\node[font=\tiny, text=white!70, anchor=south] at (axis cs:0,0,2.12) {$z$};
\end{axis}
\end{tikzpicture}
\par
{\scriptsize the {\color{uHi}sphere} rests on the origin, so its radius $\rho$ \keyres{shrinks as $\varphi$ grows}; the {\color{duHi}cone} caps $\varphi$; they meet on the {\color{keyHi}circle} $r=1$, $z=1$}
\end{center}
\keyres{The aha}: this is $r=2\sin\theta$ one dimension up. A sphere \keyres{through the origin} gives $\rho=f(\varphi)$ exactly as a circle through the origin gives $r=f(\theta)$ — and the fix is the same: let the innermost limit depend on the next variable out.

\filbreak \subsubsection{Which coordinate system? — the decision guide}
\begin{itemize}
\item \term{Cartesian}: boxes, planes, tetrahedra — straight-edged regions.
\item \term{Polar / cylindrical}: circles in 2D; \keyres{axis symmetry} in 3D — cylinders, cones, paraboloids. The tell is $x^2+y^2$.
\item \term{Spherical}: \keyres{point symmetry} — spheres, balls, cones through the origin. The tell is $x^2+y^2+z^2$.
\item \term{Your own $u,v$}: none of the above fits, but the \keyres{integrand names a combination} — $e^{(x-y)/(x+y)}$, $(x+2y)^{10}$, a slanted parallelogram. Build the map, take the Jacobian.
\item \keyres{The question also gets a vote}: "find the mass" means the integrand is a \keyres{density}, not $1$ — same region, same coordinates, different $f$.
\item \keyres{The integrand gets a vote}: $e^{x^2+y^2}$ forces polar even over an ugly region — a rescue-worthy integrand outranks a pretty region.
\end{itemize}

\filbreak \subsubsection{Common pitfalls (cylindrical \& spherical)}
\begin{itemize}
\item \warn{Cylindrical Jacobian is one $r$}, same as polar: $dV=r\,dz\,dr\,d\theta$. An integrand's $r^2$ doesn't excuse it.
\item \warn{Spherical Jacobian is $\rho^2\sin\varphi$}, never $\rho^2$ alone — and it's $\sin\varphi$, \warn{not} $\sin\theta$.
\item \warn{$\varphi$ stops at $\pi$}: a full sphere is $\varphi:0\to\pi$ with $\theta:0\to2\pi$. Running $\varphi$ to $2\pi$ covers the ball \warn{twice}.
\item \warn{Forgetting a Jacobian entirely} turns every one of these problems into a wrong answer with perfect calculus after step 1 — write $dV$ out before integrating anything.
\end{itemize}

\filbreak \subsection{mass, center of mass \& moments}
Swap the integrand $f=1$ for a \term{density} and the very same integral stops counting volume and starts counting \keyres{mass}. Nothing else in the machinery changes.
$$M=\iiint_E \delta\,dV \qquad\qquad M=\iint_D \delta\,dA \;\;\text{(a flat \term{lamina})}$$
The \term{moments} weight each point by how far out it sits, and dividing by the mass gives the balance point:
$$M_{yz}=\iiint_E x\,\delta\,dV \quad M_{xz}=\iiint_E y\,\delta\,dV \quad M_{xy}=\iiint_E z\,\delta\,dV$$
$$\bar{x}=\frac{M_{yz}}{M} \qquad \bar{y}=\frac{M_{xz}}{M} \qquad \bar{z}=\frac{M_{xy}}{M}$$

\par\vspace{2pt}
\stepbox{THE PROCESS — NOTHING NEW, ONE NEW INTEGRAND}{
\textbf{1.} \term{Set up the region exactly as before} — same shadow, same limits, same coordinates.\\
\textbf{2.} \term{Swap the integrand}: $f=1$ gives volume, $f=\delta$ gives \keyres{mass}, $f=x\delta$ gives a \keyres{moment}.\\
\textbf{3.} \term{Use symmetry first} — if $\delta$ never mentions a variable and the region is symmetric in it, that coordinate of the balance point is the \keyres{geometric middle}, for free.\\
\textbf{4.} \term{Divide by the mass} — never by the volume.}
\par\vspace{2pt}
\keyres{Sanity check that catches almost everything}: denser at the top must put $\bar{z}$ \keyres{above} the geometric centre. If it doesn't, the error is upstream.
\warn{Notation clash}: most texts write density as $\rho$, which is also the spherical radius. This section uses \keyres{$\delta$} for density so the two never collide — but on an exam, read which one the problem means. With $\delta$ constant the density cancels and $(\bar{x},\bar{y},\bar{z})$ is the purely geometric \term{centroid}.
\par\vspace{2pt}
\filbreak \subsubsection{Worked: mass of a box with a vertical density gradient}
$B=[0,2]\times[0,1]\times[0,3]$, \; density $\delta(x,y,z)=1+z$ — the material packs tighter toward the top.
\par\vspace{2pt}
\stepbox{1. BUILD THE INTEGRAL — THE DENSITY IS THE INTEGRAND}{$$M=\int_0^2\!\!\int_0^1\!\!\int_0^3\left(1+z\right)dz\,dy\,dx$$}
\stepdown
\stepbox{2. INNER — FREEZE $x$ AND $y$ (NEITHER APPEARS)}{$$\int_0^3\left(1+z\right)dz=\Big[z+\frac{z^2}{2}\Big]_0^3=\left(3+\frac92\right)-0=\frac{15}{2}$$}
\stepdown
\stepbox{3. MIDDLE}{$$\int_0^1\frac{15}{2}\,dy=\frac{15}{2}\Big[y\Big]_0^1=\frac{15}{2}\left(1-0\right)=\frac{15}{2}$$}
\stepdown
\stepbox{4. OUTER}{$$\int_0^2\frac{15}{2}\,dx=\frac{15}{2}\Big[x\Big]_0^2=\frac{15}{2}\cdot2=\keyres{15}$$}
\par\vspace{2pt}
Sanity: $\delta$ runs linearly from $1$ to $4$, so the \keyres{mean density} is $\frac{1+4}{2}=\frac52$; the volume is $2\cdot1\cdot3=6$; and $\frac52\cdot6=15$ \checkmark
\par\vspace{2pt}
\filbreak \subsubsection{Worked (dual): where does that box balance?}
\stepbox{1. TWO COORDINATES ARE FREE — USE SYMMETRY}{$\delta=1+z$ \keyres{never mentions $x$ or $y$}, so in those directions the box is uniform and balances at its geometric middle: $$\bar{x}=\frac{0+2}{2}=1 \qquad \bar{y}=\frac{0+1}{2}=\frac12$$}
\stepdown
\stepbox{2. THE $z$ MOMENT — WEIGHT EACH POINT BY ITS HEIGHT}{$$M_{xy}=\int_0^2\!\!\int_0^1\!\!\int_0^3 z\left(1+z\right)dz\,dy\,dx, \qquad z\left(1+z\right)=z+z^2$$}
\stepdown
\stepbox{3. INNER}{$$\int_0^3\left(z+z^2\right)dz=\Big[\frac{z^2}{2}+\frac{z^3}{3}\Big]_0^3=\left(\frac92+9\right)-0=\frac{27}{2}$$}
\stepdown
\stepbox{4. MIDDLE AND OUTER — BOTH JUST MULTIPLY}{$$\int_0^1\frac{27}{2}\,dy=\frac{27}{2}, \qquad \int_0^2\frac{27}{2}\,dx=\frac{27}{2}\cdot2=27$$}
\stepdown
\stepbox{5. DIVIDE BY THE MASS}{$$\bar{z}=\frac{M_{xy}}{M}=\frac{27}{15}=\keyres{\frac95}$$}
\par\vspace{2pt}
Sanity — and this is the whole point: $\frac95=1.8$ sits \keyres{above} the geometric centre $\frac32=1.5$, because the box is \keyres{heavier at the top}. A $\bar{z}$ on the wrong side of the middle means a sign, a limit, or the moment integrand is wrong. \warn{Always run this check} — it catches errors no amount of re-reading the algebra will.
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.62, font=\tiny]
\foreach \i in {0,1,2,3,4,5,6,7,8,9}{
  \pgfmathsetmacro{\op}{0.09+0.052*\i}
  \fill[uHi, opacity=\op] (0,{0.32*\i}) rectangle (2.6,{0.32*\i+0.32});
}
\draw[white!50] (0,0) rectangle (2.6,3.2);
\draw[white!35] (0,0) -- (0.75,0.62) -- (3.35,0.62) -- (2.6,0);
\draw[white!35] (2.6,3.2) -- (3.35,3.82) -- (3.35,0.62);
\draw[white!35] (0,3.2) -- (0.75,3.82) -- (3.35,3.82);
\draw[white!35] (0.75,0.62) -- (0.75,3.82);
\draw[warnHi, thick, dashed] (0,1.92) -- (2.6,1.92);
\draw[keyHi, thick, dashed] (0,1.6) -- (2.6,1.6);
\fill[keyHi] (1.75,1.6) circle (2.2pt);
\fill[warnHi] (1.75,1.92) circle (2.2pt);
\node[text=warnHi, anchor=south west] at (2.68,1.98) {$\bar{z}=\frac95$};
\node[text=keyHi, anchor=north west] at (2.68,1.54) {centre $\frac32$};
\draw[white!45,->] (-0.5,0) -- (-0.5,3.4) node[above] {$z$};
\node[text=uHi, anchor=east] at (-0.62,3.0) {denser};
\node[text=white!55, anchor=east] at (-0.62,0.35) {lighter};
\end{tikzpicture}
\par
{\scriptsize denser bands toward the top pull the {\color{warnHi}center of mass} up off the {\color{keyHi}geometric centre}}
\end{center}
\filbreak \subsubsection{Worked: a lamina, in polar}
The quarter disk $r\leq2$ in the first quadrant, with density $\delta=\sqrt{x^2+y^2}$ — mass grows with distance from the origin.
\par\vspace{2pt}
\stepbox{1. CONVERT BOTH REGION AND DENSITY}{region: \; $0\leq r\leq2$, \; $0\leq\theta\leq\frac{\pi}{2}$; \quad density: $\delta=\sqrt{x^2+y^2}=\keyres{r}$}
\stepdown
\stepbox{2. BUILD THE INTEGRAL — WATCH THE TWO $r$'S}{$$M=\int_0^{\pi/2}\!\!\int_0^2 \underbrace{r}_{\text{density}}\cdot\underbrace{r}_{\text{Jacobian}}\,dr\,d\theta=\int_0^{\pi/2}\!\!\int_0^2 r^2\,dr\,d\theta$$
\warn{Both are mandatory} and they merge into $r^2$ — dropping either one is the classic lost point}
\stepdown
\stepbox{3. INNER}{$$\int_0^2 r^2\,dr=\Big[\frac{r^3}{3}\Big]_0^2=\frac83-0=\frac83$$}
\stepdown
\stepbox{4. OUTER}{$$\int_0^{\pi/2}\frac83\,d\theta=\frac83\Big[\theta\Big]_0^{\pi/2}=\frac83\cdot\frac{\pi}{2}=\keyres{\frac{4\pi}{3}}$$}
\stepdown
\stepbox{5. THE $x$ MOMENT — NOW THREE $r$'S}{$x=r\cos\theta$, so $x\,\delta\,dA=(r\cos\theta)(r)(r)\,dr\,d\theta=r^3\cos\theta\,dr\,d\theta$, and it \keyres{factors}:
$$M_y=\left(\int_0^2 r^3\,dr\right)\!\left(\int_0^{\pi/2}\!\cos\theta\,d\theta\right)=\Big[\frac{r^4}{4}\Big]_0^2\cdot\Big[\sin\theta\Big]_0^{\pi/2}=4\cdot1=4$$}
\stepdown
\stepbox{6. DIVIDE}{$$\bar{x}=\frac{M_y}{M}=\frac{4}{\frac{4\pi}{3}}=\frac{4\cdot3}{4\pi}=\keyres{\frac{3}{\pi}}, \qquad \bar{y}=\keyres{\frac{3}{\pi}} \;\; \emph{\scriptsize(by the $y=x$ symmetry of region \emph{and} density)}$$}
\par\vspace{2pt}
Sanity: $\frac{3}{\pi}\approx0.95$ — inside the quarter disk, and pushed \keyres{outward} from the origin, which is where a density that grows with $r$ should put it \checkmark
\par\vspace{2pt}
\filbreak \subsubsection{Common pitfalls (mass \& moments)}
\begin{itemize}
\item \warn{The moment integrand is $x\,\delta$, not $x$} — and not $\delta$ alone. Three factors ride in a polar moment: the coordinate, the density, and the Jacobian.
\item \warn{Divide by the mass, never by the volume} — $\bar{z}=\frac{M_{xy}}{M}$. Dividing by $V$ silently gives the centroid of a uniform solid instead.
\item \warn{$M_{xy}$ pairs with $\bar{z}$}, not with $\bar{x}$: the subscript names the \keyres{plane the moment is taken about}, so the surviving coordinate is the missing letter.
\item \keyres{Use symmetry before integrating}: if $\delta$ never mentions a variable and the region is symmetric in it, that coordinate of the balance point is the geometric middle — for free.
\item \warn{Sanity-check the direction}: denser at the top must give $\bar{z}$ \keyres{above} the middle. If it does not, the error is upstream.
\end{itemize}

\filbreak \subsection{change of variables — where every Jacobian comes from}
Polar, cylindrical and spherical have all arrived as \keyres{asserted} formulas: $dA=r\,dr\,d\theta$, $dV=\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta$. They are not conventions to memorise. They are \keyres{determinants}, and the machine that produces them works for substitutions you invent yourself.
$$\frac{\partial(x,y)}{\partial(u,v)}=\begin{vmatrix} x_u & x_v \\ y_u & y_v \end{vmatrix} \qquad\qquad \keyres{dA=\left|\frac{\partial(x,y)}{\partial(u,v)}\right|du\,dv}$$
$$\iint_R f(x,y)\,dA=\iint_S f\big(x(u,v),\,y(u,v)\big)\left|\frac{\partial(x,y)}{\partial(u,v)}\right|du\,dv$$
where $S$ is the region $R$ \keyres{redrawn in the $uv$-plane}. In 3D the matrix is $3\times3$ and $dV$ picks up its determinant the same way.

\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Let the integrand choose $u$ and $v$} — name the combinations that appear in it.\\
\textbf{2.} \term{Invert}: solve for $x$ and $y$ \keyres{in terms of $u,v$}. The Jacobian needs them this way round.\\
\textbf{3.} \term{Map every boundary edge} into the $uv$-plane $\Rightarrow$ the new region $S$.\\
\textbf{4.} \term{Take the determinant}, then its \keyres{absolute value}.\\
\textbf{5.} \term{Integrate} over $S$ with the extra factor.}
\par\vspace{2pt}
\keyres{When to reach for this}: no stock coordinate system fits, but the integrand \keyres{names a combination} — $e^{(x-y)/(x+y)}$, $(x+2y)^{10}$, a slanted parallelogram. Polar and spherical are just this process with $u,v$ pre-chosen.
\par\vspace{2pt}
\filbreak \subsubsection{Worked (reverse): re-derive $dA=r\,dr\,d\theta$}
\stepbox{1. NAME THE MAP}{$u=r$, \; $v=\theta$, and the substitution is $x=r\cos\theta$, \; $y=r\sin\theta$}
\stepdown
\stepbox{2. THE FOUR PARTIALS}{$x_r=\cos\theta$, \quad $x_\theta=-r\sin\theta$, \quad $y_r=\sin\theta$, \quad $y_\theta=r\cos\theta$}
\stepdown
\stepbox{3. THE DETERMINANT — WRITE IT BEFORE EXPANDING}{$$\frac{\partial(x,y)}{\partial(r,\theta)}=\begin{vmatrix} \cos\theta & -r\sin\theta \\ \sin\theta & r\cos\theta \end{vmatrix}=\left(\cos\theta\right)\!\left(r\cos\theta\right)-\left(-r\sin\theta\right)\!\left(\sin\theta\right)$$}
\stepdown
\stepbox{4. SIMPLIFY, THEN PYTHAGORAS}{$$=r\cos^2\theta+r\sin^2\theta=r\left(\cos^2\theta+\sin^2\theta\right)=r\cdot1=r$$}
\stepdown
\stepbox{5. TAKE THE ABSOLUTE VALUE}{$r\geq0$ always, so $|r|=r$ and $$\keyres{dA=r\,dr\,d\theta}\;\blacksquare$$}
\par\vspace{2pt}
\filbreak \subsubsection{Worked (reverse, 3D): re-derive $dV=\rho^2\sin\varphi\,d\rho\,d\varphi\,d\theta$}
\stepbox{1. BUILD THE $3\times3$ — COLUMNS ARE $\partial/\partial\rho$, $\partial/\partial\varphi$, $\partial/\partial\theta$}{from $x=\rho\sin\varphi\cos\theta$, \; $y=\rho\sin\varphi\sin\theta$, \; $z=\rho\cos\varphi$:
$$\begin{vmatrix} \sin\varphi\cos\theta & \rho\cos\varphi\cos\theta & -\rho\sin\varphi\sin\theta \\ \sin\varphi\sin\theta & \rho\cos\varphi\sin\theta & \rho\sin\varphi\cos\theta \\ \cos\varphi & -\rho\sin\varphi & 0 \end{vmatrix}$$}
\stepdown
\stepbox{2. EXPAND ALONG ROW 3 — IT CARRIES THE ZERO}{$$=\cos\varphi\cdot M_1-\left(-\rho\sin\varphi\right)\cdot M_2+0\cdot M_3$$
\emph{\scriptsize(signs $+,-,+$ along the row. The third term dies on the $0$)}}
\stepdown
\stepbox{3. THE FIRST MINOR}{$$M_1=\begin{vmatrix} \rho\cos\varphi\cos\theta & -\rho\sin\varphi\sin\theta \\ \rho\cos\varphi\sin\theta & \rho\sin\varphi\cos\theta \end{vmatrix}=\rho^2\sin\varphi\cos\varphi\cos^2\theta+\rho^2\sin\varphi\cos\varphi\sin^2\theta$$
$$=\rho^2\sin\varphi\cos\varphi\left(\cos^2\theta+\sin^2\theta\right)=\rho^2\sin\varphi\cos\varphi$$}
\stepdown
\stepbox{4. THE SECOND MINOR}{$$M_2=\begin{vmatrix} \sin\varphi\cos\theta & -\rho\sin\varphi\sin\theta \\ \sin\varphi\sin\theta & \rho\sin\varphi\cos\theta \end{vmatrix}=\rho\sin^2\varphi\cos^2\theta+\rho\sin^2\varphi\sin^2\theta=\rho\sin^2\varphi$$}
\stepdown
\stepbox{5. ASSEMBLE}{$$\cos\varphi\left(\rho^2\sin\varphi\cos\varphi\right)+\rho\sin\varphi\left(\rho\sin^2\varphi\right)=\rho^2\sin\varphi\cos^2\varphi+\rho^2\sin^3\varphi$$}
\stepdown
\stepbox{6. FACTOR, THEN PYTHAGORAS AGAIN}{$$=\rho^2\sin\varphi\left(\cos^2\varphi+\sin^2\varphi\right)=\keyres{\rho^2\sin\varphi}$$
and $\sin\varphi\geq0$ on $0\leq\varphi\leq\pi$, so the absolute value changes nothing $\;\blacksquare$}
\par\vspace{2pt}
\filbreak \subsubsection{Worked (forward): invent your own substitution — $\displaystyle\iint_T e^{\frac{x-y}{x+y}}dA$}
$T$ is the triangle with vertices $(0,0)$, $(1,0)$, $(0,1)$.
\par\vspace{2pt}
\stepbox{1. WHY EVERY EARLIER TOOL FAILS}{$e^{(x-y)/(x+y)}$ has no antiderivative in $x$ or in $y$, so \warn{neither order starts}. The order swap (§5.2) hits the same wall. The region is a \warn{triangle}, so polar is useless. \keyres{New move needed.}}
\stepdown
\stepbox{2. LET THE INTEGRAND CHOOSE THE VARIABLES}{the exponent is $\dfrac{x-y}{x+y}$, so set $$\keyres{u=x-y}, \qquad \keyres{v=x+y} \qquad\Rightarrow\qquad \text{integrand}=e^{u/v}$$}
\stepdown
\stepbox{3. INVERT THE MAP — THE JACOBIAN NEEDS $x,y$ IN TERMS OF $u,v$}{add: $u+v=(x-y)+(x+y)=2x \Rightarrow \keyres{x=\dfrac{u+v}{2}}$
\par\vspace{1pt}
subtract: $v-u=(x+y)-(x-y)=2y \Rightarrow \keyres{y=\dfrac{v-u}{2}}$}
\stepdown
\stepbox{4. MAP THE BOUNDARY — ONE EDGE AT A TIME}{edge $x=0$ \emph{\scriptsize(from $(0,0)$ to $(0,1)$)}: $u=-y$, $v=y$ $\Rightarrow$ $\keyres{u=-v}$
\par\vspace{1pt}
edge $y=0$ \emph{\scriptsize(from $(0,0)$ to $(1,0)$)}: $u=x$, $v=x$ $\Rightarrow$ $\keyres{u=v}$
\par\vspace{1pt}
edge $x+y=1$ \emph{\scriptsize(the hypotenuse)}: $\keyres{v=1}$
\par\vspace{1pt}
so $S$ is the triangle $\keyres{0\leq v\leq1}$, \; $\keyres{-v\leq u\leq v}$ — Type I in $v$}
\stepdown
\stepbox{5. THE JACOBIAN}{$x_u=\frac12$, \; $x_v=\frac12$, \; $y_u=-\frac12$, \; $y_v=\frac12$:
$$\frac{\partial(x,y)}{\partial(u,v)}=\begin{vmatrix} \frac12 & \frac12 \\[2pt] -\frac12 & \frac12 \end{vmatrix}=\frac12\cdot\frac12-\frac12\cdot\left(-\frac12\right)=\frac14+\frac14=\frac12$$
so $dA=\frac12\,du\,dv$}
\stepdown
\stepbox{6. BUILD THE INTEGRAL IN $uv$}{$$\int_0^1\!\!\int_{-v}^{v} e^{u/v}\cdot\frac12\,du\,dv$$}
\stepdown
\stepbox{7. INNER — $v$ IS FROZEN, SO $\frac1v$ IS A CONSTANT}{$\dfrac{d}{du}e^{u/v}=\dfrac1v e^{u/v}$, so the antiderivative of $e^{u/v}$ is $v\,e^{u/v}$:
$$\frac12\int_{-v}^{v}\!e^{u/v}\,du=\frac12\Big[v\,e^{u/v}\Big]_{-v}^{v}=\frac{v}{2}\left(e^{1}-e^{-1}\right)$$}
\stepdown
\stepbox{8. OUTER}{$$\frac{e-e^{-1}}{2}\int_0^1\! v\,dv=\frac{e-e^{-1}}{2}\Big[\frac{v^2}{2}\Big]_0^1=\frac{e-e^{-1}}{2}\cdot\frac12=\keyres{\frac{e-\frac1e}{4}}$$}
\par\vspace{2pt}
\begin{center}
\begin{tikzpicture}[scale=0.72, font=\tiny]
\draw[white!45,->] (-0.25,0)--(2.0,0) node[right] {$x$};
\draw[white!45,->] (0,-0.25)--(0,2.0) node[above] {$y$};
\fill[termHi, opacity=0.22] (0,0)--(1.6,0)--(0,1.6)--cycle;
\draw[keyHi, very thick] (0,0)--(1.6,0);
\draw[warnHi, very thick] (0,0)--(0,1.6);
\draw[duHi, very thick] (1.6,0)--(0,1.6);
\node[text=keyHi, anchor=north] at (0.8,-0.06) {$y{=}0$};
\node[text=warnHi, anchor=east] at (-0.06,0.8) {$x{=}0$};
\node[text=duHi, anchor=south west] at (0.85,0.85) {$x{+}y{=}1$};
\node[text=white!75, anchor=north] at (0.8,-0.45) {$T$ in $xy$};
\begin{scope}[xshift=118pt]
\draw[white!45,->] (-1.85,0)--(1.85,0) node[right] {$u$};
\draw[white!45,->] (0,-0.25)--(0,2.0) node[above] {$v$};
\fill[termHi, opacity=0.22] (0,0)--(1.6,1.6)--(-1.6,1.6)--cycle;
\draw[keyHi, very thick] (0,0)--(1.6,1.6);
\draw[warnHi, very thick] (0,0)--(-1.6,1.6);
\draw[duHi, very thick] (-1.6,1.6)--(1.6,1.6);
\node[text=keyHi, anchor=north west] at (1.0,0.95) {$u{=}v$};
\node[text=warnHi, anchor=north east] at (-1.0,0.95) {$u{=}{-}v$};
\node[text=duHi, anchor=south] at (0,1.62) {$v{=}1$};
\node[text=white!75, anchor=north] at (0,-0.45) {$S$ in $uv$};
\end{scope}
\end{tikzpicture}
\par
{\scriptsize the same three edges, colour for colour: the map straightens the awkward hypotenuse into $v=1$ and turns the impossible exponent into $e^{u/v}$}
\end{center}
\keyres{The aha} — the whole thread closes here. Polar and spherical were never special coordinate systems. They are \keyres{two substitutions somebody already chose for you}, and their $r$ and $\rho^2\sin\varphi$ are just this determinant, evaluated once and memorised. When no stock system fits, \keyres{read the integrand and invent the map}. The Jacobian is the fee, and — as every rescue above showed — usually the payoff too.
\par\vspace{2pt}
\filbreak \subsubsection{Common pitfalls (change of variables)}
\begin{itemize}
\item \warn{Take the absolute value} of the determinant. A negative Jacobian only means the map flips orientation. Area and volume are never negative.
\item \warn{Direction matters}: $\frac{\partial(x,y)}{\partial(u,v)}$ converts $du\,dv$ into $dA$. If you built $\frac{\partial(u,v)}{\partial(x,y)}$ instead, you need its \keyres{reciprocal} — they multiply to $1$.
\item \warn{Convert the region, not just the integrand} — map \keyres{every boundary edge} into the $uv$-plane. A perfect Jacobian over the wrong region is still the wrong answer.
\item \warn{Invert the map before differentiating}: the matrix wants $x$ and $y$ \emph{as functions of} $u$ and $v$. Solving $u=x-y$, $v=x+y$ for $x$ and $y$ is step zero, not an optional tidy-up.
\item The determinant may still \keyres{carry variables} ($r$, $\rho^2\sin\varphi$) — it is a function, not a number, and it rides inside the integral.
\end{itemize}

\end{multicols}

\Needspace*{24\baselineskip}
\vspace*{\fill}
\noindent\rule{\linewidth}{0.5pt}
\begin{center}\small\textbf{Legend}\end{center}
\vspace{-3pt}
\begin{multicols}{4}
\small
\textbf{Color \& notes}\\
\textcolor{funcHi}{functions $f,g,\sin$}\\
\textcolor{varHi}{variables $x,y,n$}\\
\textcolor{numHi}{numbers $0$--$9$}\\
\textcolor{opHi}{operators $+\,-\,=$}\\
\textcolor{delimHi}{delimiters $(\,)\,[\,]$}\\
titles in white\\
\term{labels} $\cdot$ \keyres{results} $\cdot$ \warn{pitfalls}\\
\ubox{u}\,/\,\dubox{du} substitution
\columnbreak

\textbf{Greek}\\
\emph{constants (fixed values):}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\pi$ & $\approx 3.14159$\\
$\gamma$ & fluid wt density\\
$\rho$ & weight per length\\
\end{tabular}\\[2pt]
\emph{variable \& operators:}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\theta$ & angle (varies)\\
$\Delta$ & ``change in''\\
$\Sigma$ & sum of terms\\
\end{tabular}\\[2pt]
\emph{notation, not values:}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\Theta\,\Omega\,\omega$ & growth rate, like $O$\\
\end{tabular}
\columnbreak

\textbf{Calculus \& relations}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\int$ & integral\\
$\textstyle\sum$ & sum\\
$\lim$ & limit\\
$\infty$ & infinity\\
$\to$ & approaches\\
$\Rightarrow$ & implies\\
$\Leftrightarrow$ & iff\\
$\sqrt{\ }$ & root\\
$\approx$ & approx\\
$\neq\,\leq\,\geq$ & compare\\
$\pm\,\mp$ & plus / minus\\
$\cdot\,\times\,\div$ & mult / div\\
$\circ$ & compose\\
\end{tabular}\\[2pt]
\textbf{Vectors}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\langle\,\rangle$ & components\\
$\|\vec v\|$ & magnitude\\
$\vec v,\ \hat v$ & vector, unit\\
$\mathbf{i\,j\,k}$ & basis\\
$\vec u\cdot\vec v$ & dot product\\
$\mathrm{proj}$ & projection\\
\end{tabular}
\columnbreak

\textbf{Logic \& sets}\\
\begin{tabular}{@{}r@{\ \ }l@{}}
$\forall$ & for all\\
$\exists$ & exists\\
$\neg$ & not\\
$\wedge\,\vee$ & and / or\\
$\oplus$ & xor / sym.\,diff\\
$\in\,\notin$ & in / not in\\
$\subseteq\,\subset$ & subset\\
$\cup\,\cap$ & union / inter.\\
$\setminus$ & set minus\\
$\equiv$ & equiv / congruent\\
$\mid$ & divides / $|x|$ / s.t.\\
$\lceil\ \rceil$ & ceiling\\
$\binom{n}{k}$ & choose\\
$\deg$ & degree\\
$\bmod$ & modulo\\
\end{tabular}
\end{multicols}

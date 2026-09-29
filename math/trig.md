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


\section{Trigonometry}
\begin{center}
\begin{tikzpicture}[scale=4.0, every node/.style={white, font=\scriptsize, align=center, inner sep=1pt}]
%% Axis guides stop AT the circle — labels at r>1 are never covered
\draw[white!22, thin] (-1,0)--(1,0);
\draw[white!22, thin] (0,-1)--(0,1);
%% Circle
\draw[white, semithick] (0,0) circle(1);
%% Radial lines for all 16 standard angles
\foreach \a in {0,30,45,60,90,120,135,150,180,210,225,240,270,300,315,330} {
\draw[white!20, very thin] (0,0)--(\a:1);
\fill[white] (\a:1) circle(0.45pt);
}
%%
%% Labels: line 1 = degrees / radian, line 2 = (cos, sin)
%% 30-family at r=1.18 (outer ring), 45-family + cardinals at r=1.10 (inner ring)
%%
%% --- cardinals ---
\node[anchor=west] at ( 0:1.10) {$0^\circ\;/\;0,\,2\pi$\\$(1,\;0)$};
\node[anchor=south] at ( 90:1.10) {$90^\circ\;/\;\tfrac{\pi}{2}$\\$(0,\;1)$};
\node[anchor=east] at (180:1.10) {$180^\circ\;/\;\pi$\\$({-}1,\;0)$};
\node[anchor=north] at (270:1.10) {$270^\circ\;/\;\tfrac{3\pi}{2}$\\$(0,\;{-}1)$};
%% --- 45-family (r=1.10) ---
\node[anchor=south] at ( 45:1.10) {$45^\circ\;/\;\tfrac{\pi}{4}$\\$\bigl(\tfrac{\sqrt{2}}{2},\tfrac{\sqrt{2}}{2}\bigr)$};
\node[anchor=south east] at (135:1.10) {$135^\circ\;/\;\tfrac{3\pi}{4}$\\$\bigl({-}\tfrac{\sqrt{2}}{2},\tfrac{\sqrt{2}}{2}\bigr)$};
\node[anchor=north east] at (225:1.10) {$225^\circ\;/\;\tfrac{5\pi}{4}$\\$\bigl({-}\tfrac{\sqrt{2}}{2},{-}\tfrac{\sqrt{2}}{2}\bigr)$};
\node[anchor=north] at (315:1.10) {$315^\circ\;/\;\tfrac{7\pi}{4}$\\$\bigl(\tfrac{\sqrt{2}}{2},{-}\tfrac{\sqrt{2}}{2}\bigr)$};
%% --- 30-family (r=1.18, interleaved outer ring) ---
\node[anchor=south west] at ( 30:1.18) {$30^\circ\;/\;\tfrac{\pi}{6}$\\$\bigl(\tfrac{\sqrt{3}}{2},\tfrac{1}{2}\bigr)$};
\node[anchor=south] at ( 60:1.18) {$60^\circ\;/\;\tfrac{\pi}{3}$\\$\bigl(\tfrac{1}{2},\tfrac{\sqrt{3}}{2}\bigr)$};
\node[anchor=south east] at (120:1.18) {$120^\circ\;/\;\tfrac{2\pi}{3}$\\$\bigl({-}\tfrac{1}{2},\tfrac{\sqrt{3}}{2}\bigr)$};
\node[anchor=east] at (150:1.18) {$150^\circ\;/\;\tfrac{5\pi}{6}$\\$\bigl({-}\tfrac{\sqrt{3}}{2},\tfrac{1}{2}\bigr)$};
\node[anchor=east] at (210:1.18) {$210^\circ\;/\;\tfrac{7\pi}{6}$\\$\bigl({-}\tfrac{\sqrt{3}}{2},{-}\tfrac{1}{2}\bigr)$};
\node[anchor=north east] at (240:1.18) {$240^\circ\;/\;\tfrac{4\pi}{3}$\\$\bigl({-}\tfrac{1}{2},{-}\tfrac{\sqrt{3}}{2}\bigr)$};
\node[anchor=north] at (300:1.18) {$300^\circ\;/\;\tfrac{5\pi}{3}$\\$\bigl(\tfrac{1}{2},{-}\tfrac{\sqrt{3}}{2}\bigr)$};
\node[anchor=north west] at (330:1.18) {$330^\circ\;/\;\tfrac{11\pi}{6}$\\$\bigl(\tfrac{\sqrt{3}}{2},{-}\tfrac{1}{2}\bigr)$};
\end{tikzpicture}
\end{center}

\begin{multicols}{3}

\filbreak \subsection{degrees $\leftrightarrow$ radians}
\begin{itemize}
\item $\deg \times \frac{\pi}{180} = \text{rad}$
\vspace{8pt}
\item $\text{rad} \times \frac{180}{\pi} = \deg$
\end{itemize}

\vspace{10pt}

\begin{tabular}{c|ccccc}
$\deg$ & $0^\circ$ & $30^\circ$ & $45^\circ$ & $60^\circ$ & $90^\circ$ \\\hline
$\text{rad}$ & $0$ & $\frac{\pi}{6}$ & $\frac{\pi}{4}$ & $\frac{\pi}{3}$ & $\frac{\pi}{2}$ \\[2pt]
\end{tabular}

\vspace{4pt}
\term{Example}: $135^\circ\times\frac{\pi}{180}=\keyres{\tfrac{3\pi}{4}}$ \qquad $\frac{5\pi}{6}\times\frac{180}{\pi}=\keyres{150^\circ}$

\filbreak \subsection{root-$n$ pattern}
$\sin\theta = \frac{\sqrt{n}}{2}$,  $\cos\theta = \frac{\sqrt{4-n}}{2}$
\vspace{10pt}

\begin{tabular}{c|ccccc}
$\theta$ & $0^\circ$ & $30^\circ$ & $45^\circ$ & $60^\circ$ & $90^\circ$ \\\hline
$\sin$ & $0$ & $\frac{1}{2}$ & $\frac{\sqrt{2}}{2}$ & $\frac{\sqrt{3}}{2}$ & $1$ \\[3pt]
$\cos$ & $1$ & $\frac{\sqrt{3}}{2}$ & $\frac{\sqrt{2}}{2}$ & $\frac{1}{2}$ & $0$ \\[3pt]
\end{tabular}


\filbreak \subsection{key identities}

\subsubsection{pythagorean}
\begin{itemize}
\item $\sin^2\theta + \cos^2\theta = 1$
\item $1 + \tan^2\theta = \sec^2\theta$
\item $1 + \cot^2\theta = \csc^2\theta$
\end{itemize}

\filbreak \subsubsection{Worked: $\sin\theta=\frac35$, $\theta$ in QII — find $\cos\theta$, $\tan\theta$}
\stepbox{1. PYTHAGOREAN}{$\cos^2\theta=1-\sin^2\theta=1-\big(\tfrac35\big)^2=1-\tfrac{9}{25}=\tfrac{16}{25} \;\Rightarrow\; \cos\theta=\pm\tfrac45$}
\stepdown
\stepbox{2. QUADRANT PICKS THE SIGN}{QII: $x<0$ $\Rightarrow$ $\cos\theta=\keyres{-\tfrac45}$}
\stepdown
\stepbox{3. QUOTIENT}{$\tan\theta=\dfrac{3/5}{-4/5}=\keyres{-\tfrac34}$}

\filbreak \subsubsection{quotient / reciprocal}
\begin{itemize}
\item $\tan\theta = \dfrac{\sin\theta}{\cos\theta} = \dfrac{y}{x}$
\item $\cot\theta = \dfrac{\cos\theta}{\sin\theta}$
\item $\sec\theta = \dfrac{1}{\cos\theta}$ 
\item $\csc\theta = \dfrac{1}{\sin\theta}$
\item Unit circle: $(\cos\theta,\,\sin\theta) = (x,\,y)$
\end{itemize}

\filbreak \subsection{sum \& difference}
$\sin(A\pm B) = \sin A\cos B \pm \cos A\sin B$

$\cos(A\pm B) = \cos A\cos B \mp \sin A\sin B$

$\tan(A\pm B) = \dfrac{\tan A \pm \tan B}{1 \mp \tan A\tan B}$

\filbreak \subsubsection{Worked: exact $\cos 15^\circ$}
\stepbox{1. SPLIT INTO KNOWN ANGLES}{$15^\circ=45^\circ-30^\circ$}
\stepdown
\stepbox{2. APPLY $\cos(A-B)$}{$\cos45^\circ\cos30^\circ+\sin45^\circ\sin30^\circ$}
\stepdown
\stepbox{3. EXACT VALUES}{$\tfrac{\sqrt2}{2}\cdot\tfrac{\sqrt3}{2}+\tfrac{\sqrt2}{2}\cdot\tfrac12=\tfrac{\sqrt6}{4}+\tfrac{\sqrt2}{4}=\keyres{\tfrac{\sqrt6+\sqrt2}{4}}$}

\filbreak \subsection{double angle}
\begin{itemize}
\item $\sin 2A = 2\sin A\cos A$
\item $\cos 2A = \cos^2\!A - \sin^2\!A = 2\cos^2\!A - 1 = 1 - 2\sin^2\!A$
\item $\tan 2A = \dfrac{2\tan A}{1 - \tan^2 A}$
\end{itemize}
Pick the $\cos2A$ form matching what you \emph{know}: know $\sin\to1-2\sin^2\!A$; know $\cos\to2\cos^2\!A-1$; both $\to\cos^2\!A-\sin^2\!A$.

\filbreak \subsubsection{Worked: $\sin2\theta$, $\cos2\theta$ for $\sin\theta=\frac35$, QII}
\stepbox{1. GET THE MISSING PARTNER}{from the Pythagorean worked above: $\cos\theta=-\tfrac45$}
\stepdown
\stepbox{2. DOUBLE ANGLE}{$\sin2\theta=2\sin\theta\cos\theta=2\cdot\tfrac35\cdot\big({-}\tfrac45\big)=\keyres{-\tfrac{24}{25}}$}
\stepdown
\stepbox{3. PICK THE FORM YOU KNOW}{know $\sin$:
$$\cos2\theta=1-2\sin^2\theta=1-2\big(\tfrac35\big)^2$$
$$=1-2\cdot\tfrac{9}{25}=1-\tfrac{18}{25}=\keyres{\tfrac{7}{25}}$$}
\filbreak \subsection{power reduction / half angle}
$\sin^2\theta = \dfrac{1-\cos 2\theta}{2}$ \quad $\cos^2\theta = \dfrac{1+\cos 2\theta}{2}$

$\sin\dfrac{A}{2} = \pm\sqrt{\dfrac{1-\cos A}{2}}$ \quad $\cos\dfrac{A}{2} = \pm\sqrt{\dfrac{1+\cos A}{2}}$

The $\pm$ is \warn{not optional} — the quadrant of $\frac A2$ (\warn{not} of $A$) decides it.

\filbreak \subsubsection{Worked: exact $\sin 22.5^\circ$}
\stepbox{1. WRITE AS A HALF}{$22.5^\circ=\tfrac{45^\circ}{2}$: \; $\pm\sqrt{\tfrac{1-\cos45^\circ}{2}}$}
\stepdown
\stepbox{2. RESOLVE THE SIGN}{$22.5^\circ$ is QI $\Rightarrow$ $\sin>0$ $\Rightarrow$ take $+$}
\stepdown
\stepbox{3. SIMPLIFY}{$\sqrt{\tfrac{1-\sqrt2/2}{2}}=\sqrt{\tfrac{2-\sqrt2}{4}}=\keyres{\tfrac{\sqrt{2-\sqrt2}}{2}}$}

\filbreak \subsection{law of sines \& cosines}
For $\triangle ABC$ with sides $a,b,c$ opposite $A,B,C$:

\textit{sines}: $\dfrac{a}{\sin A} = \dfrac{b}{\sin B} = \dfrac{c}{\sin C}$
\par\nopagebreak\vspace{6pt}
\textit{cosines}: $c^2 = a^2 + b^2 - 2ab\cos C$; \; solved for the angle: $\cos C=\dfrac{a^2+b^2-c^2}{2ab}$

\filbreak \subsubsection{Worked: sides $3,5,7$ — the largest angle}
\stepbox{1. SOLVE FOR THE ANGLE OPPOSITE $c=7$}{$\cos C=\dfrac{9+25-49}{2\cdot3\cdot5}=\dfrac{-15}{30}=-\tfrac12$}
\stepdown
\stepbox{2. ARCCOS}{$C=\arccos\big({-}\tfrac12\big)=\keyres{120^\circ}$ \; \emph{\scriptsize(negative cosine $\Rightarrow$ obtuse, automatically)}}
\par\vspace{2pt}
\warn{SSA caution}: law of \emph{sines} with two sides + a non-included angle can give $0$, $1$, or $2$ triangles — always test the supplement $180^\circ-\theta$ as a second candidate.

\filbreak \subsection{polar coordinates}
$(x,y)\!\to\!(r,\theta)$: \; $r=\sqrt{x^2+y^2}$, \; $\theta=\arctan\!\left(\dfrac{y}{x}\right)$

\warn{Quadrant check}: $\arctan$ only returns QI/QIV angles. If $x<0$ (QII/QIII), add $180^\circ$ ($\pi$) to $\theta$.

$(r,\theta)\!\to\!(x,y)$: \; $x=r\cos\theta$, \; $y=r\sin\theta$

\filbreak \subsubsection{Worked: $(-3,3)\to(r,\theta)$ — quadrant fix, live}
\stepbox{1. RADIUS}{$r=\sqrt{(-3)^2+3^2}=\sqrt{9+9}=\sqrt{18}=3\sqrt2$}
\stepdown
\stepbox{2. RAW ARCTAN}{$\arctan\!\big(\tfrac{3}{-3}\big)=\arctan(-1)=-45^\circ$ \; \emph{\scriptsize(a QIV angle — but the point sits in QII)}}
\stepdown
\stepbox{3. QUADRANT FIX}{$x<0$: add $180^\circ$: $\theta=135^\circ$ \;$\Rightarrow$\; $\keyres{(3\sqrt2,\ 135^\circ)}$}
\par\vspace{2pt}
Reverse direction — no traps: $(4,\tfrac{2\pi}{3})$: \; $x=4\cos\tfrac{2\pi}{3}=-2$, \; $y=4\sin\tfrac{2\pi}{3}=2\sqrt3$.

\filbreak \subsubsection{Worked: polar equation $\to$ rectangular: $r=2\cos\theta$}
\stepbox{1. MULTIPLY BY $r$}{$r^2=2r\cos\theta$ \; \emph{\scriptsize(manufactures the convertible pieces)}}
\stepdown
\stepbox{2. SUBSTITUTE}{$r^2=x^2+y^2$, \; $r\cos\theta=x$: \quad $x^2+y^2=2x$}
\stepdown
\stepbox{3. COMPLETE THE SQUARE}{move the $x$'s together, add $\big(\tfrac{2}{2}\big)^2=1$ to both sides, factor: $$x^2-2x+y^2=0 \;\to\; x^2-2x+1+y^2=1 \;\to\; (x-1)^2+y^2=\keyres{1}$$ — circle, center $(1,0)$, radius $1$}

\filbreak \subsection{vectors}
$\vec{v}=\langle v_1,v_2\rangle$ \quad $|\vec{v}|=\sqrt{v_1^2+v_2^2}$ \quad $\hat{v}=\dfrac{\vec{v}}{|\vec{v}|}$

$\vec{u}\cdot\vec{v} = u_1v_1+u_2v_2 = |\vec{u}||\vec{v}|\cos\theta$

$\mathrm{proj}_{\vec{v}}\vec{u} = \dfrac{\vec{u}\cdot\vec{v}}{|\vec{v}|^2}\,\vec{v}$ \quad $\mathrm{comp}_{\vec{v}}\vec{u} = \dfrac{\vec{u}\cdot\vec{v}}{|\vec{v}|}$

\filbreak \subsubsection{Worked: $\vec u=\langle3,4\rangle$, $\vec v=\langle5,0\rangle$}
\stepbox{1. DOT \& MAGNITUDES}{$\vec u\cdot\vec v=15$, \quad $|\vec u|=5$, \; $|\vec v|=5$}
\stepdown
\stepbox{2. ANGLE}{$\cos\theta=\tfrac{15}{25}=\tfrac35 \;\Rightarrow\; \theta=\arccos(0.6)\approx\keyres{53.1^\circ}$}
\stepdown
\stepbox{3. PROJECTION ONTO $\vec v$}{$\mathrm{comp}_{\vec v}\vec u=\tfrac{15}{5}=\keyres{3}$, \quad $\mathrm{proj}_{\vec v}\vec u=\tfrac{15}{25}\langle5,0\rangle=\keyres{\langle3,0\rangle}$ \; \emph{\scriptsize($\vec v$ rides the $x$-axis: the projection is $\vec u$'s shadow on it)}}

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

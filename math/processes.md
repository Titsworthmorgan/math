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


\section{Calculus I — Limits \& Derivatives}

\begin{multicols}{2}


\filbreak \subsection{limits}
\filbreak \subsubsection{Which technique? — try them in this order}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{1}} & \term{Substitute.} If you get a number, that is the limit. \keyres{Always try this first.} \\[2pt]
\textcolor{keyHi}{\textbf{2}} & Got $\frac00$ $\Rightarrow$ \term{algebraic techniques}: factor and cancel, multiply by the conjugate, or clear a complex fraction. \\[2pt]
\textcolor{keyHi}{\textbf{3}} & Still $\frac00$ or $\frac{\infty}{\infty}$ $\Rightarrow$ \term{L'H\^opital's rule}. Differentiate top and bottom \keyres{separately}. \\[2pt]
\textcolor{keyHi}{\textbf{4}} & Trapped between two bounds, or a $\sin\frac1x$ factor $\Rightarrow$ \term{squeeze theorem}. \\[2pt]
\textcolor{keyHi}{\textbf{5}} & $x\to\pm\infty$ on a rational function $\Rightarrow$ \term{compare leading exponents}. \\[2pt]
\textcolor{keyHi}{\textbf{6}} & A piecewise split, or $|x|$ at its zero $\Rightarrow$ \term{one-sided limits}. They must agree. \\
\end{tabular}}
\par\vspace{2pt}
\warn{A number over zero is not $\frac00$} — that is an infinite limit or a vertical asymptote, and no technique above applies.
\par\vspace{2pt}

\filbreak \subsection{discontinuities}
\filbreak \subsubsection{Which kind? — test in this order}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{removable} — the two-sided limit \keyres{exists} but misses $f(c)$, or $f(c)$ is undefined. A \keyres{hole}. Fix it by redefining one point. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{jump} — both one-sided limits exist but \warn{disagree}. Typical of a piecewise split. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{infinite} — a one-sided limit runs to $\pm\infty$. A \keyres{vertical asymptote}. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE TEST}{
\textbf{1.} \term{Compute} both one-sided limits.\\
\textbf{2.} \term{Do they disagree?} That is a \keyres{jump}.\\
\textbf{3.} \term{Is either infinite?} That is an \keyres{infinite} discontinuity.\\
\textbf{4.} \term{Do they agree but miss $f(c)$?} That is \keyres{removable}.}
\par\vspace{2pt}

\filbreak \subsection{related rates}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Draw} the picture and name every changing quantity.\\
\textbf{2.} \term{Write the equation} that ties them together. \warn{Geometry, not calculus.}\\
\textbf{3.} \term{Differentiate both sides with respect to $t$.} Every variable gets a $\frac{d}{dt}$ by the chain rule.\\
\textbf{4.} \term{Substitute the instant} — the given values and rates. \warn{Substitute only now, never in step 2.}\\
\textbf{5.} \term{Solve} for the unknown rate.}
\par\vspace{2pt}
\filbreak \subsubsection{Which equation ties them together?}
{\small
\begin{tabular}{@{}p{0.34\linewidth}@{}p{0.66\linewidth}@{}}
\textcolor{termHi}{\textbf{the picture shows}} & \textcolor{termHi}{\textbf{the equation}} \\[1pt]
a right triangle, ladder, shadow & $a^2+b^2=c^2$ \\
similar triangles & a ratio of matching sides \\
a cone or a cylinder filling & $V$ formula, then eliminate a variable with a ratio \\
an angle changing & $\tan\theta=\frac{\text{opp}}{\text{adj}}$ \\
area or volume growing & the area or volume formula \\
\end{tabular}}
\par\vspace{2pt}

\filbreak \subsection{optimization (one variable)}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Name} the quantity to maximize or minimize. Write it as an equation.\\
\textbf{2.} \term{Find the constraint} — the second relationship in the problem.\\
\textbf{3.} \term{Substitute the constraint} to reduce to \keyres{one variable}.\\
\textbf{4.} \term{State the domain.} A length cannot be negative.\\
\textbf{5.} \term{Differentiate, set to zero}, and solve.\\
\textbf{6.} \term{Test the candidates} and the \keyres{endpoints}, then answer the question asked.}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Calculus II — Integration}

\begin{multicols}{2}


\filbreak \subsection{integration by parts (IBP)}
\filbreak \subsubsection{IBP vs u-sub — which one?}
\begin{itemize}
\item \keyres{u-sub}: a composition \emph{and} its derivative is present elsewhere.
\item \keyres{IBP}: a product of unrelated functions, no inside-derivative.
\end{itemize}
\par\vspace{2pt}

\filbreak \subsection{area between curves}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} both curves.\\
\textbf{2.} \term{Find every intersection.} Solve $f(x)=g(x)$.\\
\textbf{3.} \term{Choose the slice direction} — vertical ($dx$) or horizontal ($dy$).\\
\textbf{4.} \term{Integrate the gap}: $(\text{top}-\text{bottom})\,dx$, or $(\text{right}-\text{left})\,dy$.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 3 decoded — three region shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{$dx$} — one curve stays on top across the whole interval. $\displaystyle\int_a^b\left(\text{top}-\text{bottom}\right)dx$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{$dy$} — the region reads better left-to-right. \keyres{Solve both curves for $x$ first}, then $\displaystyle\int_c^d\left(\text{right}-\text{left}\right)dy$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{curves cross inside} the interval $\Rightarrow$ \warn{split at each crossing}. The top curve changes there. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{Intersections} — set $f(x)=g(x)$ and solve. These are the limits, or the split points.\\
\textbf{2.} \term{Which curve is on top} — test one interior point. \warn{Do not guess from the formulas.}\\
\textbf{3.} \term{Solve for $x$} when you slice horizontally: $y=x^2 \Rightarrow x=\sqrt{y}$.}
\par\vspace{2pt}
\par\vspace{2pt}

\filbreak \subsection{volumes of revolution}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} the region and draw the axis.\\
\textbf{2.} \term{Choose the slice} — perpendicular to the axis (disc or washer), or parallel to it (shell).\\
\textbf{3.} \term{Write each radius} as a \keyres{distance from the axis}.\\
\textbf{4.} \term{Integrate.}}
\par\vspace{2pt}
\filbreak \subsubsection{Step 2 decoded — disc, washer or shell?}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{disc} — slice $\perp$ axis, and the region \keyres{touches} the axis: \; $V=\pi\displaystyle\int R^2$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{washer} — slice $\perp$ axis, but a \keyres{gap} sits between region and axis: \; $V=\pi\displaystyle\int\left(R_{\text{out}}^2-R_{\text{in}}^2\right)$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{shell} — slice $\parallel$ axis: \; $V=2\pi\displaystyle\int(\text{radius})(\text{height})$ \\
\end{tabular}}
\par\vspace{2pt}
Discs and washers integrate in the \keyres{axis variable}; shells integrate in the \keyres{other one}. If solving the curve for the other variable is ugly, switch method rather than fight it.
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{Intersections} — where the region starts and stops.\\
\textbf{2.} \term{The radius.} About $y=k$ the radius is \keyres{$|k-y|$}, \warn{not $y$}. Draw the arrow from axis to curve.\\
\textbf{3.} \term{Solve for the other variable} when the slice direction needs it: $y=\sqrt{x} \Rightarrow x=y^2$.}
\par\vspace{2pt}
\par\vspace{2pt}

\filbreak \subsection{work (springs \& pumping)}
\stepbox{THE PROCESS — ALL THREE KINDS}{
\textbf{1.} \term{Slice} the object or the fluid.\\
\textbf{2.} \term{Write the force} on one slice.\\
\textbf{3.} \term{Write the distance} that same slice moves. \warn{Different slices move different distances.}\\
\textbf{4.} \term{Integrate} force $\times$ distance.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — three kinds of work}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{spring} — force varies, distance is the same. \keyres{Force $=kx$}, so $W=\displaystyle\int_a^b kx\,dx$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{lifting a cable or chain} — force varies as rope leaves the load. Slice the \keyres{rope}. \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{pumping fluid} — every slice has the same force law but a \keyres{different distance to travel}. Slice the \keyres{fluid} horizontally. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE THREE THINGS YOU SOLVE}{
\textbf{1.} \term{The constant $k$} — from one given force and stretch: $F=kx$.\\
\textbf{2.} \term{The weight of one slice} — density $\times$ volume for fluid, mass per length for rope.\\
\textbf{3.} \term{The distance that slice moves} — measure from the slice to its \keyres{destination}, not to the origin.}
\par\vspace{2pt}
\par\vspace{2pt}

\filbreak \subsection{hydrostatic force}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Draw the plate} and choose a depth variable.\\
\textbf{2.} \term{Take a horizontal strip} at depth $h$.\\
\textbf{3.} \term{Write the strip width} as a function of that depth.\\
\textbf{4.} \term{Integrate} $\rho g\,\times$ depth $\times$ width.}
\par\vspace{2pt}

\filbreak \subsection{improper integrals}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Find the bad point} — an infinite bound, or where the integrand blows up.\\
\textbf{2.} \term{Replace it} with a limit variable.\\
\textbf{3.} \term{Integrate} normally.\\
\textbf{4.} \term{Take the limit.} If it is finite, the integral \keyres{converges}. If not, it \warn{diverges}.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 1 decoded — three kinds}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{Type 1} — an \keyres{infinite bound}: $\displaystyle\int_1^{\infty}$ \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{Type 2, endpoint} — the integrand blows up \keyres{at $a$ or $b$}: $\displaystyle\int_0^1\frac{dx}{\sqrt{x}}$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{Type 2, interior} — the blow-up sits \warn{inside} the interval. \keyres{Split there first}, and \warn{both halves must converge}. \\
\end{tabular}}
\par\vspace{2pt}
\warn{C is the trap}: $\int_{-1}^{1}\frac{dx}{x^2}$ looks routine and is divergent. \keyres{Check the integrand for a zero denominator before you integrate anything.}
\par\vspace{2pt}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Vector Calculus}

\begin{multicols}{2}


\filbreak \subsection{cross product (3D only)}
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
\par\vspace{2pt}

\filbreak \subsection{lines \& planes in space}
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
\par\vspace{2pt}

\filbreak \subsection{vector-valued functions (space curves)}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Write two letters} — $\vec r_1(t)$ and $\vec r_2(s)$. \warn{Reusing $t$ silently asks the collide question.}\\
\textbf{2.} \term{Set the components equal} — that is three equations.\\
\textbf{3.} \term{Solve two} of them for $t$ and $s$.\\
\textbf{4.} \term{Check the third.} If it fails, \keyres{the curves do not intersect}.\\
\textbf{5.} \term{Report the point}, not the parameters — substitute back.}
\par\vspace{2pt}

\filbreak \subsection{calculus of vector-valued functions}
\stepbox{THE PROCESS — WORK COMPONENTWISE}{
\textbf{1.} \term{Differentiate or integrate each component} on its own. The vector structure never interferes.\\
\textbf{2.} \term{Add the constant vector} $\vec C$ after every integration.\\
\textbf{3.} \term{Use products carefully} — the dot and cross rules follow the ordinary product rule, but \warn{the cross product does not commute}, so keep the order.}
\par\vspace{2pt}

\filbreak \subsection{arc length}
\filbreak \subsubsection{The routine — same four moves every time}
Differentiate componentwise $\to$ square \& sum the slots $\to$ \keyres{simplify under the root} $\to$ integrate.
\begin{itemize}
\item \warn{Never integrate the raw root.} Problems are rigged so the radicand collapses to a \keyres{constant} (trig slots — Pythagorean identity) or a \keyres{perfect square} ($(A+B)^2$ — check: middle term $=2AB$). If it won't collapse, hunt the missed identity.
\item \term{"Set up only"} $\Rightarrow$ stop at the integral.
\end{itemize}
\par\vspace{2pt}

\filbreak \subsection{motion in space}
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
\par\vspace{2pt}

\filbreak \subsection{multivariable limits \& continuity}
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
\par\vspace{2pt}

\filbreak \subsection{partial derivatives}
\stepbox{READING ANY RATE}{
\textbf{Units} $=\dfrac{\text{units of the output}}{\text{units of the input that varies}}$ \; — read them straight off the problem statement.\\[2pt]
\textbf{Sign} $=$ \keyres{increasing} or \keyres{decreasing} as that one input grows.\\[2pt]
\warn{$f_x$ holds $y$ fixed.} It describes motion \keyres{parallel to the $x$-axis} and says nothing about any other direction.}
\par\vspace{2pt}

\filbreak \subsection{tangent planes \& linear approximation}
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
\par\vspace{2pt}

\filbreak \subsection{multivariable chain rule}
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
\par\vspace{2pt}

\filbreak \subsection{directional derivatives \& the gradient}
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
\par\vspace{2pt}

\filbreak \subsection{max/min — critical points \& the second derivative test}
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
\par\vspace{2pt}

\filbreak \subsection{double integrals — rectangular regions}
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
\par\vspace{2pt}

\filbreak \subsection{double integrals — general regions}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Sketch} the region. \warn{Limits come from the picture}, never from the integrand.\\
\textbf{2.} \term{Pick a slice direction} — vertical (Type I) or horizontal (Type II).\\
\textbf{3.} \term{Run one test slice}: where does it \keyres{enter}, where does it \keyres{exit}? Those are the inner limits.\\
\textbf{4.} \term{How far do slices sweep?} That range is the outer limits — \keyres{numbers}.\\
\textbf{5.} \term{Integrate inside out.}}
\par\vspace{2pt}
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
\par\vspace{2pt}
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
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Set up the region once.} The limits serve both integrals.\\
\textbf{2.} \term{Integrate $f$} over it — the numerator.\\
\textbf{3.} \term{Integrate $1$} over it — the denominator.\\
\textbf{4.} \term{Divide.}}
\par\vspace{2pt}

\filbreak \subsection{double integrals — polar coordinates}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Region} $\to$ polar: \keyres{rays give $\theta$}, \keyres{arcs and curves give $r$}.\\
\textbf{2.} \term{Integrand} $\to$ polar: every $x$ and $y$, \warn{no exceptions}.\\
\textbf{3.} \term{Attach the $r$} — $dA=r\,dr\,d\theta$, even when the integrand never asked.\\
\textbf{4.} \term{Integrate inside out}, $r$ first.}
\par\vspace{2pt}
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
\par\vspace{2pt}
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
\par\vspace{2pt}

\filbreak \subsection{triple integrals — rectangular coordinates}
\stepbox{THE PROCESS — EVERY TRIPLE INTEGRAL, NO EXCEPTIONS}{
\textbf{1.} \term{Inner variable} — pick the one \keyres{trapped between two surfaces}.\\
\textbf{2.} \term{Solve} both of those surfaces \keyres{for that variable} $\Rightarrow$ inner limits.\\
\textbf{3.} \term{Project} the solid onto the plane of the \keyres{other two} $\Rightarrow$ the \term{shadow}.\\
\textbf{4.} \term{Read the shadow} as a §5.2 Type I/II region $\Rightarrow$ middle \& outer limits.\\
\textbf{5.} \term{Integrate inside out} — each pass kills one variable.}
\par\vspace{2pt}
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
\par\vspace{2pt}
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
\par\vspace{2pt}
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
\par\vspace{2pt}
\stepbox{THE LAST TWO ORDERINGS \warn{SPLIT} — AND HERE IS WHY}{put $x$ innermost. It is capped by \keyres{both} walls at once:
$$x\leq1-y \quad\text{and}\quad x\leq\sqrt{1-z} \qquad\Rightarrow\qquad x\leq\keyres{\min\left(1-y,\;\sqrt{1-z}\right)}$$
\warn{A $\min$ in a limit always means a split.} Find where the two caps trade places:
$$\sqrt{1-z}=1-y \Rightarrow 1-z=(1-y)^2 \Rightarrow \keyres{z=2y-y^2}$$
That curve cuts the $yz$ square in two.}
\par\vspace{2pt}

\filbreak \subsection{coordinate conversions — the full table}
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
\par\vspace{2pt}

\filbreak \subsection{triple integrals — cylindrical coordinates}
\stepbox{THE PROCESS — IT IS THE TRIPLE PROCESS, SHADOW IN POLAR}{
\textbf{1.} \term{Inner $=z$} — roof and floor, solved for $z$ \emph{\scriptsize(variant A or C of the triple table)}.\\
\textbf{2.} \term{Project} onto $xy$ $\Rightarrow$ the shadow, then read it in \keyres{polar} (§5.3's three shapes).\\
\textbf{3.} \term{Attach the $r$} — $dV=r\,dz\,dr\,d\theta$.\\
\textbf{4.} \term{Integrate inside out}: $z$, then $r$, then $\theta$.}
\par\vspace{2pt}

\filbreak \subsection{triple integrals — spherical coordinates}
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
\par\vspace{2pt}
\filbreak \subsubsection{Which coordinate system? — the decision guide}
\begin{itemize}
\item \term{Cartesian}: boxes, planes, tetrahedra — straight-edged regions.
\item \term{Polar / cylindrical}: circles in 2D; \keyres{axis symmetry} in 3D — cylinders, cones, paraboloids. The tell is $x^2+y^2$.
\item \term{Spherical}: \keyres{point symmetry} — spheres, balls, cones through the origin. The tell is $x^2+y^2+z^2$.
\item \term{Your own $u,v$}: none of the above fits, but the \keyres{integrand names a combination} — $e^{(x-y)/(x+y)}$, $(x+2y)^{10}$, a slanted parallelogram. Build the map, take the Jacobian.
\item \keyres{The question also gets a vote}: "find the mass" means the integrand is a \keyres{density}, not $1$ — same region, same coordinates, different $f$.
\item \keyres{The integrand gets a vote}: $e^{x^2+y^2}$ forces polar even over an ugly region — a rescue-worthy integrand outranks a pretty region.
\end{itemize}
\par\vspace{2pt}

\filbreak \subsection{mass, center of mass \& moments}
\stepbox{THE PROCESS — NOTHING NEW, ONE NEW INTEGRAND}{
\textbf{1.} \term{Set up the region exactly as before} — same shadow, same limits, same coordinates.\\
\textbf{2.} \term{Swap the integrand}: $f=1$ gives volume, $f=\delta$ gives \keyres{mass}, $f=x\delta$ gives a \keyres{moment}.\\
\textbf{3.} \term{Use symmetry first} — if $\delta$ never mentions a variable and the region is symmetric in it, that coordinate of the balance point is the \keyres{geometric middle}, for free.\\
\textbf{4.} \term{Divide by the mass} — never by the volume.}
\par\vspace{2pt}

\filbreak \subsection{change of variables — where every Jacobian comes from}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Let the integrand choose $u$ and $v$} — name the combinations that appear in it.\\
\textbf{2.} \term{Invert}: solve for $x$ and $y$ \keyres{in terms of $u,v$}. The Jacobian needs them this way round.\\
\textbf{3.} \term{Map every boundary edge} into the $uv$-plane $\Rightarrow$ the new region $S$.\\
\textbf{4.} \term{Take the determinant}, then its \keyres{absolute value}.\\
\textbf{5.} \term{Integrate} over $S$ with the extra factor.}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Discrete I — Logic, Sets \& Proofs}

\begin{multicols}{2}


\filbreak \subsection{algebra refreshers}
\filbreak \subsubsection{Which method? — decide by counting terms}
\begin{enumerate}
\item \term{GCF first, always.} Pull out the biggest factor every term shares. Check: multiply back to confirm.
\item \term{Count the terms:}
\begin{itemize}
\item \keyres{2 terms} $\to$ diff. of squares $a^2-b^2$, or sum/diff. of cubes.
\item \keyres{3 terms} $\to$ trinomial. Perfect square? Else do the $p,q$ search below.
\item \keyres{4 terms} $\to$ grouping.
\end{itemize}
\end{enumerate}
\par\vspace{2pt}

\filbreak \subsection{proof strategies}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Read the shape} of the claim — $p\to q$, "for all", "there exists", or a set equality.\\
\textbf{2.} \term{Try to break it first.} One counterexample ends the job. \warn{Do this before proving anything.}\\
\textbf{3.} \term{Pick the technique} from the table below.\\
\textbf{4.} \term{Write the first and last lines} before the middle — what you assume, and what you must reach.\\
\textbf{5.} \term{Close the gap} between them.}
\par\vspace{2pt}
\filbreak \subsubsection{Step 3 decoded — which technique?}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\textcolor{termHi}{\textbf{technique}} & \textcolor{termHi}{\textbf{reach for it when}} \\[1pt]
\term{Direct} & $p$ unpacks cleanly into $q$ \\
\term{Contrapositive} & $\neg q$ is easier to handle than $p$ — often when $q$ says "not", or denies existence \\
\term{Contradiction} & irrationality, infinitude, uniqueness \\
\term{Cases} & a definition \keyres{splits}: absolute value, parity, sign \\
\term{Induction} & the claim is indexed by $\mathbb{N}$ and the pattern propagates \\
\term{Strong induction} & recurrences, or splitting into smaller pieces \\
\term{Counterexample} & you suspect the claim is \keyres{false} \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE TWO LINES THAT DO THE WORK}{
\textbf{Opening} — unpack the hypothesis into algebra: \; "$n$ is even, so $\keyres{n=2k}$ for some integer $k$."\\
\textbf{Closing} — state the goal in the same algebra: \; "so $n^2=2m$ for some integer $m$, and $n^2$ is even."\\
Write both \keyres{before} the middle. \warn{Most stuck proofs are stuck because the goal was never written down.}}
\par\vspace{2pt}
\par\vspace{2pt}
\end{multicols}
\noindent\rule{\linewidth}{0.4pt}
\section{Discrete II — Counting, Recurrences \& Graphs}

\begin{multicols}{2}


\filbreak \subsection{combinatorics}
\stepbox{THE PROCESS — TWO QUESTIONS DECIDE EVERYTHING}{
\textbf{1.} \term{Does order matter?} Swap two chosen items — does the result change?\\
\textbf{2.} \term{Is repetition allowed?} May an item be picked twice?\\
\textbf{3.} \term{Read the count} off the table.\\
\textbf{4.} \term{Check for overlap or symmetry} — then correct with inclusion-exclusion or the division rule.}
\par\vspace{2pt}
\filbreak \subsubsection{Steps 1--2 decoded — the counting table}
\begin{center}
{\small
\begin{tabular}{@{}l@{\hspace{8pt}}c@{\hspace{8pt}}c@{}}
& \textcolor{termHi}{\textbf{no repetition}} & \textcolor{termHi}{\textbf{repetition allowed}} \\[1pt]
\hline
\textcolor{termHi}{\textbf{order matters}} & $P(n,k)=\dfrac{n!}{(n-k)!}$ & $n^k$ \\[6pt]
\textcolor{termHi}{\textbf{order does not}} & $C(n,k)=\dbinom{n}{k}$ & $\dbinom{n+k-1}{k}$ \\[2pt]
\end{tabular}}
\end{center}
The bottom-right cell is \term{stars and bars}. \; Link: $P(n,k)=C(n,k)\cdot k!$ — a permutation is a combination times its orderings.
\par\vspace{2pt}
\par\vspace{2pt}
\filbreak \subsubsection{Step 4 decoded — three corrections}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{"at least one"} $\Rightarrow$ count the \keyres{complement} and subtract from the total. Counting it directly means counting every case. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{overlapping sets} $\Rightarrow$ \keyres{inclusion-exclusion}: $|A\cup B|=|A|+|B|-|A\cap B|$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{identical items or a symmetry} $\Rightarrow$ \keyres{division rule}: count as if distinct, then divide by the duplicates. \\
\end{tabular}}
\par\vspace{2pt}
\par\vspace{2pt}
\end{multicols}
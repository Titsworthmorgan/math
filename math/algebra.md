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


\section{Algebra I}

\begin{multicols}{2}

\filbreak \subsection{expressions}
A \term{term} is a number, a variable, or numbers and variables multiplied together: $5$, $x$, and $-3x^2$ are all terms. An \term{expression} is terms added or subtracted.
\par\vspace{2pt}
\term{Like terms} have the \keyres{same variable raised to the same power}. Only like terms combine.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
$3x$ and $-x$ & \keyres{like} — both are plain $x$ \\[2pt]
$3x$ and $3x^2$ & \warn{not like} — different powers \\[2pt]
$5$ and $-2$ & \keyres{like} — both plain numbers \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: SIMPLIFY $\;3x+5-x+2$}{group the like terms: \; $(3x-x)+(5+2)$
\par\vspace{1pt}
combine each group: \; $\keyres{2x+7}$
\par\vspace{1pt}
\emph{\scriptsize($3x-x$ is $2x$, not $3$. Removing one $x$ from three $x$'s leaves two.)}}
\par\vspace{2pt}
The \term{distributive rule} multiplies a bracket out: $a(b+c)=ab+ac$. Multiply the outside number by \keyres{every} term inside.
\par\vspace{1pt}
\stepbox{WORKED: $\;2(3x-4)$}{$2\cdot3x=6x$ \quad and \quad $2\cdot(-4)=-8$ \quad $\Rightarrow$ \quad $\keyres{6x-8}$}
\par\vspace{2pt}
\warn{A minus sign outside a bracket flips every sign inside.} $-(x-3)$ is $-x+3$, not $-x-3$.
\par\vspace{2pt}
To \term{evaluate} an expression, replace each letter with its number and follow the order of operations. \keyres{Put negatives in brackets} so the exponent applies correctly.
\par\vspace{1pt}
\stepbox{WORKED: $\;2x^2-3x$ AT $x=-2$}{$2(-2)^2-3(-2)=2(4)+6=8+6=\keyres{14}$
\par\vspace{1pt}
\warn{$(-2)^2=4$, but $-2^2=-4$.} The brackets decide whether the minus sign is squared.}

\filbreak \subsection{solving linear equations}
A \term{linear equation} has the variable to the first power only. Solving means getting the variable alone on one side.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Clear brackets} with the distributive rule.\\
\textbf{2.} \term{Combine like terms} on each side.\\
\textbf{3.} \term{Move all variable terms} to one side, using the balance rule.\\
\textbf{4.} \term{Move all plain numbers} to the other side.\\
\textbf{5.} \term{Divide} by the number multiplying the variable.\\
\textbf{6.} \term{Check} by substituting into the original equation.}
\par\vspace{2pt}
\keyres{Undo operations in reverse order.} The last thing done to the variable is the first thing you undo.
\par\vspace{2pt}
\stepbox{1. CLEAR THE BRACKETS}{$3(x-2)+4=2x+9$ \; becomes \; $3x-6+4=2x+9$}
\stepdown
\stepbox{2. COMBINE LIKE TERMS}{$-6+4=-2$, so \; $3x-2=2x+9$}
\stepdown
\stepbox{3. MOVE THE VARIABLES TOGETHER}{subtract $2x$ from \keyres{both sides}: \; $x-2=9$}
\stepdown
\stepbox{4. MOVE THE NUMBERS}{add $2$ to \keyres{both sides}: \; $x=\keyres{11}$}
\stepdown
\stepbox{5. CHECK IN THE ORIGINAL}{left: $3(11-2)+4=3(9)+4=31$ \qquad right: $2(11)+9=31$
\par\vspace{1pt}
Both sides give $31$ \checkmark}

\filbreak \subsection{turning words into algebra}
Most people who find word problems hard are not bad at algebra. They are stuck at the \keyres{translation}, which is a separate skill worth practising on its own.
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Read it once} without writing anything.\\
\textbf{2.} \term{Name the unknown.} Write "let $x=$" and then the thing in words.\\
\textbf{3.} \term{Translate one phrase at a time} into symbols.\\
\textbf{4.} \term{Solve} the equation.\\
\textbf{5.} \term{Answer the question asked}, with units.}
\par\vspace{2pt}
\keyres{Step 2 is the one people skip.} Writing "let $x=$ the number of tickets" fixes what every later symbol means.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.44\linewidth}@{}p{0.56\linewidth}@{}}
\textcolor{termHi}{\textbf{the words}} & \textcolor{termHi}{\textbf{the symbol}} \\[1pt]
is, was, gives, will be & $=$ \\
sum, total, more than, increased by & $+$ \\
difference, less than, decreased by & $-$ \\
product, of, times, twice & $\times$ \\
quotient, per, divided by, ratio & $\div$ \\
a number, how many, what & the variable \\
\end{tabular}}
\par\vspace{2pt}
\warn{"Less than" reverses the order.} "Five less than a number" is $x-5$, \warn{not} $5-x$. Read it as "take five away from the number". \; "More than" does not reverse, because addition may be written either way round.
\par\vspace{2pt}
\stepbox{WORKED: "FIVE LESS THAN TWICE A NUMBER IS $11$"}{\textbf{name it}: let $x=$ the number
\par\vspace{1pt}
\textbf{translate in pieces}: \; "twice a number" is $2x$ \; $\cdot$ \; "five less than" that is $2x-5$ \; $\cdot$ \; "is $11$" is $=11$
$$2x-5=11$$
\textbf{solve}: \; $2x=16$, so $x=\keyres{8}$
\par\vspace{1pt}
\textbf{check against the words}, not the equation: twice $8$ is $16$, and five less than $16$ is $11$ \checkmark}

\filbreak \subsection{inequalities}
An \term{inequality} uses $<$, $>$, $\leq$ or $\geq$ instead of $=$. Solve it exactly like an equation, with \keyres{one extra rule}.
\par\vspace{2pt}
\stepbox{THE FLIP RULE}{If you \term{multiply or divide both sides by a negative number}, reverse the inequality sign.
$$-2x>8 \quad\Longrightarrow\quad x\keyres{<}-4$$
\warn{Adding or subtracting a negative does not flip it.} Only multiplying or dividing does.}
\par\vspace{2pt}
\stepbox{WORKED: $\;-2x+3>11$}{subtract $3$ from both sides: \; $-2x>8$ \; \emph{\scriptsize(no flip — this was subtraction)}
\par\vspace{1pt}
divide both sides by $-2$: \; $x<-4$ \; \emph{\scriptsize(\keyres{flip} — this was division by a negative)}}
\par\vspace{2pt}
\keyres{Why the flip is necessary}: $3<5$ is true. Multiply both sides by $-1$ and you get $-3$ and $-5$. Now $-3>-5$, so the sign must turn around to stay true.

\filbreak \subsubsection{Checking an inequality — test one value}
An equation has one answer to check. An inequality has infinitely many, so you check a \keyres{region} instead.
\par\vspace{1pt}
\stepbox{THE TEST}{
\textbf{1.} \term{Pick} any easy number inside your answer, usually $0$.\\
\textbf{2.} \term{Put it into the original} inequality.\\
\textbf{3.} \term{It must be true.} Then pick a number outside, which must be false.}
\par\vspace{2pt}
\stepbox{WORKED: DID THE FLIP GO THE RIGHT WAY?}{Answer claimed: $x<-4$. \; Test $x=-10$, which is inside:
$$-2(-10)+3=23 \quad\text{and}\quad 23>11 \;\checkmark$$
Now test $x=0$, which is outside: \; $-2(0)+3=3$, and $3>11$ is \warn{false} \checkmark
\par\vspace{1pt}
\keyres{Both results agree with the answer, so the flip went the right way.} Had you forgotten the flip and written $x>-4$, then $x=0$ would have to work, and it does not.}
\par\vspace{2pt}
\keyres{This one habit catches the flip mistake every time.} It costs about fifteen seconds.

\filbreak \subsubsection{Compound inequalities}
A \term{compound inequality} traps the variable between two bounds: $-3<2x+1\leq7$. Whatever you do, do it to \keyres{all three parts}.
\par\vspace{1pt}
\stepbox{WORKED: $\;-3<2x+1\leq7$}{subtract $1$ from all three parts: \; $-4<2x\leq6$
\par\vspace{1pt}
divide all three by $2$, a positive, so \keyres{no flip}: \; $-2<x\leq3$
\par\vspace{1pt}
check with $x=0$: \; $2(0)+1=1$, and $-3<1\leq7$ \checkmark}
\par\vspace{2pt}
\warn{Note which end is included.} The answer is $-2<x\leq3$, so $3$ counts but $-2$ does not. The original signs carry through unchanged.

\filbreak \subsubsection{Interval notation}
\term{Interval notation} writes an answer as the two endpoints. The bracket style says whether each endpoint is included.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.30\linewidth}@{}p{0.50\linewidth}@{}}
\textcolor{termHi}{\textbf{symbol}} & \textcolor{termHi}{\textbf{means}} & \textcolor{termHi}{\textbf{example}} \\[1pt]
$[\;$ or $\;]$ & \keyres{included} & $[2,5]$ is $2\leq x\leq5$ \\[2pt]
$($ or $)$ & \warn{excluded} & $(2,5)$ is $2<x<5$ \\[2pt]
mixed & one of each & $(-2,3]$ is $-2<x\leq3$ \\[2pt]
$\infty$ & no end & always uses $)$, never $]$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{Infinity never gets a square bracket.} You cannot include something you can never reach, so write $(3,\infty)$.
\par\vspace{2pt}
On a number line, a \keyres{filled} circle marks an included endpoint and an \keyres{open} circle an excluded one.
\par\vspace{1pt}
\begin{center}
\begin{tikzpicture}[scale=0.82, font=\scriptsize]
\draw[white!45,<->] (-3.4,0) -- (3.4,0);
\foreach \x in {-3,-2,-1,0,1,2,3}{
  \draw[white!45] (\x,0.08) -- (\x,-0.08);
  \node[text=white!80, anchor=north] at (\x,-0.11) {$\x$};}
\draw[ansHi, very thick] (-2,0) -- (3,0);
\draw[ansHi, thick, fill=black] (-2,0) circle (2.6pt);
\fill[ansHi] (3,0) circle (2.6pt);
\node[text=ansHi, anchor=south] at (0.5,0.12) {$-2<x\leq3$, \; that is $(-2,\,3]$};
\end{tikzpicture}
\end{center}

\filbreak \subsection{absolute value}
Recall that $|x|$ is the \keyres{distance from zero}, so it is never negative. Distance forgets direction, and that is what makes these equations have \keyres{two} answers.
\par\vspace{2pt}
\stepbox{THE TWO-CASE RULE}{$|A|=b$ with $b>0$ splits into \keyres{two} equations:
$$A=b \qquad\text{or}\qquad A=-b$$
\warn{Isolate the absolute value first.} Split only when the bars stand alone on one side.}
\par\vspace{2pt}
\stepbox{WORKED: $\;|x-3|=5$}{split into two cases:
\par\vspace{1pt}
$x-3=5$ gives $x=8$. \qquad $x-3=-5$ gives $x=-2$.
$$x=\keyres{8} \quad\text{or}\quad x=\keyres{-2}$$
check: $|8-3|=|5|=5$ \checkmark \quad and \quad $|-2-3|=|-5|=5$ \checkmark}
\par\vspace{2pt}
\warn{$|A|=$ a negative number has no solution.} $|x|=-2$ is impossible, because a distance is never negative. Say so and stop.
\par\vspace{2pt}
\filbreak \subsubsection{Absolute value inequalities — less is between, greater is beyond}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & $|A|<b$ $\Rightarrow$ \keyres{one compound inequality}: $-b<A<b$. The answer is a \keyres{single stretch} around the centre. \\[4pt]
\textcolor{keyHi}{\textbf{B}} & $|A|>b$ $\Rightarrow$ \keyres{two separate inequalities}: $A>b$ \term{or} $A<-b$. The answer is \keyres{two pieces} heading outwards. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Read the meaning and you never have to memorize this.} "Distance less than $5$" means near the centre, so one stretch. "Distance more than $5$" means far away on either side, so two pieces.
\par\vspace{2pt}
\stepbox{WORKED (A): $\;|x-3|<5$}{distance from $3$ is less than $5$, so $x$ sits within $5$ of $3$:
$$-5<x-3<5 \;\Longrightarrow\; -2<x<8$$
in interval notation: \; $\keyres{(-2,\,8)}$
\par\vspace{1pt}
check $x=0$: \; $|0-3|=3$, and $3<5$ \checkmark}
\stepdown
\stepbox{WORKED (B): $\;|x-3|>5$}{distance from $3$ is more than $5$, so $x$ sits far out on either side:
$$x-3>5 \quad\text{or}\quad x-3<-5 \;\Longrightarrow\; x>8 \;\text{ or }\; x<-2$$
in interval notation: \; $\keyres{(-\infty,\,-2)\cup(8,\,\infty)}$
\par\vspace{1pt}
check $x=9$: \; $|9-3|=6$, and $6>5$ \checkmark \quad check $x=0$: \; $3>5$ is \warn{false}, and $0$ is correctly outside the answer \checkmark}
\par\vspace{2pt}
\warn{Case B is never written as one chain.} Writing $5<x-3<-5$ claims a number is both large and small at once, which nothing satisfies.

\filbreak \subsection{lines and slope}
\term{Slope} measures steepness: how far the line rises for each step to the right.
$$m=\frac{y_2-y_1}{x_2-x_1}=\frac{\text{rise}}{\text{run}}$$
\stepbox{WORKED: SLOPE THROUGH $(2,3)$ AND $(5,7)$}{$$m=\frac{7-3}{5-2}=\keyres{\frac43}$$
\warn{Keep the points in the same order top and bottom.} Starting with $7$ on top means starting with $5$ on the bottom.}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.74\linewidth}@{}}
$m>0$ & rises left to right \\[2pt]
$m<0$ & falls left to right \\[2pt]
$m=0$ & \keyres{horizontal} — equation is $y=$ a number \\[2pt]
undefined & \keyres{vertical} — equation is $x=$ a number \\
\end{tabular}}

\filbreak \subsubsection{Three forms of a line}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.42\linewidth}@{}p{0.28\linewidth}@{}}
\textcolor{termHi}{\textbf{form}} & \textcolor{termHi}{\textbf{looks like}} & \textcolor{termHi}{\textbf{use it when}} \\[1pt]
\term{slope-intercept} & $y=mx+b$ & graphing \\[2pt]
\term{point-slope} & $y-y_1=m(x-x_1)$ & you have a point and $m$ \\[2pt]
\term{standard} & $Ax+By=C$ & finding intercepts \\
\end{tabular}}
\par\vspace{2pt}
In $y=mx+b$ the number $b$ is the \term{$y$-intercept}, where the line crosses the $y$-axis.
\par\vspace{1pt}
\stepbox{WORKED: LINE THROUGH $(2,3)$ WITH $m=\frac43$}{start from point-slope: \; $y-3=\dfrac43(x-2)$
\par\vspace{1pt}
distribute: \; $y-3=\dfrac43x-\dfrac83$
\par\vspace{1pt}
add $3$, which is $\dfrac93$: \; $y=\keyres{\dfrac43x+\dfrac13}$}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
\term{parallel lines} & \keyres{same slope}, different intercept \\[2pt]
\term{perpendicular lines} & slopes are \keyres{negative reciprocals}: flip and change the sign \\
\end{tabular}}
\par\vspace{1pt}
A line perpendicular to slope $\frac43$ has slope $\keyres{-\frac34}$. \; \emph{\scriptsize(Multiply them: $\frac43\cdot-\frac34=-1$, which is the test.)}

\filbreak \subsection{systems of equations}
A \term{system} is two equations that must both be true at once. The solution is the point where the two lines cross.
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — look at the equations}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{substitution} — one equation already has a variable \keyres{alone} ($y=\dots$), or is easy to make so \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{elimination} — matching terms line up, so adding or subtracting \keyres{cancels} one variable \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED (A): $\;y=2x-1$ \; AND \; $3x+y=9$}{$y$ is already alone, so replace $y$ in the second equation:
\par\vspace{1pt}
$3x+(2x-1)=9$ \; $\Rightarrow$ \; $5x-1=9$ \; $\Rightarrow$ \; $5x=10$ \; $\Rightarrow$ \; $x=2$
\par\vspace{1pt}
put $x=2$ back into $y=2x-1$: \; $y=4-1=3$
$$\text{solution } \keyres{(2,\,3)}$$}
\stepdown
\stepbox{WORKED (B): $\;2x+3y=12$ \; AND \; $2x-y=4$}{both have $2x$, so \keyres{subtract} the second from the first and the $x$ terms cancel:
$$(2x-2x)+(3y-(-y))=12-4 \;\Rightarrow\; 4y=8 \;\Rightarrow\; y=2$$
put $y=2$ into $2x-y=4$: \; $2x-2=4$ \; $\Rightarrow$ \; $x=3$
$$\text{solution } \keyres{(3,\,2)}$$}
\par\vspace{2pt}
\stepbox{CHECK BOTH EQUATIONS, NOT ONE}{$2(3)+3(2)=6+6=12$ \checkmark \qquad $2(3)-2=4$ \checkmark
\par\vspace{1pt}
\warn{A point can satisfy one equation and fail the other.} Checking only one proves nothing.}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.36\linewidth}@{}p{0.64\linewidth}@{}}
\term{one solution} & the lines cross once \\[2pt]
\term{no solution} & parallel lines. You reach a false statement such as $0=5$. \\[2pt]
\term{infinitely many} & the same line twice. You reach $0=0$. \\
\end{tabular}}

\filbreak \subsubsection{Systems of three equations}
Three equations, three unknowns. The method is elimination, applied twice.
\par\vspace{1pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{Pick} one variable to remove.\\
\textbf{2.} \term{Eliminate} it from one pair of equations.\\
\textbf{3.} \term{Eliminate} the same variable from a different pair.\\
\textbf{4.} \term{Solve} the two-variable system you now have.\\
\textbf{5.} \term{Back-substitute} to find the third variable.}
\par\vspace{2pt}
\stepbox{WORKED: $x+y+z=6$, \; $2x-y+z=3$, \; $x+2y-z=2$}{\textbf{eliminate $z$} from the first pair by subtracting: \; $(x+y+z)-(2x-y+z)=6-3$
$$-x+2y=3$$
\textbf{eliminate $z$} from the first and third by adding: \; $(x+y+z)+(x+2y-z)=6+2$
$$2x+3y=8$$
\textbf{solve those two}: from the first, $x=2y-3$. Substitute: $2(2y-3)+3y=8$, so $7y=14$ and $y=\keyres{2}$.
\par\vspace{1pt}
then $x=2(2)-3=\keyres{1}$, and from the original first equation $z=6-1-2=\keyres{3}$
$$\text{solution } \keyres{(1,\,2,\,3)}$$}
\par\vspace{2pt}
\warn{Check all three equations.} $1+2+3=6$ \checkmark \quad $2-2+3=3$ \checkmark \quad $1+4-3=2$ \checkmark
\par\vspace{2pt}
\keyres{Step 3 must use a different pair.} Reusing the same two equations gives you back the same information, and the system will not resolve.

\filbreak \subsection{exponent rules}
Every rule below comes from writing the powers out and counting.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.40\linewidth}@{}p{0.60\linewidth}@{}}
\term{multiply} & $x^a\cdot x^b=x^{a+b}$ \quad $x^3x^5=x^8$ \\[2pt]
\term{divide} & $\dfrac{x^a}{x^b}=x^{a-b}$ \quad $\dfrac{x^8}{x^3}=x^5$ \\[4pt]
\term{power of a power} & $(x^a)^b=x^{ab}$ \quad $(x^3)^5=x^{15}$ \\[2pt]
\term{power of a product} & $(xy)^a=x^ay^a$ \\[2pt]
\term{zero power} & $x^0=1$ \quad for any $x\neq0$ \\[2pt]
\term{negative power} & $x^{-a}=\dfrac{1}{x^a}$ \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Why $x^3x^5=x^8$}: write them out. Three $x$'s times five $x$'s is eight $x$'s in a row. \; \keyres{Why $x^0=1$}: $\dfrac{x^3}{x^3}$ is $1$, and the divide rule makes it $x^0$.
\par\vspace{2pt}
\warn{Add exponents when multiplying, multiply them when raising a power to a power.} Swapping these two is the most common exponent error.
\par\vspace{2pt}
\warn{A negative exponent does not make the number negative.} $2^{-3}=\frac18$, which is positive. It means "one over", not "less than zero".

\filbreak \subsection{polynomials}
A \term{polynomial} is a sum of terms whose variables have whole-number powers, such as $2x^2-5x-12$. The \term{degree} is the highest power.
\par\vspace{2pt}
To multiply two brackets, multiply \keyres{every term in the first by every term in the second}.
\par\vspace{1pt}
\stepbox{WORKED: $\;(2x+3)(x-4)$}{four products, one per pair:
$$2x\cdot x=2x^2 \qquad 2x\cdot(-4)=-8x \qquad 3\cdot x=3x \qquad 3\cdot(-4)=-12$$
add them, then combine the like terms $-8x$ and $3x$:
$$2x^2-8x+3x-12=\keyres{2x^2-5x-12}$$}
\par\vspace{2pt}
\warn{$(a+b)^2$ is not $a^2+b^2$.} Multiply it out: $(a+b)^2=a^2+2ab+b^2$. The middle term is real and is the one people lose.

\filbreak \subsection{factoring}
\term{Factoring} reverses multiplication. It rewrites a sum as a \keyres{product}, which is what lets you solve equations later.
\par\vspace{2pt}
\stepbox{ALWAYS DO THIS FIRST}{\term{Take out the greatest common factor.} If every term shares something, pull it out before anything else.
$$6x^3+9x^2=3x^2(2x+3)$$
Skipping this makes every later step harder, and sometimes impossible.}
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — count the terms}
{\small
\begin{tabular}{@{}p{0.14\linewidth}@{}p{0.44\linewidth}@{}p{0.42\linewidth}@{}}
\textcolor{termHi}{\textbf{terms}} & \textcolor{termHi}{\textbf{shape}} & \textcolor{termHi}{\textbf{method}} \\[1pt]
\keyres{2} & $a^2-b^2$ & difference of squares \\[2pt]
\keyres{2} & $a^3\pm b^3$ & sum or difference of cubes \\[2pt]
\keyres{3} & $x^2+bx+c$ & find two numbers \\[2pt]
\keyres{3} & $ax^2+bx+c$, $a\neq1$ & the AC method \\[2pt]
\keyres{4} & anything & grouping \\
\end{tabular}}
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.42\linewidth}@{}p{0.58\linewidth}@{}}
\term{difference of squares} & $a^2-b^2=(a+b)(a-b)$ \\[2pt]
\term{perfect square} & $a^2\pm2ab+b^2=(a\pm b)^2$ \\[2pt]
\term{sum of cubes} & $a^3+b^3=(a+b)(a^2-ab+b^2)$ \\[2pt]
\term{difference of cubes} & $a^3-b^3=(a-b)(a^2+ab+b^2)$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{A sum of squares $a^2+b^2$ does not factor.} Only the difference does.
\par\vspace{2pt}
\stepbox{WORKED (2 TERMS): $\;4x^2-25$}{both parts are perfect squares: $4x^2=(2x)^2$ and $25=5^2$
$$4x^2-25=\keyres{(2x+5)(2x-5)}$$}
\stepdown
\stepbox{WORKED (3 TERMS, $a=1$): $\;x^2+5x+6$}{find two numbers that \keyres{multiply to $6$} and \keyres{add to $5$}
\par\vspace{1pt}
pairs for $6$: $1$ and $6$ give $7$. \; $2$ and $3$ give $\keyres{5}$ \checkmark
$$x^2+5x+6=\keyres{(x+2)(x+3)}$$}
\stepdown
\stepbox{WORKED (3 TERMS, $a\neq1$): $\;6x^2+11x+3$ — THE AC METHOD}{\textbf{1.} multiply $a$ and $c$: \; $6\cdot3=18$
\par\vspace{1pt}
\textbf{2.} find two numbers that multiply to $18$ and add to $11$: \; $\keyres{9}$ and $\keyres{2}$
\par\vspace{1pt}
\textbf{3.} split the middle term using them: \; $6x^2+9x+2x+3$
\par\vspace{1pt}
\textbf{4.} group in pairs and factor each: \; $3x(2x+3)+1(2x+3)$
\par\vspace{1pt}
\textbf{5.} the bracket now repeats, so pull it out:
$$\keyres{(3x+1)(2x+3)}$$}
\par\vspace{2pt}
\keyres{Check any factoring by multiplying back out.} It takes ten seconds and catches every sign error.

\filbreak \subsection{quadratic equations}
A \term{quadratic equation} has an $x^2$ term and no higher power. Written in \term{standard form} it is
$$ax^2+bx+c=0$$
\keyres{Get everything on one side first.} Every method below assumes the equation equals zero.
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — look at the equation}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{factoring} — the quadratic factors easily. \keyres{Fastest when it works.} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{square root property} — there is \keyres{no plain $x$ term}, or one side is already a perfect square \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{completing the square} — asked for it, or you need \term{vertex form} \\[2pt]
\textcolor{keyHi}{\textbf{D}} & \term{quadratic formula} — \keyres{always works}. Use it when nothing factors. \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Try A first, fall back to D.} B and C are for the shapes that ask for them.
\par\vspace{2pt}
\stepbox{THE ZERO PRODUCT RULE — WHY FACTORING SOLVES}{If two numbers multiply to $0$, at least one of them \keyres{is} $0$. Nothing else can happen.
\par\vspace{1pt}
So once $(x-2)(x-3)=0$, either $x-2=0$ or $x-3=0$.
\par\vspace{1pt}
\warn{This works for zero only.} If $(x-2)(x-3)=6$, you may \warn{not} say $x-2=6$. Move everything to one side first.}
\par\vspace{2pt}
\stepbox{WORKED (A) FACTORING: $\;x^2-5x+6=0$}{two numbers multiplying to $6$, adding to $-5$: \; $-2$ and $-3$
\par\vspace{1pt}
$(x-2)(x-3)=0$, so $x-2=0$ or $x-3=0$
$$x=\keyres{2} \quad\text{or}\quad x=\keyres{3}$$}
\stepdown
\stepbox{WORKED (B) SQUARE ROOT PROPERTY: $\;(x-3)^2=16$}{take the square root of both sides, and \warn{keep both signs}:
$$x-3=\pm4$$
$x-3=4$ gives $x=7$. \quad $x-3=-4$ gives $x=-1$.
$$x=\keyres{7} \quad\text{or}\quad x=\keyres{-1}$$
\warn{Forgetting the negative root loses half the answer.} A square erases the sign, so undoing it must restore both.}
\stepdown
\stepbox{WORKED (C) COMPLETING THE SQUARE: $\;x^2+6x-7=0$}{\textbf{1.} move the plain number across: \; $x^2+6x=7$
\par\vspace{1pt}
\textbf{2.} halve the $x$ coefficient and square it: \; $\left(\tfrac62\right)^2=3^2=\keyres{9}$
\par\vspace{1pt}
\textbf{3.} add it to \keyres{both sides}: \; $x^2+6x+9=16$
\par\vspace{1pt}
\textbf{4.} the left side is now a perfect square: \; $(x+3)^2=16$
\par\vspace{1pt}
\textbf{5.} square root both sides: \; $x+3=\pm4$, so $x=\keyres{1}$ or $x=\keyres{-7}$}
\stepdown
\stepbox{WORKED (D) THE FORMULA: $\;2x^2+3x-5=0$}{$$x=\frac{-b\pm\sqrt{b^2-4ac}}{2a} \qquad a=2,\; b=3,\; c=-5$$
\textbf{1.} the part under the root: \; $b^2-4ac=3^2-4(2)(-5)=9+40=\keyres{49}$
\par\vspace{1pt}
\textbf{2.} substitute: \; $x=\dfrac{-3\pm\sqrt{49}}{2(2)}=\dfrac{-3\pm7}{4}$
\par\vspace{1pt}
\textbf{3.} split the $\pm$: \; $x=\dfrac{4}{4}=\keyres{1}$ \quad or \quad $x=\dfrac{-10}{4}=\keyres{-\dfrac52}$
\par\vspace{1pt}
\warn{$-4ac$ with a negative $c$ becomes addition.} Two negatives made $+40$ here.}
\par\vspace{2pt}
\filbreak \subsubsection{The discriminant — how many answers before you solve}
The part under the root, $\keyres{b^2-4ac}$, is the \term{discriminant}. It tells you the number of real answers without finishing the problem.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.30\linewidth}@{}p{0.70\linewidth}@{}}
$b^2-4ac>0$ & \keyres{two} real answers \\[2pt]
$b^2-4ac=0$ & \keyres{one} real answer, a repeated root \\[2pt]
$b^2-4ac<0$ & \keyres{no} real answers — the graph misses the $x$-axis \\
\end{tabular}}

\end{multicols}

\section{Algebra II}

\begin{multicols}{2}

\filbreak \subsection{rational expressions}
A \term{rational expression} is one polynomial divided by another, such as $\dfrac{x^2-9}{x^2+x-6}$. Treat it exactly like a fraction, with one addition: watch the denominator.
\par\vspace{2pt}
\warn{The denominator may never be zero.} Any value that would make it zero is \term{excluded}, even if it cancels later. State those values.
\par\vspace{2pt}
\stepbox{THE PROCESS — SIMPLIFY}{
\textbf{1.} \term{Factor} the top and the bottom completely.\\
\textbf{2.} \term{Note the excluded values} — whatever makes the original bottom zero.\\
\textbf{3.} \term{Cancel} factors the top and bottom share.}
\par\vspace{2pt}
\stepbox{WORKED: SIMPLIFY $\;\dfrac{x^2-9}{x^2+x-6}$}{factor both: \; $\dfrac{(x+3)(x-3)}{(x+3)(x-2)}$
\par\vspace{1pt}
excluded: the original bottom is zero at $x=-3$ and $x=2$
\par\vspace{1pt}
cancel the shared $(x+3)$:
$$\keyres{\frac{x-3}{x-2}}, \qquad x\neq-3,\; x\neq2$$
\warn{The restriction $x\neq-3$ survives the cancelling.} The original expression never had a value there, so neither does the simplified one.}
\par\vspace{2pt}
\keyres{Adding needs a common denominator}, exactly as with numbers.
\par\vspace{1pt}
\stepbox{WORKED: $\;\dfrac{1}{x}+\dfrac{1}{x+1}$}{the common denominator is $x(x+1)$
$$\frac{1}{x}\cdot\frac{x+1}{x+1}+\frac{1}{x+1}\cdot\frac{x}{x}=\frac{x+1}{x(x+1)}+\frac{x}{x(x+1)}$$
add the tops: \; $\keyres{\dfrac{2x+1}{x(x+1)}}$}
\par\vspace{2pt}
\filbreak \subsubsection{Solving — and the extraneous root trap}
Multiply both sides by the common denominator, solve, then \keyres{check every answer against the original}.
\par\vspace{1pt}
\stepbox{WORKED: $\;\dfrac{x}{x-3}=\dfrac{3}{x-3}+2$}{multiply everything by $(x-3)$: \; $x=3+2(x-3)$
\par\vspace{1pt}
solve: \; $x=3+2x-6$ \; $\Rightarrow$ \; $-x=-3$ \; $\Rightarrow$ \; $x=3$
\par\vspace{1pt}
\warn{Now check.} Put $x=3$ into the original: the denominator $x-3$ becomes $0$.
$$\keyres{\text{No solution.}}$$
The algebra was correct. The answer it produced is not allowed.}
\par\vspace{2pt}
\keyres{Why this happens}: multiplying by $(x-3)$ is only legal when $x\neq3$. The step quietly assumed what it then produced.

\filbreak \subsubsection{Complex fractions}
A \term{complex fraction} has a fraction inside a fraction. Rewrite the main bar as a division and use the divide rule.
$$\frac{\;\dfrac{a}{b}\;}{\dfrac{c}{d}}=\frac{a}{b}\div\frac{c}{d}=\frac{a}{b}\cdot\frac{d}{c}=\keyres{\frac{ad}{bc}}$$
\stepbox{WORKED: $\;\dfrac{\;\frac{2}{3}\;}{\frac{4}{5}}$}{$\dfrac{2}{3}\cdot\dfrac{5}{4}=\dfrac{10}{12}=\keyres{\dfrac{5}{6}}$}
\par\vspace{2pt}
\warn{The long bar is the main division.} When the layout is unclear, the longer bar always separates the top of the whole fraction from the bottom.

\filbreak \subsection{radicals and rational exponents}
\stepbox{SIMPLIFYING A SQUARE ROOT}{
\textbf{1.} \term{Find} the largest perfect square that divides the number.\\
\textbf{2.} \term{Split} the root into two roots.\\
\textbf{3.} \term{Take} the perfect square out.
$$\sqrt{50}=\sqrt{25\cdot2}=\sqrt{25}\cdot\sqrt{2}=\keyres{5\sqrt{2}}$$}
\par\vspace{2pt}
\warn{Roots do not split across addition.} $\sqrt{9+16}=\sqrt{25}=5$, but $\sqrt9+\sqrt{16}=3+4=7$. They split across multiplication only.
\par\vspace{2pt}
A \term{rational exponent} is another way to write a root:
$$x^{1/n}=\sqrt[n]{x} \qquad\qquad x^{m/n}=\sqrt[n]{x^m}$$
\keyres{The bottom of the fraction is the root, the top is the power.} So $8^{2/3}$ is the cube root of $8$, squared: $2^2=4$.
\par\vspace{2pt}
\term{Rationalizing} clears a root out of a denominator. Multiply the top and bottom by that root.
$$\frac{3}{\sqrt2}=\frac{3}{\sqrt2}\cdot\frac{\sqrt2}{\sqrt2}=\keyres{\frac{3\sqrt2}{2}}$$
\par\vspace{2pt}
\filbreak \subsubsection{Solving radical equations — always check}
\stepbox{1. ISOLATE THE ROOT, THEN SQUARE BOTH SIDES}{$\sqrt{x+5}=x-1$ \; becomes \; $x+5=(x-1)^2=x^2-2x+1$}
\stepdown
\stepbox{2. SOLVE THE RESULT}{$x^2-3x-4=0$ \; $\Rightarrow$ \; $(x-4)(x+1)=0$ \; $\Rightarrow$ \; $x=4$ or $x=-1$}
\stepdown
\stepbox{3. CHECK BOTH IN THE ORIGINAL — THIS STEP IS MANDATORY}{$x=4$: \; $\sqrt{9}=3$ and $4-1=3$ \checkmark
\par\vspace{1pt}
$x=-1$: \; $\sqrt{4}=2$ but $-1-1=-2$. \; $2\neq-2$, so \warn{reject it}
$$x=\keyres{4} \text{ only}$$}
\par\vspace{2pt}
\keyres{Why squaring invents answers}: squaring turns $2=-2$ into the true statement $4=4$. It erases sign differences, so it can make a false equation look true. The check undoes that damage.

\filbreak \subsection{complex numbers}
Some equations have no real answer, because no real number squares to a negative. Mathematicians defined one:
$$\keyres{i=\sqrt{-1}} \qquad\text{so}\qquad \keyres{i^2=-1}$$
A \term{complex number} has the form $a+bi$, with $a$ the \term{real part} and $b$ the \term{imaginary part}.
\par\vspace{2pt}
$\sqrt{-9}=\sqrt{9}\cdot\sqrt{-1}=\keyres{3i}$
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.74\linewidth}@{}}
\term{add} & combine real with real, imaginary with imaginary \\[2pt]
\term{multiply} & multiply out as brackets, then replace $i^2$ with $-1$ \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED: $\;(3+2i)+(1-5i)$}{reals: $3+1=4$. \quad imaginaries: $2i-5i=-3i$.
$$\keyres{4-3i}$$}
\stepdown
\stepbox{WORKED: $\;(3+2i)(1-5i)$}{multiply all four pairs:
$$3\cdot1=3 \quad 3\cdot(-5i)=-15i \quad 2i\cdot1=2i \quad 2i\cdot(-5i)=-10i^2$$
replace $i^2$ with $-1$: \; $-10i^2=-10(-1)=+10$
\par\vspace{1pt}
collect: \; $(3+10)+(-15i+2i)=\keyres{13-13i}$
\par\vspace{1pt}
\warn{The $i^2$ term becomes a real number.} That is why the real part changed from $3$ to $13$.}

\filbreak \subsection{exponential and logarithmic functions}
An \term{exponential function} puts the variable in the exponent: $f(x)=2^x$. It grows by \keyres{multiplying} by the same factor each step, not by adding.
\par\vspace{2pt}
A \term{logarithm} answers the question an exponential asks backwards.
$$\log_b(y)=x \qquad\text{means exactly}\qquad b^x=y$$
\keyres{Read $\log_2(8)=3$ as "$2$ raised to what power gives $8$?"} The answer is $3$.
\par\vspace{2pt}
\warn{A logarithm is an exponent.} That single sentence removes most of the confusion in this topic.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.34\linewidth}@{}p{0.66\linewidth}@{}}
\term{product} & $\log(xy)=\log x+\log y$ \\[2pt]
\term{quotient} & $\log\!\left(\dfrac{x}{y}\right)=\log x-\log y$ \\[4pt]
\term{power} & $\log(x^n)=n\log x$ \\[2pt]
\term{change of base} & $\log_b x=\dfrac{\log x}{\log b}$ \\[4pt]
\term{inverses} & $\log_b(b^x)=x$ \quad and \quad $b^{\log_b x}=x$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{$\log(x+y)$ does not simplify.} The product rule turns multiplication into addition, not addition into anything.
\par\vspace{2pt}
\filbreak \subsubsection{Which method? — solving these two shapes}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{variable in the exponent} $\Rightarrow$ take a \keyres{logarithm} of both sides \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{variable inside a log} $\Rightarrow$ combine into one log, then \keyres{rewrite as an exponential} \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{WORKED (A), THE EASY CASE: $\;2^x=32$}{write $32$ as a power of the same base: \; $32=2^5$
\par\vspace{1pt}
same base means the exponents match: \; $x=\keyres{5}$
\par\vspace{1pt}
\emph{\scriptsize(Always look for a common base first. It avoids the calculator entirely.)}}
\stepdown
\stepbox{WORKED (A), THE GENERAL CASE: $\;3^x=20$}{$20$ is not a power of $3$, so take a log of both sides:
$$\log(3^x)=\log20 \;\Rightarrow\; x\log3=\log20 \;\Rightarrow\; x=\frac{\log20}{\log3}\approx\keyres{2.727}$$
\keyres{The power rule is what frees the $x$}: it moves the exponent down in front.}
\stepdown
\stepbox{WORKED (B): $\;\log_2 x+\log_2(x-2)=3$}{\textbf{1.} combine with the product rule: \; $\log_2\big(x(x-2)\big)=3$
\par\vspace{1pt}
\textbf{2.} rewrite as an exponential: \; $x(x-2)=2^3=8$
\par\vspace{1pt}
\textbf{3.} solve: \; $x^2-2x-8=0$ \; $\Rightarrow$ \; $(x-4)(x+2)=0$ \; $\Rightarrow$ \; $x=4$ or $x=-2$
\par\vspace{1pt}
\textbf{4.} \warn{check both.} $x=-2$ gives $\log_2(-2)$, and a logarithm of a negative number does not exist.
$$x=\keyres{4} \text{ only}$$}
\par\vspace{2pt}
\warn{Log equations almost always produce a rejected answer.} Checking is part of the method, not an optional extra.

\filbreak \subsection{growth and decay}
Exponential functions model anything that changes by a \keyres{percentage} rather than a fixed amount.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{growth} $\Rightarrow$ $A=A_0(1+r)^t$, with $r$ the rate as a decimal \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{decay} $\Rightarrow$ $A=A_0(1-r)^t$ \\[2pt]
\textcolor{keyHi}{\textbf{C}} & \term{compound interest} $\Rightarrow$ $A=P\left(1+\dfrac{r}{n}\right)^{nt}$, with $n$ compoundings a year \\[4pt]
\textcolor{keyHi}{\textbf{D}} & \term{half-life} $\Rightarrow$ $A=A_0\left(\dfrac12\right)^{t/h}$, with $h$ the half-life \\
\end{tabular}}
\par\vspace{2pt}
\warn{Write the rate as a decimal, not a percent.} Five percent is $0.05$, so the base is $1.05$ and not $1+5$.
\par\vspace{2pt}
\stepbox{WORKED: \$$1000$ AT $5\%$ A YEAR FOR $10$ YEARS}{$$A=1000(1+0.05)^{10}=1000(1.05)^{10}\approx\keyres{\$1628.89}$$
\keyres{The gain is \$$628.89$, not \$$500$.} Simple interest would add $5\%$ of the original each year. Compounding adds $5\%$ of the \keyres{current} balance, so each year's gain is larger than the last.}
\par\vspace{2pt}
\keyres{To solve for the time $t$}, the unknown sits in the exponent, so take a logarithm of both sides. That is case A of the log-solving table above.

\filbreak \subsection{sequences and series}
A \term{sequence} is an ordered list of numbers. A \term{series} is what you get by adding them.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{arithmetic} — each term \keyres{adds} a fixed amount $d$, the \term{common difference} \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{geometric} — each term \keyres{multiplies} by a fixed amount $r$, the \term{common ratio} \\
\end{tabular}}
\par\vspace{2pt}
\keyres{Tell them apart by subtracting and dividing.} If consecutive differences match, it is arithmetic. If consecutive ratios match, it is geometric.
\par\vspace{2pt}
{\small
\begin{tabular}{@{}p{0.20\linewidth}@{}p{0.38\linewidth}@{}p{0.42\linewidth}@{}}
& \textcolor{termHi}{\textbf{arithmetic}} & \textcolor{termHi}{\textbf{geometric}} \\[1pt]
\term{term} & $a_n=a_1+(n-1)d$ & $a_n=a_1r^{\,n-1}$ \\[3pt]
\term{sum} & $S_n=\dfrac{n}{2}(a_1+a_n)$ & $S_n=\dfrac{a_1(1-r^n)}{1-r}$ \\
\end{tabular}}
\par\vspace{2pt}
\warn{The formulas use $n-1$, not $n$.} The first term needs no steps, so reaching term $n$ takes $n-1$ of them.
\par\vspace{2pt}
\stepbox{WORKED (A): $\;3,\,7,\,11,\dots$ — FIND $a_{10}$ AND $S_{10}$}{differences are $4$ each time, so $d=4$ and $a_1=3$
$$a_{10}=3+(10-1)(4)=3+36=\keyres{39}$$
$$S_{10}=\frac{10}{2}(3+39)=5(42)=\keyres{210}$$}
\stepdown
\stepbox{WORKED (B): $\;2,\,6,\,18,\dots$ — FIND $a_6$ AND $S_5$}{ratios are $3$ each time, so $r=3$ and $a_1=2$
$$a_6=2\cdot3^{\,6-1}=2\cdot243=\keyres{486}$$
$$S_5=\frac{2\left(1-3^5\right)}{1-3}=\frac{2(1-243)}{-2}=\frac{2(-242)}{-2}=\keyres{242}$$}

\filbreak \subsection{sigma notation and the binomial theorem}
\term{Sigma notation} is shorthand for a sum. The symbol $\sum$ says "add up", and the labels say where to start and stop.
$$\sum_{i=1}^{4}3i \;=\; 3(1)+3(2)+3(3)+3(4) \;=\; 3+6+9+12 \;=\; \keyres{30}$$
{\small
\begin{tabular}{@{}p{0.26\linewidth}@{}p{0.74\linewidth}@{}}
\term{index} & the letter under $\sum$, here $i$ — a counter, not an unknown \\[2pt]
\term{lower limit} & where the counter starts \\[2pt]
\term{upper limit} & where it stops, and it \keyres{is} included \\
\end{tabular}}
\par\vspace{2pt}
\warn{The index is not part of the answer.} It counts the terms and then disappears, exactly like the counter in a loop.
\par\vspace{2pt}
\filbreak \subsubsection{Pascal's triangle and the binomial theorem}
Expanding $(a+b)^n$ by multiplying out is slow. The coefficients follow a pattern instead.
\par\vspace{1pt}
\begin{center}
{\small
\begin{tabular}{@{}r@{\hspace{8pt}}l@{}}
$n=0$ & $1$ \\
$n=1$ & $1\quad1$ \\
$n=2$ & $1\quad2\quad1$ \\
$n=3$ & $1\quad3\quad3\quad1$ \\
$n=4$ & $1\quad4\quad6\quad4\quad1$ \\
\end{tabular}}
\end{center}
\keyres{Each entry is the sum of the two above it.} The edges are always $1$.
\par\vspace{2pt}
\stepbox{THE PROCESS — EXPAND $(a+b)^n$}{
\textbf{1.} \term{Take} row $n$ of the triangle as the coefficients.\\
\textbf{2.} \term{Start} at $a^n b^0$ and step down: the power of $a$ falls, the power of $b$ rises.\\
\textbf{3.} \term{Check} that every term's powers add to $n$.}
\par\vspace{2pt}
\stepbox{WORKED: $\;(x+2)^3$}{row $3$ is $1,\,3,\,3,\,1$, and here $a=x$, $b=2$:
$$1x^3 + 3x^2(2) + 3x(2)^2 + 1(2)^3 = x^3+6x^2+12x+8$$
$$\keyres{x^3+6x^2+12x+8}$$
\warn{Raise the whole $b$ term, including its number.} The third term is $3x(4)$, not $3x(2)$.}

\filbreak \subsection{direct and inverse variation}
Two quantities often move together in one of two fixed patterns. Both hide a \term{constant of variation} $k$ that you find from one known pair.
\par\vspace{1pt}
{\small
\begin{tabular}{@{}p{0.05\linewidth}@{}p{0.95\linewidth}@{}}
\textcolor{keyHi}{\textbf{A}} & \term{direct} — "$y$ varies directly as $x$" $\Rightarrow$ $\keyres{y=kx}$. As one grows, so does the other. \\[2pt]
\textcolor{keyHi}{\textbf{B}} & \term{inverse} — "$y$ varies inversely as $x$" $\Rightarrow$ $\keyres{y=\dfrac{k}{x}}$. As one grows, the other shrinks. \\
\end{tabular}}
\par\vspace{2pt}
\stepbox{THE PROCESS — THE SAME THREE STEPS EITHER WAY}{
\textbf{1.} \term{Write} the correct form, $y=kx$ or $y=\frac{k}{x}$.\\
\textbf{2.} \term{Find $k$} by substituting the pair you were given.\\
\textbf{3.} \term{Rewrite} with $k$ filled in, then answer the question.}
\par\vspace{2pt}
\stepbox{WORKED (A): $y$ VARIES DIRECTLY AS $x$, AND $y=12$ WHEN $x=3$}{$y=kx$, so $12=k(3)$, giving $k=\keyres{4}$
\par\vspace{1pt}
the rule is $y=4x$, so at $x=5$: \; $y=4(5)=\keyres{20}$}
\stepdown
\stepbox{WORKED (B): $y$ VARIES INVERSELY AS $x$, AND $y=6$ WHEN $x=2$}{$y=\dfrac{k}{x}$, so $6=\dfrac{k}{2}$, giving $k=\keyres{12}$
\par\vspace{1pt}
the rule is $y=\dfrac{12}{x}$, so at $x=4$: \; $y=\dfrac{12}{4}=\keyres{3}$}
\par\vspace{2pt}
\keyres{Check the direction against common sense.} In A the answer grew with $x$, and in B it shrank. If yours moves the wrong way, you picked the wrong form.

\filbreak \subsection{polynomial division}
\stepbox{THE REMAINDER THEOREM}{To find the remainder when $P(x)$ is divided by $(x-c)$, \keyres{just evaluate $P(c)$}. No division needed.
\par\vspace{1pt}
\term{Consequence}: if $P(c)=0$, the remainder is zero, so $(x-c)$ \keyres{is a factor}. This is how you find roots of a cubic.}
\par\vspace{2pt}
\stepbox{WORKED: $\;P(x)=x^3-2x^2+3x-4$ DIVIDED BY $(x-2)$}{the divisor is $x-2$, so $c=2$:
$$P(2)=2^3-2(2)^2+3(2)-4=8-8+6-4=\keyres{2}$$
The remainder is $2$. \; Because it is not zero, $(x-2)$ is \warn{not} a factor.
\par\vspace{1pt}
\emph{\scriptsize(The full division gives $x^2+3$ with remainder $2$, which agrees.)}}
\par\vspace{2pt}
\warn{Match the sign of $c$ to the divisor.} Dividing by $(x-2)$ means $c=+2$. Dividing by $(x+2)$ means $c=-2$.
\filbreak \subsection{finding polynomial roots}
Factoring works when the factors are obvious. For a cubic or higher, you need a way to \keyres{generate candidates} first.
\par\vspace{2pt}
\stepbox{THE RATIONAL ROOT THEOREM}{Every rational root of a polynomial has the form
$$\keyres{\pm\frac{\text{a factor of the constant term}}{\text{a factor of the leading coefficient}}}$$
That list is finite, so you can test it. \warn{It lists candidates, not answers} — most of them fail.}
\par\vspace{2pt}
\stepbox{THE PROCESS}{
\textbf{1.} \term{List} the candidates from the theorem.\\
\textbf{2.} \term{Test} them with the remainder theorem until one gives $0$.\\
\textbf{3.} \term{Divide} the polynomial by that factor.\\
\textbf{4.} \term{Factor} what is left, which is now one degree lower.}
\par\vspace{2pt}
\stepbox{WORKED: $\;2x^3-3x^2-3x+2$}{\textbf{1.} constant $2$ gives $\pm1,\pm2$. \; leading coefficient $2$ gives $\pm1,\pm2$.
\par\vspace{1pt}
candidates: \; $\pm1,\;\pm2,\;\pm\tfrac12$
\par\vspace{1pt}
\textbf{2.} test them: \; $P(1)=2-3-3+2=-2$ \warn{no} \; $\cdot$ \; $P(2)=16-12-6+2=\keyres{0}$ \checkmark
\par\vspace{1pt}
\textbf{3.} so $(x-2)$ is a factor. Dividing leaves $2x^2+x-1$.
\par\vspace{1pt}
\textbf{4.} factor that: \; $2x^2+x-1=(2x-1)(x+1)$
$$2x^3-3x^2-3x+2=\keyres{(x-2)(2x-1)(x+1)}$$
roots: \; $x=\keyres{2},\;\keyres{\tfrac12},\;\keyres{-1}$ \; — all three were on the candidate list \checkmark}


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

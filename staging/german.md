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
  \usepackage{array}
  \usepackage{colortbl}
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


```{=latex}
% ---- German sheet: one meaning per color ----
% blue/red/green = der/die/das only. gold = whole irregular form. bold = regular ending. lavender italic = English.
\definecolor{derC}{HTML}{6FA8DC}
\definecolor{dieC}{HTML}{E06C75}
\definecolor{dasC}{HTML}{8BB87A}
\definecolor{learnC}{HTML}{D8BE6E}
\definecolor{glossC}{HTML}{C3B1E1}
\definecolor{tagC}{HTML}{8A8A8A}
\definecolor{ruleC}{HTML}{6A6A6A}
\definecolor{grpC}{HTML}{3A3A3A}
\newcommand{\der}{\textcolor{derC}{der}}
\newcommand{\die}{\textcolor{dieC}{die}}
\newcommand{\das}{\textcolor{dasC}{das}}
% irregular form: always color the whole word
\newcommand{\irr}[1]{\textcolor{learnC}{\textbf{#1}}}
% regular ending: bold, no color
\newcommand{\en}[1]{\textbf{#1}}
% English: \tr on its own line under a cell, \trs inline in parentheses
\newcommand{\tr}[1]{\newline{\footnotesize\textcolor{glossC}{\itshape #1}}}
\newcommand{\trs}[1]{{\footnotesize\textcolor{glossC}{\itshape (#1)}}}
\newcommand{\les}[1]{{\scriptsize\textcolor{tagC}{[L#1]}}}
% width minus column padding, so a row of widths that sums to 0.96 fits the column
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{\dimexpr#1\linewidth-10pt\relax}}
% every table: same size, spacing, header style, and rule colors
\newenvironment{sheet}[1]{\par\noindent\small\renewcommand{\arraystretch}{1.2}\arrayrulecolor{ruleC}%
\begin{tabular}[t]{@{}#1@{}}}{\end{tabular}\par\vspace{3pt}}
\newcommand{\h}[1]{{\color{white!80}\textbf{#1}}}
\newcommand{\hdgloss}[1]{\newline{\footnotesize\textcolor{glossC}{\itshape\mdseries #1}}}
\newcommand{\grp}{\arrayrulecolor{grpC}\hline\arrayrulecolor{ruleC}}
\newcommand{\lbl}[2]{\multicolumn{#1}{@{}l@{}}{\scriptsize\textcolor{tagC}{#2}}\\}
% one warning style
\newcommand{\watch}[1]{\par\vspace{3pt}\noindent{\setlength{\fboxsep}{3pt}\fcolorbox{ruleC}{black}{\begin{minipage}{\dimexpr\linewidth-2\fboxsep-2\fboxrule\relax}\small\textbf{Watch out:} #1\end{minipage}}}\par\vspace{3pt}}

\section{German A1 --- Nicos Weg, Lessons 1--4}

\begin{multicols}{2}
\raggedcolumns

Source: DW Learn German, \emph{Nicos Weg} A1, lessons 1--4. Tags like \les{3} name the lesson.

\begin{sheet}{L{0.30}L{0.66}}
\h{Look} & \h{Meaning} \\\hline
\der{} \;\die{} \;\das{} & masculine, feminine (and all plurals), neuter \\
\irr{gold} & irregular form: learn the whole word \\
\textbf{bold} & regular ending or key word \\
\textcolor{glossC}{\itshape lavender italic} & English \\
\textbf{du} \;/\; \textbf{Sie} & informal \;/\; formal ``you'' \\
\end{sheet}

% ------------------------------------------------------------
\filbreak \subsection{greetings and goodbyes}
\begin{sheet}{L{0.33}L{0.27}L{0.36}}
\h{German} & \h{English} & \h{Use it when} \\\hline
Hallo! & Hello! / Hi! & any time, mostly informal \\
Guten Morgen! & Good morning! & until about 10--11 a.m. \\
Guten Tag! & Hello / Good day & daytime, polite \\
Guten Abend! & Good evening! & from about 6 p.m. \\
Tschüss! & Bye! & informal \\
Auf Wiedersehen! & Goodbye! & formal \\
Entschuldigung, \ldots & Excuse me, \ldots & to get attention or say sorry \\
\end{sheet}

% ------------------------------------------------------------
\filbreak \subsection{names \les{1}}
\begin{sheet}{L{0.29}L{0.29}L{0.38}}
\h{Ask (du)} & \h{Ask (Sie)} & \h{Answer} \\\hline
Wie heißt du?\tr{What is your name?} & Wie heißen Sie?\tr{What is your name?} & Ich heiße Emma.\tr{My name is Emma.} \\
Wer bist du?\tr{Who are you?} & Wer sind Sie?\tr{Who are you?} & Ich bin Nico.\tr{I am Nico.} \\
Und du?\tr{And you?} & Und Sie?\tr{And you?} & Mein Name ist Lisa.\tr{My name is Lisa.} \\
\end{sheet}
\textbf{Wie} \trs{how} heißt du? = What is your name? German asks \emph{how} you are called, not \emph{what}.

% ------------------------------------------------------------
\filbreak \subsection{introducing others \les{1--2}}
\begin{sheet}{L{0.46}L{0.50}}
\h{German} & \h{English} \\\hline
Das ist Nico. & This is Nico. \\
Hier ist \ldots & This is \ldots / Here is \ldots \\
Er heißt Nico. & His name is Nico. \\
Sie heißt Lisa. & Her name is Lisa. \\
Er ist Taxifahrer. & He is a taxi driver. \\
Sie ist Taxifahrer\en{in}. & She is a taxi driver. \\
Du bist Emma, oder? & You are Emma, right? \\
\end{sheet}
\begin{itemize}
\item A job takes \textbf{no article}: Er ist Taxifahrer, not \emph{ein} \trs{a} Taxifahrer.
\item A woman's job adds \en{-in} and takes \die: \der{} Polizist $\to$ \die{} Polizist\en{in}.
\end{itemize}

% ------------------------------------------------------------
\filbreak \subsection{where from, where you live \les{3}}
\begin{sheet}{L{0.29}L{0.29}L{0.38}}
\h{Ask (du)} & \h{Ask (Sie)} & \h{Answer} \\\hline
Woher kommst du?\tr{Where are you from?} & Woher kommen Sie?\tr{Where are you from?} & Ich komme \textbf{aus} Spanien.\tr{I am from Spain.} \\
Wo wohnst du?\tr{Where do you live?} & Wo wohnen Sie?\tr{Where do you live?} & Ich wohne \textbf{in} Berlin.\tr{I live in Berlin.} \\
Was machst du hier?\tr{What are you doing here?} & Was machen Sie hier?\tr{What are you doing here?} & Ich lerne Deutsch.\tr{I am learning German.} \\
Sprichst du Deutsch?\tr{Do you speak German?} & Sprechen Sie Deutsch?\tr{Do you speak German?} & Ja, ein bisschen. / Nein.\tr{Yes, a little. / No.} \\
\end{sheet}
\begin{itemize}
\item \textbf{aus} = from (where you come from). \textbf{in} = in (where you live).
\item Most countries take no article: aus Deutschland \trs{from Germany}.
\item A few take one: aus der Schweiz \trs{from Switzerland}, aus den USA \trs{from the USA}.
\end{itemize}
\watch{\textbf{Woher} = from where. \textbf{Wo} = where. Say ``Woher kommst du?'', never ``Wo kommst du?''}

% ------------------------------------------------------------
\filbreak \subsection{du, ihr, or Sie?}
\begin{sheet}{L{0.10}L{0.44}L{0.42}}
\h{Word} & \h{Talking to} & \h{Example} \\\hline
du & one friend, family member, child, classmate & Wie heißt du?\tr{What is your name?} \\
ihr & two or more people you call du & Woher kommt ihr?\tr{Where are you (all) from?} \\
Sie & one or more adults you do not know, officials, a doctor & Wie heißen Sie?\tr{What is your name?} \\
\end{sheet}
If you do not know an adult, use \textbf{Sie}. Formal Sie is the same for one person or many.
\watch{Formal \textbf{Sie} always has a capital S. Lowercase \textbf{sie} = she or they. The verb tells you which: sie heiß\en{t} \trs{she is called}, sie heiß\en{en} \trs{they are called}.}

% ------------------------------------------------------------
\filbreak \subsection{personal pronouns + sein, haben}
\begin{sheet}{L{0.20}L{0.26}L{0.22}L{0.22}}
\h{Pronoun} & \h{English} & \h{sein}\hdgloss{to be} & \h{haben}\hdgloss{to have} \\\hline
ich & I & \irr{bin} & habe \\
du & you (informal) & \irr{bist} & \irr{hast} \\
er / sie / es & he / she / it & \irr{ist} & \irr{hat} \\\grp
wir & we & \irr{sind} & haben \\
ihr & you all (informal) & \irr{seid} & habt \\
sie & they & \irr{sind} & haben \\\grp
Sie & you (formal) & \irr{sind} & haben \\
\end{sheet}
\begin{itemize}
\item \textbf{sein} is fully irregular: learn every form.
\item \textbf{haben} drops the b in du \irr{hast} \trs{you have} and er \irr{hat} \trs{he has}. \les{4}
\end{itemize}
Welche Nummer hast du? --- Ich habe die Nummer 4187.\tr{Which number do you have? --- I have the number 4187.}

% ------------------------------------------------------------
\filbreak \subsection{regular verbs: stem + ending \les{3}}
Remove \textbf{-en} from the infinitive to get the stem: komm\textcolor{tagC}{en} $\to$ komm-. Add the ending for the person.
\begin{sheet}{L{0.37}L{0.10}L{0.16}L{0.16}L{0.16}}
\h{Person} & \h{Ending} & \h{kommen}\hdgloss{to come} & \h{wohnen}\hdgloss{to live} & \h{lernen}\hdgloss{to learn} \\\hline
ich \trs{I} & \en{-e} & komm\en{e} & wohn\en{e} & lern\en{e} \\
du \trs{you} & \en{-st} & komm\en{st} & wohn\en{st} & lern\en{st} \\
er/sie/es \trs{he/she/it} & \en{-t} & komm\en{t} & wohn\en{t} & lern\en{t} \\\grp
wir \trs{we} & \en{-en} & komm\en{en} & wohn\en{en} & lern\en{en} \\
ihr \trs{you all} & \en{-t} & komm\en{t} & wohn\en{t} & lern\en{t} \\
sie / Sie \trs{they / you formal} & \en{-en} & komm\en{en} & wohn\en{en} & lern\en{en} \\
\end{sheet}
\begin{itemize}
\item Same pattern: machen \trs{to do, to make}, suchen \trs{to look for}.
\item wir, sie, and Sie always use the infinitive form.
\end{itemize}

% ------------------------------------------------------------
\filbreak \subsection{verbs with a twist}
Gold marks the forms that break the pattern.
\begin{sheet}{L{0.37}L{0.20}L{0.20}L{0.19}}
\h{Person} & \h{heißen}\hdgloss{to be called} & \h{sprechen}\hdgloss{to speak} & \h{helfen}\hdgloss{to help} \\\hline
ich \trs{I} & heiße & spreche & helfe \\
du \trs{you} & \irr{heißt} & \irr{sprichst} & \irr{hilfst} \\
er/sie/es \trs{he/she/it} & heißt & \irr{spricht} & \irr{hilft} \\\grp
wir \trs{we} & heißen & sprechen & helfen \\
ihr \trs{you all} & heißt & sprecht & helft \\
sie / Sie \trs{they / you formal} & heißen & sprechen & helfen \\
\end{sheet}
\begin{itemize}
\item If the stem ends in \textbf{-s, -ß, -z, -x}, du adds only \textbf{-t}: du \irr{heißt}, not heißst.
\item sprechen and helfen change \textbf{e $\to$ i} in the du and er/sie/es forms only.
\end{itemize}

% ------------------------------------------------------------
\filbreak \subsection{question words}
\begin{sheet}{L{0.15}L{0.25}L{0.56}}
\h{German} & \h{English} & \h{Example} \\\hline
wer & who & Wer bist du?\tr{Who are you?} \\
was & what & Was machst du hier?\tr{What are you doing here?} \\
wie & how & Wie heißt du?\tr{What is your name? (lit. How are you called?)} \\
wo & where & Wo wohnst du?\tr{Where do you live?} \\
woher & from where & Woher kommst du?\tr{Where are you from?} \\
welche & which & Welche Nummer hast du?\tr{Which number do you have?} \\
\end{sheet}

% ------------------------------------------------------------
\filbreak \subsection{word order}
In a statement or a W-question, the verb is \textbf{second}. In a yes/no question, the verb is \textbf{first}.
\begin{sheet}{L{0.25}L{0.20}L{0.51}}
\h{Position 1} & \h{Verb} & \h{Rest} \\\hline
\lbl{3}{statements and W-questions: verb second}
Ich & \textbf{komme} & aus Spanien.\tr{I come from Spain.} \\
Jetzt & \textbf{wohne} & ich in Berlin.\tr{Now I live in Berlin.} \\
Woher & \textbf{kommst} & du?\tr{Where are you from?} \\
Wie & \textbf{heißen} & Sie?\tr{What is your name?} \\\grp
\lbl{3}{yes/no questions: verb first}
 & \textbf{Kommst} & du aus Spanien?\tr{Are you from Spain?} \\
 & \textbf{Sprechen} & Sie Deutsch?\tr{Do you speak German?} \\
\end{sheet}
\watch{If another word is first (Jetzt \trs{now}, Hier \trs{here}), the subject moves after the verb: Jetzt wohne \textbf{ich} in Berlin.}

% ------------------------------------------------------------
\filbreak \subsection{numbers 0--12 \les{4}}
\begin{sheet}{L{0.07}L{0.17}L{0.07}L{0.17}L{0.07}L{0.17}}
0 & null & 5 & fünf & 10 & zehn \\
1 & eins & 6 & sechs & 11 & elf \\
2 & zwei & 7 & sieben & 12 & zwölf \\
3 & drei & 8 & acht & & \\
4 & vier & 9 & neun & & \\
\end{sheet}
Phone numbers are read digit by digit: 4187 = vier, eins, acht, sieben.

% ------------------------------------------------------------
\filbreak \subsection{small words and phrases}
\begin{sheet}{L{0.36}L{0.60}}
\h{German} & \h{English} \\\hline
ja / nein & yes / no \\
aber & but \\
jetzt & now \\
hier & here \\
weg & gone \\
Oder? & Right? / Isn't that so? \\
richtig & correct, right \\
Keine Ahnung. & No idea. \trs{short for: Ich habe keine Ahnung.} \\
Sie sprechen gut Deutsch. & You speak German well. \\
\end{sheet}

% ------------------------------------------------------------
\filbreak \subsection{nouns: people}
\begin{sheet}{L{0.31}L{0.37}L{0.28}}
\h{Singular} & \h{Plural} & \h{English} \\\hline
\der{} Deutschlehrer & \die{} Deutschlehrer & teacher (m) \\
\die{} Deutschlehrer\en{in} & \die{} Deutschlehrer\en{innen} & teacher (f) \\
\der{} Taxifahrer & \die{} Taxifahrer & taxi driver (m) \\
\die{} Taxifahrer\en{in} & \die{} Taxifahrer\en{innen} & taxi driver (f) \\
\der{} Tourist & \die{} Touristen & tourist (m) \\
\die{} Tourist\en{in} & \die{} Tourist\en{innen} & tourist (f) \\
\der{} Polizist & \die{} Polizisten & police officer (m) \\
\die{} Polizist\en{in} & \die{} Polizist\en{innen} & police officer (f) \\
\der{} Freund & \die{} Freunde & friend (m) \\
\die{} Freund\en{in} & \die{} Freund\en{innen} & friend (f) \\\grp
\der{} Vater & \die{} Väter & father \\
\der{} Papa & \die{} Papas & dad \\
\die{} Mutter & \die{} Mütter & mother \\
\die{} Familie & \die{} Familien & family \\
\die{} Polizei & (no plural) & police \\
\end{sheet}
A word that ends in \en{-in} is always \die{} and its plural ends in \en{-innen}.

% ------------------------------------------------------------
\filbreak \subsection{nouns: things and places}
\begin{sheet}{L{0.36}L{0.34}L{0.26}}
\h{Singular} & \h{Plural} & \h{English} \\\hline
\der{} Vorname & \die{} Vornamen & first name \\
\der{} Familienname & \die{} Familiennamen & last name \\
\der{} Kurs & \die{} Kurse & course \\
\der{} Sprachkurs & \die{} Sprachkurse & language course \\
\der{} Pass & \die{} Pässe & passport \\\grp
\die{} Sprache & \die{} Sprachen & language \\
\die{} Nummer & \die{} Nummern & number \\
\die{} Arbeit & (no plural) & work, job \\\grp
\das{} Beispiel & \die{} Beispiele & example \\
\das{} Auto & \die{} Autos & car \\
\das{} Café & \die{} Cafés & cafe \\
\das{} Foto & \die{} Fotos & photo \\
\das{} Fahrradgeschäft & \die{} Fahrradgeschäfte & bicycle store \\\grp
(\das) Deutsch & --- & German (lang.) \\
(\das) Deutschland & --- & Germany \\
(\das) Spanien & --- & Spain \\
\end{sheet}
\watch{Every German noun starts with a capital letter. Learn each noun with its article: you cannot predict it from the English.}

% ------------------------------------------------------------
\filbreak \subsection{verbs from lessons 1--4}
\begin{sheet}{L{0.24}L{0.30}L{0.42}}
\h{Infinitive} & \h{er/sie/es} & \h{English} \\\hline
sein & \irr{ist} & to be \\
haben & \irr{hat} & to have \\
heißen & heißt & to be called \\
kommen & kommt & to come \\
wohnen & wohnt & to live \\
lernen & lernt & to learn \\
machen & macht & to make, to do \\
suchen & sucht & to look for \\
sprechen & \irr{spricht} & to speak \\
helfen & \irr{hilft} & to help (someone) \\
\end{sheet}

\end{multicols}
```

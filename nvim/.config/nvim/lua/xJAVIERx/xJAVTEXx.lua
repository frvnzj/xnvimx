local M = {
  dir = "~/Gits/xJUSTEXx.nvim",
  -- "frvnzj/xJUSTEXx.nvim",
}

function M.config()
  require("xJUSTEXx").setup {
    tex_templates = {
      article = {
        name = "Article",
        content = [[
\documentclass[doc,12pt]{apa7}

% Font option: Arial[Arial], Carlito[Carlito], Droid Serif[Droid],
% GFS Didot [GFSDidot](default), IM FELL English[IMFELLEnglish], Kerkis[Kerkis], Times New Roman[TNR].
\usepackage{xJAVx-apa7}

\addbibresource{~/Documentos/LaTeX/refs.bib}

% \hypersetup{
% 	pdftitle={<++>},
% 	pdfkeywords={<++>}
% }


\begin{document}

\authorsnames{<++>}
\authorsaffiliations{<++>}
\title{<++>}
\shorttitle{<++>}

% \abstract{<++>}
% \keywords{<++>}

% \authornote{<++>}

\maketitle

% \fontsize{12pt}{14pt}\selectfont\doublespacing{}
\fontsize{12pt}{14pt}\selectfont\onehalfspacing{}

<++>


% ----- Bibliografía -----
% \printbibliography
\end{document}
        ]],
      },
      presentation = {
        name = "Presentation",
        content = [[
\documentclass{beamer}

\usepackage{xBEAMERx}

\addbibresource{~/Documentos/LaTeX/refs.bib}

\begin{document}

\title{<++>}
% \subtitle{<++>}
\author{Francisco Javier Gómez Rodríguez}
\institute{Universidad Autónoma de la Ciudad de México}
\date{<++>}

\begin{frame}
	\titlepage
\end{frame}

\begin{frame}
	\tableofcontents
\end{frame}

\section{<++>}

\begin{frame}
	\frametitle{<++>}

	<++>
\end{frame}

\end{document}
        ]],
      },
    },
    project_dirs = {
      vim.fn.expand "$HOME" .. "/Documentos/Ensayos",
      vim.fn.expand "$HOME" .. "/Documentos/Research",
      vim.fn.expand "$HOME" .. "/Documentos/Tareas",
    },
  }
end

return M

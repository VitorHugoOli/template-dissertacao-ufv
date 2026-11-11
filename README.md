# Template de dissertação e tese da UFV (LaTeX)

Template em LaTeX para dissertações e teses da Universidade Federal de Viçosa, baseado no
[abnTeX2](https://www.abntex.net.br) e no pacote `abntex2-UFV`. Margens, fonte (Times 12 pt),
espaçamento 1,5, ordem das páginas pré-textuais e numeração seguem o manual de entrega da UFV.

## Como usar

**Overleaf:** envie a pasta inteira (ou importe o repositório) e compile `main.tex` com pdfLaTeX.

**Localmente** (TeX Live ou MacTeX completo):

```bash
make            # versão completa -> main.pdf
make deposito   # versão de depósito -> deposito.pdf
```

## Estrutura

| arquivo | conteúdo |
|---|---|
| `preambulo.tex` | pacotes, idioma e **dados do trabalho** (título, autor, orientador, programa) |
| `main.tex` | ordem das páginas: folha de rosto, dedicatória, agradecimentos, epígrafe, resumos, listas, sumário, capítulos, referências e apêndices |
| `resumo.tex` | Resumo e Abstract |
| `capitulos/` | um arquivo por capítulo; `exemplos.tex` mostra figura, tabela, equação e definição |
| `referencias.bib` | referências em BibTeX (estilo numérico ABNT) |
| `abntex2-UFV.sty` | capa e folha de rosto da UFV |
| `deposito.tex` | gera a versão de depósito a partir do mesmo `main.tex` |

Para trocar de capítulos, edite os `\include` em `main.tex`. Coloque imagens em `figuras/`.

## Texto em inglês

Descomente `\def\textoemingles{}` em `preambulo.tex`. Os títulos das listas, do sumário, das
legendas e das referências passam para o inglês ("List of Figures", "Contents", "References",
"Supervisor:"). O Resumo em português e o Abstract continuam no documento.

## Versão completa e versão de depósito

- **`main.pdf` (versão completa):** o documento inteiro, para a banca.
- **`deposito.pdf` (versão de depósito):** só o corpo, a partir da lista de ilustrações. É o
  arquivo anexado no AcademicoPG, que gera as próprias páginas pré-textuais (capa, folha de rosto,
  folha de aprovação, dedicatória, agradecimentos, epígrafe, resumo e abstract) a partir dos
  formulários do sistema.

**Numeração no depósito.** As páginas pré-textuais são contadas, mas não numeradas. A capa e a
ficha catalográfica não são contadas. Como o AcademicoPG insere páginas antes do seu arquivo, o
número da primeira página do corpo depende do documento montado pelo sistema:

1. compile `deposito.pdf`, anexe no AcademicoPG e emita o RASCUNHO;
2. no RASCUNHO, conte as folhas antes da Introdução, sem a capa: a Introdução recebe esse número + 1;
3. ajuste `\primeirapaginadocorpo` em `main.tex` com esse valor, recompile e anexe de novo.

A referência para a numeração é sempre o arquivo emitido pelo sistema. A ficha catalográfica,
anexada depois, não altera esse número.

## Créditos

- [abnTeX2](https://www.abntex.net.br), sob a LaTeX Project Public License 1.3c.
- `abntex2-UFV.sty`: versão modificada do pacote mantido por Rodrigo Smarzaro (UFV), sob a mesma
  licença.
- Template organizado por Vitor Hugo de Oliveira Silva.

pathorigin=/media/rjourde/Data/Utilisateur/Documents/LaTeX

src=report
in=$(pathorigin)/newfile.tex

dir=.latex-out

FLAGS=--shell-escape -output-dir=$(dir)
latex=pdflatex

compile=$(latex) $(FLAGS) $(src).tex


all : $(src).pdf

$(src).pdf : $(dir)/$(src).pdf preambule/*
	cp $< $@

$(dir)/$(src).pdf : $(src).tex preambule/*
	$(compile)


.PHONY : t
t :
	$(compile)
	bibtex $(dir)/$(src)
	cp $(dir)/$(src).blg $(src).blg
	$(compile)
	$(compile)
	rm $(src).blg
	cp $(dir)/$(src).pdf $(src).pdf


preambule :
	cp -r $(pathorigin)/preambule/ preambule

my-sty :
	ln -s $(pathorigin)/my-sty my-sty

$(dir) :
	mkdir $(dir)


.PHONY : init init-dir new clean purge

init : init-dir preambule new

init-dir : $(dir)

new : $(dir)
	rm -f $(src).tex
	cp $(in) $(src).tex


configure-% :
	echo "\\\newcommand\documentis$*{}\n" | tee -a preambule/config.tex

clean-config :
	echo "" | cat > preambule/config.tex


clean :
	rm -rf $(dir)

purge : clean
	rm -rf preambule
	rm -f $(src).tex
	rm -f $(src).pdf


help :
	echo "WARNING help file incorrect"
	@cat < $(pathorigin)/help-make.txt

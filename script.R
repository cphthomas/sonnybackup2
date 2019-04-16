rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')
system("git config --global user.email 'cphthomas\\@gmail.com' && git config --global user.name 'cphthomas' && git config --global credential.helper 'cache --timeout 300'")
system("git add . && git commit -a -m . && git push")

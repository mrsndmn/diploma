FROM aergus/latex

RUN mkdir /out && echo -n '#!/bin/bash\nlatexmk -xelatex -outdir=/out' >> /build_uir_pdf.sh \
    && chmod +x /build_uir_pdf.sh && mkdir -p /doc/title/ /doc/img/ /doc/chapters/ /doc/listings/

# COPY ast12.cli ast14.cli mathpartir.sty pstheorems.sty rusthesis.cls thesis-template.tcp thesis-template.tex /doc/
# COPY listings/ /doc/listings/
# COPY title/ /doc/title/
# COPY img/ /doc/img/
# COPY chapters/ /doc/chapters/

WORKDIR /doc/
ENTRYPOINT [ "/build_uir_pdf.sh" ]

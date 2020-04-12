from blang/latex


run echo -n '#!/bin/bash\nlatexmk -xelatex' >> /build_uir_pdf.sh \
    && chmod +x /build_uir_pdf.sh && mkdir /doc
copy . /doc
WORKDIR /doc
ENTRYPOINT [ "/build_uir_pdf.sh" ]

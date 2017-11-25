(package-initialize)
(require 'org)
(require 'ox)
(require 'ox-publish)

(setq user-full-name "John Krumpotick")
(setq user-mail-address "softwaredevelopment@simplexapparati.com")

(setq org-publish-project-alist '(("simple-publish"
                                   :base-directory "."
                                   :base-extension "org"                         ; Only process org-mode files.
                                   :publishing-directory "./published-html"
                                   :publishing-function org-html-publish-to-html
                                   :section-numbers nil
                                   :with-toc nil
                                   :html-extension "html"
                                   :html-head-include-scripts nil                ; Do not include the default javascript.
                                   :html-head-include-default-style nil          ; Do not include the default css styles.
                                   :html-html5-fancy t                           ; Supposedly this is required for HTML5 output.
                                   :html-doctype "html5"                         ; And yes, render out HTML5.
                                   :html-preamble nil
                                   :html-postamble nil
                                   :recursive t)))

(org-mode)
(org-publish-project "simple-publish" force-all)
(package-initialize)
(require 'org)
(require 'ox)
(require 'ox-publish)

(setq org-publish-project-alist
    '(
      ;; org files to be exported to HTML.
      ("simple-publish-org"
       :author "Your Name Here"
       :base-directory "./org"
       :base-extension "org"
       :publishing-directory "./published"
       :publishing-function org-html-publish-to-html
       :section-numbers nil
       :with-toc nil
       :time-stamp-file nil
       :html-extension "html"
       :html-head-include-scripts nil
       :html-head-include-default-style nil
       :html-html5-fancy t
       :html-doctype "html5"
       :html-preamble nil
       :html-postamble nil
       :exclude "publish-[a-z]+.org"
       :recursive t)

      ;; CSS files to be copied to the published folder.
      ("simple-publish-css"
       :base-directory "./org/css"
       :base-extension "css"
       :publishing-directory "./published/css"
       :publishing-function org-publish-attachment)

      ;; Javascript files to be copied to the published folder.
      ("simple-publish-js"
       :base-directory "./org/js"
       :base-extension "js"
       :publishing-directory "./published/js"
       :publishing-function org-publish-attachment)

      ;; Publish all of the components in order.
      ("simple-publish" :components ("simple-publish-org" "simple-publish-css" "simple-publish-js"))
    )
)

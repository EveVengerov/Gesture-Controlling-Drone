
(cl:in-package :asdf)

(defsystem "plutodrone-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PlutoMsg" :depends-on ("_package_PlutoMsg"))
    (:file "_package_PlutoMsg" :depends-on ("_package"))
    (:file "PlutoMsgAP" :depends-on ("_package_PlutoMsgAP"))
    (:file "_package_PlutoMsgAP" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "scan2image-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ScanImage" :depends-on ("_package_ScanImage"))
    (:file "_package_ScanImage" :depends-on ("_package"))
  ))
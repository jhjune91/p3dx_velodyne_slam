
(cl:in-package :asdf)

(defsystem "libdpm_ocv-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageObjects" :depends-on ("_package_ImageObjects"))
    (:file "_package_ImageObjects" :depends-on ("_package"))
  ))
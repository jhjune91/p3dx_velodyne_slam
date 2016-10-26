
(cl:in-package :asdf)

(defsystem "ndt_localizer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ndt_stat" :depends-on ("_package_ndt_stat"))
    (:file "_package_ndt_stat" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "icp_localizer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "icp_stat" :depends-on ("_package_icp_stat"))
    (:file "_package_icp_stat" :depends-on ("_package"))
  ))
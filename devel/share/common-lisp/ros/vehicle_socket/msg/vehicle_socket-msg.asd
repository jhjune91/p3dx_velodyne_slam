
(cl:in-package :asdf)

(defsystem "vehicle_socket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CanInfo" :depends-on ("_package_CanInfo"))
    (:file "_package_CanInfo" :depends-on ("_package"))
  ))
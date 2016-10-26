
(cl:in-package :asdf)

(defsystem "synchronization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "time_monitor" :depends-on ("_package_time_monitor"))
    (:file "_package_time_monitor" :depends-on ("_package"))
    (:file "time_diff" :depends-on ("_package_time_diff"))
    (:file "_package_time_diff" :depends-on ("_package"))
  ))
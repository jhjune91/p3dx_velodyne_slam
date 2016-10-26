
(cl:in-package :asdf)

(defsystem "pioneer3_control_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BumperState" :depends-on ("_package_BumperState"))
    (:file "_package_BumperState" :depends-on ("_package"))
  ))
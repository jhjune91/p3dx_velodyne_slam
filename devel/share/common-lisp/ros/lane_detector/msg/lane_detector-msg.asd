
(cl:in-package :asdf)

(defsystem "lane_detector-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageLaneObjects" :depends-on ("_package_ImageLaneObjects"))
    (:file "_package_ImageLaneObjects" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "lidar_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "centroids" :depends-on ("_package_centroids"))
    (:file "_package_centroids" :depends-on ("_package"))
  ))
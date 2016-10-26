
(cl:in-package :asdf)

(defsystem "calibration_camera_lidar-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "projection_matrix" :depends-on ("_package_projection_matrix"))
    (:file "_package_projection_matrix" :depends-on ("_package"))
  ))
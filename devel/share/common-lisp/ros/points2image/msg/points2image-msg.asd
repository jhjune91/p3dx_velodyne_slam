
(cl:in-package :asdf)

(defsystem "points2image-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PointsImage" :depends-on ("_package_PointsImage"))
    (:file "_package_PointsImage" :depends-on ("_package"))
    (:file "CameraExtrinsic" :depends-on ("_package_CameraExtrinsic"))
    (:file "_package_CameraExtrinsic" :depends-on ("_package"))
  ))
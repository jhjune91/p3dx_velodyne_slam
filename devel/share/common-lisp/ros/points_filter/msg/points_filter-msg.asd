
(cl:in-package :asdf)

(defsystem "points_filter-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PointsFilterInfo" :depends-on ("_package_PointsFilterInfo"))
    (:file "_package_PointsFilterInfo" :depends-on ("_package"))
  ))
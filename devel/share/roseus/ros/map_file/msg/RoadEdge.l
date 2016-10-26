;; Auto-generated. Do not edit!


(when (boundp 'map_file::RoadEdge)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'RoadEdge (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ROADEDGE")
  (make-package "MAP_FILE::ROADEDGE"))

(in-package "ROS")
;;//! \htmlinclude RoadEdge.msg.html


(defclass map_file::RoadEdge
  :super ros::object
  :slots (_id _lid _linkid ))

(defmethod map_file::RoadEdge
  (:init
   (&key
    ((:id __id) 0)
    ((:lid __lid) 0)
    ((:linkid __linkid) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _lid (round __lid))
   (setq _linkid (round __linkid))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:lid
   (&optional __lid)
   (if __lid (setq _lid __lid)) _lid)
  (:linkid
   (&optional __linkid)
   (if __linkid (setq _linkid __linkid)) _linkid)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _lid
    4
    ;; int32 _linkid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _lid
       (write-long _lid s)
     ;; int32 _linkid
       (write-long _linkid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lid
     (setq _lid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _linkid
     (setq _linkid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get map_file::RoadEdge :md5sum-) "cae41af424fa54defeb96b41214a32d5")
(setf (get map_file::RoadEdge :datatype-) "map_file/RoadEdge")
(setf (get map_file::RoadEdge :definition-)
      "int32 id
int32 lid
int32 linkid

")



(provide :map_file/RoadEdge "cae41af424fa54defeb96b41214a32d5")



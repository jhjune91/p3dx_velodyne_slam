;; Auto-generated. Do not edit!


(when (boundp 'map_file::RoadMark)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'RoadMark (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::ROADMARK")
  (make-package "MAP_FILE::ROADMARK"))

(in-package "ROS")
;;//! \htmlinclude RoadMark.msg.html


(defclass map_file::RoadMark
  :super ros::object
  :slots (_id _aid _type _linkid ))

(defmethod map_file::RoadMark
  (:init
   (&key
    ((:id __id) 0)
    ((:aid __aid) 0)
    ((:type __type) 0)
    ((:linkid __linkid) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _aid (round __aid))
   (setq _type (round __type))
   (setq _linkid (round __linkid))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:aid
   (&optional __aid)
   (if __aid (setq _aid __aid)) _aid)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:linkid
   (&optional __linkid)
   (if __linkid (setq _linkid __linkid)) _linkid)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _aid
    4
    ;; int32 _type
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
     ;; int32 _aid
       (write-long _aid s)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _linkid
       (write-long _linkid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _aid
     (setq _aid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _linkid
     (setq _linkid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get map_file::RoadMark :md5sum-) "18e3d004d39a0c265b34a63968d60155")
(setf (get map_file::RoadMark :datatype-) "map_file/RoadMark")
(setf (get map_file::RoadMark :definition-)
      "int32 id
int32 aid
int32 type # Don't use wide character
int32 linkid

")



(provide :map_file/RoadMark "18e3d004d39a0c265b34a63968d60155")



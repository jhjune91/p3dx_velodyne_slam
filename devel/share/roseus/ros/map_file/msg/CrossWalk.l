;; Auto-generated. Do not edit!


(when (boundp 'map_file::CrossWalk)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'CrossWalk (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::CROSSWALK")
  (make-package "MAP_FILE::CROSSWALK"))

(in-package "ROS")
;;//! \htmlinclude CrossWalk.msg.html


(defclass map_file::CrossWalk
  :super ros::object
  :slots (_id _aid _type _bdid _linkid ))

(defmethod map_file::CrossWalk
  (:init
   (&key
    ((:id __id) 0)
    ((:aid __aid) 0)
    ((:type __type) 0)
    ((:bdid __bdid) 0)
    ((:linkid __linkid) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _aid (round __aid))
   (setq _type (round __type))
   (setq _bdid (round __bdid))
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
  (:bdid
   (&optional __bdid)
   (if __bdid (setq _bdid __bdid)) _bdid)
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
    ;; int32 _bdid
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
     ;; int32 _bdid
       (write-long _bdid s)
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
   ;; int32 _bdid
     (setq _bdid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _linkid
     (setq _linkid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get map_file::CrossWalk :md5sum-) "7eaa688a5d613890ac2bf060e1f9b252")
(setf (get map_file::CrossWalk :datatype-) "map_file/CrossWalk")
(setf (get map_file::CrossWalk :definition-)
      "int32 id
int32 aid
int32 type
int32 bdid
int32 linkid

")



(provide :map_file/CrossWalk "7eaa688a5d613890ac2bf060e1f9b252")



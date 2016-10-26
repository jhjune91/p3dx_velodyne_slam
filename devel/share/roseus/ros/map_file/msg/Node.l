;; Auto-generated. Do not edit!


(when (boundp 'map_file::Node)
  (if (not (find-package "MAP_FILE"))
    (make-package "MAP_FILE"))
  (shadow 'Node (find-package "MAP_FILE")))
(unless (find-package "MAP_FILE::NODE")
  (make-package "MAP_FILE::NODE"))

(in-package "ROS")
;;//! \htmlinclude Node.msg.html


(defclass map_file::Node
  :super ros::object
  :slots (_nid _pid ))

(defmethod map_file::Node
  (:init
   (&key
    ((:nid __nid) 0)
    ((:pid __pid) 0)
    )
   (send-super :init)
   (setq _nid (round __nid))
   (setq _pid (round __pid))
   self)
  (:nid
   (&optional __nid)
   (if __nid (setq _nid __nid)) _nid)
  (:pid
   (&optional __pid)
   (if __pid (setq _pid __pid)) _pid)
  (:serialization-length
   ()
   (+
    ;; int32 _nid
    4
    ;; int32 _pid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nid
       (write-long _nid s)
     ;; int32 _pid
       (write-long _pid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nid
     (setq _nid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pid
     (setq _pid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get map_file::Node :md5sum-) "94c8d91d18880679a8ed9b4a81985380")
(setf (get map_file::Node :datatype-) "map_file/Node")
(setf (get map_file::Node :definition-)
      "int32 nid
int32 pid

")



(provide :map_file/Node "94c8d91d18880679a8ed9b4a81985380")



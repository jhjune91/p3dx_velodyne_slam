;; Auto-generated. Do not edit!


(when (boundp 'road_wizard::ColorSet)
  (if (not (find-package "ROAD_WIZARD"))
    (make-package "ROAD_WIZARD"))
  (shadow 'ColorSet (find-package "ROAD_WIZARD")))
(unless (find-package "ROAD_WIZARD::COLORSET")
  (make-package "ROAD_WIZARD::COLORSET"))

(in-package "ROS")
;;//! \htmlinclude ColorSet.msg.html


(defclass road_wizard::ColorSet
  :super ros::object
  :slots (_Hue _Sat _Val ))

(defmethod road_wizard::ColorSet
  (:init
   (&key
    ((:Hue __Hue) (instance road_wizard::ValueSet :init))
    ((:Sat __Sat) (instance road_wizard::ValueSet :init))
    ((:Val __Val) (instance road_wizard::ValueSet :init))
    )
   (send-super :init)
   (setq _Hue __Hue)
   (setq _Sat __Sat)
   (setq _Val __Val)
   self)
  (:Hue
   (&rest __Hue)
   (if (keywordp (car __Hue))
       (send* _Hue __Hue)
     (progn
       (if __Hue (setq _Hue (car __Hue)))
       _Hue)))
  (:Sat
   (&rest __Sat)
   (if (keywordp (car __Sat))
       (send* _Sat __Sat)
     (progn
       (if __Sat (setq _Sat (car __Sat)))
       _Sat)))
  (:Val
   (&rest __Val)
   (if (keywordp (car __Val))
       (send* _Val __Val)
     (progn
       (if __Val (setq _Val (car __Val)))
       _Val)))
  (:serialization-length
   ()
   (+
    ;; road_wizard/ValueSet _Hue
    (send _Hue :serialization-length)
    ;; road_wizard/ValueSet _Sat
    (send _Sat :serialization-length)
    ;; road_wizard/ValueSet _Val
    (send _Val :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; road_wizard/ValueSet _Hue
       (send _Hue :serialize s)
     ;; road_wizard/ValueSet _Sat
       (send _Sat :serialize s)
     ;; road_wizard/ValueSet _Val
       (send _Val :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; road_wizard/ValueSet _Hue
     (send _Hue :deserialize buf ptr-) (incf ptr- (send _Hue :serialization-length))
   ;; road_wizard/ValueSet _Sat
     (send _Sat :deserialize buf ptr-) (incf ptr- (send _Sat :serialization-length))
   ;; road_wizard/ValueSet _Val
     (send _Val :deserialize buf ptr-) (incf ptr- (send _Val :serialization-length))
   ;;
   self)
  )

(setf (get road_wizard::ColorSet :md5sum-) "c934ba71e28648240ca7f87de508588d")
(setf (get road_wizard::ColorSet :datatype-) "road_wizard/ColorSet")
(setf (get road_wizard::ColorSet :definition-)
      "ValueSet Hue
ValueSet Sat
ValueSet Val

================================================================================
MSG: road_wizard/ValueSet
int32 center
int32 range

")



(provide :road_wizard/ColorSet "c934ba71e28648240ca7f87de508588d")



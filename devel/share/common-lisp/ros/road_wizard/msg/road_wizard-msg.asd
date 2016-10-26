
(cl:in-package :asdf)

(defsystem "road_wizard-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ColorSet" :depends-on ("_package_ColorSet"))
    (:file "_package_ColorSet" :depends-on ("_package"))
    (:file "TunedResult" :depends-on ("_package_TunedResult"))
    (:file "_package_TunedResult" :depends-on ("_package"))
    (:file "Signals" :depends-on ("_package_Signals"))
    (:file "_package_Signals" :depends-on ("_package"))
    (:file "ExtractedPosition" :depends-on ("_package_ExtractedPosition"))
    (:file "_package_ExtractedPosition" :depends-on ("_package"))
    (:file "ValueSet" :depends-on ("_package_ValueSet"))
    (:file "_package_ValueSet" :depends-on ("_package"))
  ))
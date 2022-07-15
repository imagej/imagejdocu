This is the plugin to acquire images from the context of the image.

OBIR_jar use Hozo API.

Essential items

-   OBIR\_.jar(Ontology management)
-   mTDT\_.jar (modified tudor dicom tool,QR class)
-   DCM4CHEE (modified dcm4chee-attribute-fillter.xml)

You have to set ClassPath following jar files.

-   hozocore.jar
-   hozocorex.jar
-   hozoOat.jar
-   dcm4che (current ver) jar files in lib directory

You have to install DCM4CHEE and replace dcm4chee-attribute-fillter.xml.

1.  When you replace xml file, still don\'t save image.(The xml file
    path is (your dcm4chee
    directory)\\server\\default\\conf\\dcm4chee-attribute-filter.xml)
2.  After replace, restart DCM4CHEE.
3.  If you need more DCM4CHEE install information, please check this
    file.\"How to install DCM4CHEE\"

Feature as follow,

-   Generate Ontology \[AnyConcept and as part of the relationship set
    is your master code, RadLex, FMAID and ICD code\]
-   Search contents \[Search ontology by word\]
-   Ontology Viewer \[mainly used Tree view and browze each ontology\]
-   Set Dicom Tag \[(00080100)CodeValue setting to Dicom image for
    managing master code\]
-   Get master code \[After setting CodeValueTag, get master code from
    Dicom image\]
-   Search server by master code \[ Using DCM4CHEE(modified
    dcm4chee-attribute-fillter.xml) and mTDT\_.jar \]

Any Question? choko1201@gmail.com Tatsuaki Kobayashi

[1mdiff --git a/.idea/.gitignore b/.idea/.gitignore[m
[1mdeleted file mode 100644[m
[1mindex 26d3352..0000000[m
[1m--- a/.idea/.gitignore[m
[1m+++ /dev/null[m
[36m@@ -1,3 +0,0 @@[m
[31m-# Default ignored files[m
[31m-/shelf/[m
[31m-/workspace.xml[m
[1mdiff --git a/.idea/compiler.xml b/.idea/compiler.xml[m
[1mdeleted file mode 100644[m
[1mindex ea1203d..0000000[m
[1m--- a/.idea/compiler.xml[m
[1m+++ /dev/null[m
[36m@@ -1,24 +0,0 @@[m
[31m-<?xml version="1.0" encoding="UTF-8"?>[m
[31m-<project version="4">[m
[31m-  <component name="CompilerConfiguration">[m
[31m-    <annotationProcessing>[m
[31m-      <profile name="Maven default annotation processors profile" enabled="true">[m
[31m-        <sourceOutputDir name="target/generated-sources/annotations" />[m
[31m-        <sourceTestOutputDir name="target/generated-test-sources/test-annotations" />[m
[31m-        <outputRelativeToContentRoot value="true" />[m
[31m-        <module name="tasklist.api" />[m
[31m-        <module name="tasklist.api (1)" />[m
[31m-      </profile>[m
[31m-    </annotationProcessing>[m
[31m-    <bytecodeTargetLevel>[m
[31m-      <module name="tasklist.api" target="17" />[m
[31m-      <module name="tasklist.api (1)" target="17" />[m
[31m-    </bytecodeTargetLevel>[m
[31m-  </component>[m
[31m-  <component name="JavacSettings">[m
[31m-    <option name="ADDITIONAL_OPTIONS_OVERRIDE">[m
[31m-      <module name="tasklist.api" options="-parameters" />[m
[31m-      <module name="tasklist.api (1)" options="-parameters" />[m
[31m-    </option>[m
[31m-  </component>[m
[31m-</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/dbnavigator.xml b/.idea/dbnavigator.xml[m
[1mdeleted file mode 100644[m
[1mindex ac5f94f..0000000[m
[1m--- a/.idea/dbnavigator.xml[m
[1m+++ /dev/null[m
[36m@@ -1,406 +0,0 @@[m
[31m-<?xml version="1.0" encoding="UTF-8"?>[m
[31m-<project version="4">[m
[31m-  <component name="DBNavigator.Project.DatabaseFileManager">[m
[31m-    <open-files />[m
[31m-  </component>[m
[31m-  <component name="DBNavigator.Project.Settings">[m
[31m-    <connections />[m
[31m-    <browser-settings>[m
[31m-      <general>[m
[31m-        <display-mode value="TABBED" />[m
[31m-        <navigation-history-size value="100" />[m
[31m-        <show-object-details value="false" />[m
[31m-      </general>[m
[31m-      <filters>[m
[31m-        <object-type-filter>[m
[31m-          <object-type name="SCHEMA" enabled="true" />[m
[31m-          <object-type name="USER" enabled="true" />[m
[31m-          <object-type name="ROLE" enabled="true" />[m
[31m-          <object-type name="PRIVILEGE" enabled="true" />[m
[31m-          <object-type name="CHARSET" enabled="true" />[m
[31m-          <object-type name="TABLE" enabled="true" />[m
[31m-          <object-type name="VIEW" enabled="true" />[m
[31m-          <object-type name="MATERIALIZED_VIEW" enabled="true" />[m
[31m-          <object-type name="NESTED_TABLE" enabled="true" />[m
[31m-          <object-type name="COLUMN" enabled="true" />[m
[31m-          <object-type name="INDEX" enabled="true" />[m
[31m-          <object-type name="CONSTRAINT" enabled="true" />[m
[31m-          <object-type name="DATASET_TRIGGER" enabled="true" />[m
[31m-          <object-type name="DATABASE_TRIGGER" enabled="true" />[m
[31m-          <object-type name="SYNONYM" enabled="true" />[m
[31m-          <object-type name="SEQUENCE" enabled="true" />[m
[31m-          <object-type name="PROCEDURE" enabled="true" />[m
[31m-          <object-type name="FUNCTION" enabled="true" />[m
[31m-          <object-type name="PACKAGE" enabled="true" />[m
[31m-          <object-type name="TYPE" enabled="true" />[m
[31m-          <object-type name="TYPE_ATTRIBUTE" enabled="true" />[m
[31m-          <object-type name="ARGUMENT" enabled="true" />[m
[31m-          <object-type name="DIMENSION" enabled="true" />[m
[31m-          <object-type name="CLUSTER" enabled="true" />[m
[31m-          <object-type name="DBLINK" enabled="true" />[m
[31m-        </object-type-filter>[m
[31m-      </filters>[m
[31m-      <sorting>[m
[31m-        <object-type name="COLUMN" sorting-type="NAME" />[m
[31m-        <object-type name="FUNCTION" sorting-type="NAME" />[m
[31m-        <object-type name="PROCEDURE" sorting-type="NAME" />[m
[31m-        <object-type name="ARGUMENT" sorting-type="POSITION" />[m
[31m-        <object-type name="TYPE ATTRIBUTE" sorting-type="POSITION" />[m
[31m-      </sorting>[m
[31m-      <default-editors>[m
[31m-        <object-type name="VIEW" editor-type="SELECTION" />[m
[31m-        <object-type name="PACKAGE" editor-type="SELECTION" />[m
[31m-        <object-type name="TYPE" editor-type="SELECTION" />[m
[31m-      </default-editors>[m
[31m-    </browser-settings>[m
[31m-    <navigation-settings>[m
[31m-      <lookup-filters>[m
[31m-        <lookup-objects>[m
[31m-          <object-type name="SCHEMA" enabled="true" />[m
[31m-          <object-type name="USER" enabled="false" />[m
[31m-          <object-type name="ROLE" enabled="false" />[m
[31m-          <object-type name="PRIVILEGE" enabled="false" />[m
[31m-          <object-type name="CHARSET" enabled="false" />[m
[31m-          <object-type name="TABLE" enabled="true" />[m
[31m-          <object-type name="VIEW" enabled="true" />[m
[31m-          <object-type name="MATERIALIZED VIEW" enabled="true" />[m
[31m-          <object-type name="INDEX" enabled="true" />[m
[31m-          <object-type name="CONSTRAINT" enabled="true" />[m
[31m-          <object-type name="DATASET TRIGGER" enabled="true" />[m
[31m-          <object-type name="DATABASE TRIGGER" enabled="true" />[m
[31m-          <object-type name="SYNONYM" enabled="false" />[m
[31m-          <object-type name="SEQUENCE" enabled="true" />[m
[31m-          <object-type name="PROCEDURE" enabled="true" />[m
[31m-          <object-type name="FUNCTION" enabled="true" />[m
[31m-          <object-type name="PACKAGE" enabled="true" />[m
[31m-          <object-type name="TYPE" enabled="true" />[m
[31m-          <object-type name="DIMENSION" enabled="false" />[m
[31m-          <object-type name="CLUSTER" enabled="false" />[m
[31m-          <object-type name="DBLINK" enabled="true" />[m
[31m-        </lookup-objects>[m
[31m-        <force-database-load value="false" />[m
[31m-        <prompt-connection-selection value="true" />[m
[31m-        <prompt-schema-selection value="true" />[m
[31m-      </lookup-filters>[m
[31m-    </navigation-settings>[m
[31m-    <dataset-grid-settings>[m
[31m-      <general>[m
[31m-        <enable-zooming value="true" />[m
[31m-        <enable-column-tooltip value="true" />[m
[31m-      </general>[m
[31m-      <sorting>[m
[31m-        <nulls-first value="true" />[m
[31m-        <max-sorting-columns value="4" />[m
[31m-      </sorting>[m
[31m-      <audit-columns>[m
[31m-        <column-names value="" />[m
[31m-        <visible value="true" />[m
[31m-        <editable value="false" />[m
[31m-      </audit-columns>[m
[31m-    </dataset-grid-settings>[m
[31m-    <dataset-editor-settings>[m
[31m-      <text-editor-popup>[m
[31m-        <active value="false" />[m
[31m-        <active-if-empty value="false" />[m
[31m-        <data-length-threshold value="100" />[m
[31m-        <popup-delay value="1000" />[m
[31m-      </text-editor-popup>[m
[31m-      <values-actions-popup>[m
[31m-        <show-popup-button value="true" />[m
[31m-        <element-count-threshold value="1000" />[m
[31m-        <data-length-threshold value="250" />[m
[31m-      </values-actions-popup>[m
[31m-      <general>[m
[31m-        <fetch-block-size value="100" />[m
[31m-        <fetch-timeout value="30" />[m
[31m-        <trim-whitespaces value="true" />[m
[31m-        <convert-empty-strings-to-null value="true" />[m
[31m-        <select-content-on-cell-edit value="true" />[m
[31m-        <large-value-preview-active value="true" />[m
[31m-      </gen
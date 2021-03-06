{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 24 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 24 | trimSuffix "-" -}}
{{- end -}}
{{/*
Create a default fully qualified app name for a statefulset.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
Create name at 21 to allow for -xx addition
*/}}
{{- define "statefulname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 21 | trimSuffix "-" -}}
{{- end -}}
{{/*
Create a default fully qualified app name for a cassandra statefulset.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
Create name at 21 to allow for -xx addition
*/}}
{{- define "cassandraname" -}}
{{- $name := default "cassandra" .Values.cassandra.name -}}
{{- printf "%s-%s" $name .Release.Name | lower | trunc 21 | trimSuffix "-" -}}
{{- end -}}
{{/*
Create a default fully qualified app name for a opscenter deployment.
We truncate at 24 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
Create name at 21 to allow for -xx addition
*/}}
{{- define "opscentername" -}}
{{- $name := default "opscenter" .Values.opscenter.name -}}
{{- printf "%s-%s" $name .Release.Name | lower | trunc 21 | trimSuffix "-" -}}
{{- end -}}

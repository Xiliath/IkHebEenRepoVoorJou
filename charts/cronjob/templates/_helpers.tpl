{/*
Expand the name of the chart.
*/}
{- define "ikbeneendemoapp-cronjob.name" -}
{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}
{- end -}

{/*
Create a fully qualified app name.
*/}
{- define "ikbeneendemoapp-cronjob.fullname" -}
{- if .Values.fullnameOverride }
{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}
{- else }
{- include "ikbeneendemoapp-cronjob.name" . }-{ .Release.Name | trunc 63 | trimSuffix "-" }
{- end -}
{- end -}

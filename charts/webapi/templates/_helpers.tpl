{/*
Expand the name of the chart.
*/}
{- define "ikbeneendemoapp-webapi.name" -}
{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}
{- end -}

{/*
Create a fully qualified app name.
*/}
{- define "ikbeneendemoapp-webapi.fullname" -}
{- if .Values.fullnameOverride }
{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}
{- else }
{- include "ikbeneendemoapp-webapi.name" . }-{ .Release.Name | trunc 63 | trimSuffix "-" }
{- end -}
{- end -}

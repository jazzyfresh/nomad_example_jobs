{{- define "example.metadata" -}}
meta {
    nom_author = {{ .nom.app.author }}
    nom_url = {{ .nom.app.url }}
  }
{{- end -}}

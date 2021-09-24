job "jazzy-example" {
  datacenters = ["dc1"]
  {{- if .nom_metadata_enabled }}
  {{ template "example.metadata" . }}
  {{- end}}
  group "cache" {
    network {
      port "db" {
        to = 6379
      }
    }

    task "redis" {
      driver = "docker"
      config {
        image = {{ printf "\"redis:%s\"" .example.redis_image_version }}
        ports = ["db"]
      }

      meta {
        {{ template "example_dep.data" . }}
      }

      resources {
        cpu    = {{ .example.redis_resources.cpu }}
        memory = {{ .example.redis_resources.memory }}
      }
    }
  }
}

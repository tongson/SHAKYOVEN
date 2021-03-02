_go_static_build()
{
  cd "${NAME}"
  GOOS=linux CGO_ENABLED=0 go build \
    -trimpath -ldflags '-s -w -extldflags "-static"' \
    -o "${_TARGET}/${NAME}.${TAG}" "${@}"
}


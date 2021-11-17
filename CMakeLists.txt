add_library(Java
	Sources/JavaBridgeable.swift
)

target_link_libraries(Java
	dispatch
	Foundation
	JavaCoder
)


set_target_properties(Java PROPERTIES
  INSTALL_RPATH "$ORIGIN"
  Swift_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/swift
  INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_BINARY_DIR}/swift
)

_install_target(Java)

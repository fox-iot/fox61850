
set(smart_substation_SRCS
   smart_substation.c
)

IF(MSVC)

set_source_files_properties(${smart_substation_SRCS}
                                       PROPERTIES LANGUAGE CXX)
ENDIF(MSVC)
                                       
add_executable(smart_substation
  ${smart_substation_SRCS}
)

target_link_libraries(smart_substation
    iec61850
)




# For more information on this file see:
# https://learn.microsoft.com/en-us/vcpkg/get_started/get-started-packaging?pivots=shell-powershell
vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO iOSDevZone/PyOpenJt
  REF "${VERSION}"
  SHA512 2b643ccf423443d3f831b707f33be627dcb159b210ce1c82762afa35fbb27c88314a59781407e984b56862e4747a4f0891134de12fc58c2f57cc167bc7fc8801
  HEAD_REF "master"
)

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

#vcpkg_cmake_config_fixup(PACKAGE_NAME "py-open-jt")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}") 

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")

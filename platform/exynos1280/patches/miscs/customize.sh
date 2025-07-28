# echo "Disabling encryption"
# LINE=$(sed -n "/^\/dev\/block\/by-name\/userdata/=" "$WORK_DIR/vendor/etc/fstab.s5e8825")
# sed -i "${LINE}s/,fileencryption=aes-256-xts:aes-256-cts:v2//g" "$WORK_DIR/vendor/etc/fstab.s5e8825"

if [ "$TARGET_CODENAME" != "a25x" ]; then
  echo "Adding r11s btservices apex"
  ADD_TO_WORK_DIR "r11sxxx" "system" "system/apex/com.android.btservices.apex" 0 0 644 "u:object_r:system_file:s0"
fi

echo "Adding m35x surfaceflinger"
ADD_TO_WORK_DIR "m35xxx" "system" "system/bin/surfaceflinger" 0 2000 755 "u:object_r:surfaceflinger_exec:s0"
ADD_TO_WORK_DIR "m35xxx" "system" "system/lib64/libgui.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "m35xxx" "system" "system/lib64/libhwui.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "m35xxx" "system" "system/lib64/libui.so" 0 0 644 "u:object_r:system_lib_file:s0"

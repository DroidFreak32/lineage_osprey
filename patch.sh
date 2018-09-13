
TOP=${PWD}
. build/envsetup.sh

#############################################################
# PATCHES                                                   #
#############################################################

cd system/qcom
git am -3 $TOP/0001-DNM-libqsap_sdk-Suppress-warnings.patch
cd $TOP

#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]

# android_hardware_interfaces
repopick 225506 225507

# android_system_bt
repopick 223945 225422 225423 230382

# android_system_core
repopick 223085

# android_system_sepolicy
repopick 223746 223748 230151 230613

# android_vendor_lineage
repopick 223890 224758

# android_hardware_qcom_audio
repopick -t 8916-audio-p -e 227566

# android_hardware_qcom_bt
repopick -t pie-bt-caf -e 226646,226647,226657

# android_hardware_qcom_display
repopick -t 8916-display-p

# android_hardware_qcom_media
repopick -t 8916-media-p

# android_hardware_qcom_wlan
repopick 226638 226643

# android_hardware_qcom_fm
repopick -p 226740

# Styles
repopick -t pie-styles -e 225583,225755,230520

# Pie kernel headers
repopick 231218
repopick -t pie-kernel-headers
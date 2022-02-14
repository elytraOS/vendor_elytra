# elytraOS packages
ifeq ($(USE_GAPPS),false)
PRODUCT_PACKAGES += \
    QKSMS
endif
PRODUCT_PACKAGES += \
    Terminal \
    ThemePicker \
    TouchGestures

# Camera
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Extra tools in elytra
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    zip

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

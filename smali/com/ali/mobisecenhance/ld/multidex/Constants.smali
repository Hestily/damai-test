.class interface abstract Lcom/ali/mobisecenhance/ld/multidex/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final BOOST_MULTIDEX_DIR_NAME:Ljava/lang/String; = "zuma_boost_multidex"

.field public static final BUFFER_SIZE:I = 0x2000

.field public static final CODE_CACHE_SECONDARY_FOLDER_NAME:Ljava/lang/String; = "code_cache/secondary-dexes"

.field public static final DEX_DIR_NAME:Ljava/lang/String; = "dex_cache"

.field public static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field public static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field public static final ENDHDR:I = 0x16

.field public static final ENDSIG:I = 0x6054b50

.field public static final EXTRACTED_NAME_EXT:Ljava/lang/String; = ".classes"

.field public static final EXTRACTED_SUFFIX:Ljava/lang/String; = ".dex"

.field public static final EXTRACTED_SUFFIX_LENGTH:I

.field public static final KEY_CRC:Ljava/lang/String; = "crc"

.field public static final KEY_DEX_CHECKSUM:Ljava/lang/String; = "dex.checksum."

.field public static final KEY_DEX_NUMBER:Ljava/lang/String; = "dex.number"

.field public static final KEY_DEX_OBJ_TYPE:Ljava/lang/String; = "dex.obj.type"

.field public static final KEY_DEX_TIME:Ljava/lang/String; = "dex.time."

.field public static final KEY_ODEX_CHECKSUM:Ljava/lang/String; = "odex.checksum."

.field public static final KEY_ODEX_TIME:Ljava/lang/String; = "odex.time."

.field public static final KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field public static final LIB_YUNOS_PATH:Ljava/lang/String; = "/system/lib/libvmkid_lemur.so"

.field public static final LOAD_TYPE_APK_BUF:I = 0x0

.field public static final LOAD_TYPE_DEX_BUF:I = 0x1

.field public static final LOAD_TYPE_DEX_OPT:I = 0x2

.field public static final LOAD_TYPE_INVALID:I = 0x9

.field public static final LOAD_TYPE_ZIP_OPT:I = 0x3

.field public static final LOCK_INSTALL_FILENAME:Ljava/lang/String; = "zuma_boost_multidex.install.lock"

.field public static final LOCK_PREPARE_FILENAME:Ljava/lang/String; = "zuma_boost_multidex.prepare.lock"

.field public static final MAX_EXTRACT_ATTEMPTS:I = 0x3

.field public static final MEM_THRESHOLD:J = 0x7a12000L

.field public static final MIN_SDK_VERSION:I = 0xe

.field public static final NO_VALUE:J = -0x1L

.field public static final ODEX_DIR_NAME:Ljava/lang/String; = "odex_cache"

.field public static final ODEX_SUFFIX:Ljava/lang/String; = ".odex"

.field public static final PREFS_FILE:Ljava/lang/String; = "zuma_boost_multidex.records"

.field public static final SPACE_MIN_THRESHOLD:J = 0x1312d00L

.field public static final SPACE_THRESHOLD:J = 0x8f0d180L

.field public static final TAG:Ljava/lang/String; = "BoostMultiDex"

.field public static final VM_WITH_MULTIDEX_VERSION_MAJOR:I = 0x2

.field public static final VM_WITH_MULTIDEX_VERSION_MINOR:I = 0x1

.field public static final ZIP_DIR_NAME:Ljava/lang/String; = "zip_cache"

.field public static final ZIP_SUFFIX:Ljava/lang/String; = ".zip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, ".dex"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/ali/mobisecenhance/ld/multidex/Constants;->EXTRACTED_SUFFIX_LENGTH:I

    return-void
.end method

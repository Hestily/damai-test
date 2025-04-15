.class public Lcom/ali/mobisecenhance/ld/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/util/Util;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/ali/mobisecenhance/ld/util/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/util/Util;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/util/Util;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addDexFileToDexPathList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DexFile;
.end method

.method public static native addDexFileToDexPathList(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;)V
.end method

.method private static native addObjToArrayField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public static native copyActivityInfo(Landroid/app/Activity;Landroid/app/Activity;)Landroid/app/Activity;
.end method

.method public static native copyFileUsingFileStreams(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native copyLoaderInfo(Ldalvik/system/PathClassLoader;Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
.end method

.method public static native fileCheck(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native getAllFields(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end method

.method private static native getAllFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end method

.method public static native getCRC32(Ljava/io/File;)J
.end method

.method private static native getField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public static native getFieldByReflect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method public static native getFileMD5s(Ljava/io/File;I)Ljava/lang/String;
.end method

.method public static native getMethodByReflect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
.end method

.method private static native makeDexElement(Ldalvik/system/DexFile;)Ljava/lang/Object;
.end method

.method public static native readTxtFile(Ljava/io/File;)Ljava/lang/String;
.end method

.method public static native toByteArray(Ljava/io/File;)[B
.end method

.method public static native tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native tryUnzipAndDec(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native writeTxtFile(Ljava/io/File;Ljava/lang/String;)V
.end method

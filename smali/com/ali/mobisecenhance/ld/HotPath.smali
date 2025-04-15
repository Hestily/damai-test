.class public Lcom/ali/mobisecenhance/ld/HotPath;
.super Ljava/lang/Object;
.source "HotPath.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/HotPath;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native decFile(Ljava/io/File;Ljava/io/File;)Z
.end method

.method private static native getCRC32(Ljava/io/File;)J
.end method

.method public static native getRealApplicationName()Ljava/lang/String;
.end method

.method public static native hotpathDeleteApk(Landroid/content/Context;)V
.end method

.method public static native hotpathReleseApk(Landroid/content/Context;)Ljava/lang/String;
.end method

.method private static native tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z
.end method

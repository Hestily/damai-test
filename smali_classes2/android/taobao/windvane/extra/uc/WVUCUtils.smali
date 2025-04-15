.class public Landroid/taobao/windvane/extra/uc/WVUCUtils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final CONFIG_KEY:Ljava/lang/String; = "ISX86"

.field public static final TAG:Ljava/lang/String; = "WVUCUtils"

.field public static final VAL_ARM:J = 0x2L

.field public static final VAL_DEAFAULT:J = 0x0L

.field public static final VAL_X86:J = 0x1L

.field private static sAbi:Ljava/lang/String;

.field private static sAbi2:Ljava/lang/String;

.field private static sAbiList:[Ljava/lang/String;

.field private static sArch:Ljava/lang/String;

.field private static sCpuAbi:Ljava/lang/String;

.field private static sSupportedABIs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/build.prop"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "="

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    .line 9
    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    .line 11
    aget-object p0, v4, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 13
    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v0, v1

    move-object v3, v0

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    .line 15
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 16
    :cond_2
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 18
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_4
    move-exception p0

    .line 19
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 20
    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 21
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->close(Ljava/io/Closeable;)V

    .line 22
    throw p0
.end method

.method public static is64Bit()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is 64 bit = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCUtils"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 4
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isART64()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static is64bitCPU()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 2
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 3
    array-length v2, v0

    if-lez v2, :cond_0

    .line 4
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getCPU_ABI()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "arm64"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private static isART64()Z
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "findLibrary"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "art"

    aput-object v3, v2, v6

    .line 4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Ljava/lang/String;

    const-string v1, "lib64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v6

    .line 6
    :catch_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->is64bitCPU()Z

    move-result v0

    return v0
.end method

.method public static isArchContains(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sArch:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "os.arch"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sArch:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sArch:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbi:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    :try_start_0
    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getCPU_ABI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbi:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbi2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbi:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 9
    :cond_3
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sSupportedABIs:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 11
    :try_start_1
    const-class v0, Landroid/os/Build;

    const-string v2, "SUPPORTED_ABIS"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sSupportedABIs:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    :goto_1
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sSupportedABIs:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_5

    aget-object v0, v0, v2

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 16
    :cond_5
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string/jumbo v0, "ro.product.cpu.abi"

    .line 17
    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sCpuAbi:Ljava/lang/String;

    .line 18
    :cond_6
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 19
    :cond_7
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbiList:[Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, "ro.product.cpu.abilist"

    .line 20
    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->getFromSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, ","

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbiList:[Ljava/lang/String;

    .line 23
    :cond_8
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCUtils;->sAbiList:[Ljava/lang/String;

    if-eqz v0, :cond_9

    array-length v3, v0

    if-lez v3, :cond_9

    aget-object v3, v0, v2

    if-eqz v3, :cond_9

    aget-object v0, v0, v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return v2
.end method

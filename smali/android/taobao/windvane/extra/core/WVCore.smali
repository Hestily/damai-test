.class public Landroid/taobao/windvane/extra/core/WVCore;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;
    }
.end annotation


# static fields
.field public static final DOWNLOAD:I = 0x0

.field public static final INNER_ASSET:I = 0x2

.field public static final INNER_LIB:I = 0x1

.field public static final TAG:Ljava/lang/String; = "WVCore"

.field private static instance:Landroid/taobao/windvane/extra/core/WVCore;


# instance fields
.field private coreDownLoadBack:Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;

.field private isUCSDKSupport:Z

.field private open4GDownload:Z

.field private shouldDownload:Z

.field private usedGpuMulti:I

.field private usedWebMulti:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->open4GDownload:Z

    .line 3
    iput v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedWebMulti:I

    .line 4
    iput v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedGpuMulti:I

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/core/WVCore;->shouldDownload:Z

    .line 6
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->isUCSDKSupport:Z

    return-void
.end method

.method private checkRemoteIsolateOpen()Z
    .locals 4

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v1, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->brandBlacks:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    iget-object v2, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->modelBlacks:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 3
    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->systemBlacks:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getBRAND()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build;->getMODEL()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alibaba/wireless/security/aopsdk/replace/android/os/Build$VERSION;->getRELEASE()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Landroid/taobao/windvane/extra/core/WVCore;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/extra/core/WVCore;->instance:Landroid/taobao/windvane/extra/core/WVCore;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/extra/core/WVCore;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/core/WVCore;->instance:Landroid/taobao/windvane/extra/core/WVCore;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/extra/core/WVCore;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/core/WVCore;-><init>()V

    sput-object v1, Landroid/taobao/windvane/extra/core/WVCore;->instance:Landroid/taobao/windvane/extra/core/WVCore;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/extra/core/WVCore;->instance:Landroid/taobao/windvane/extra/core/WVCore;

    return-object v0
.end method

.method private getUcSoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const-string v4, "libwebviewuc.so"

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/taobao/windvane/extra/core/WVCore;->getUcSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public checkIsolateIfOpen(Landroid/content/Context;)Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/extra/core/WVCore;->checkRemoteIsolateOpen()Z

    move-result v0

    const-string v1, "UCPolicy"

    .line 2
    invoke-static {p1, v1}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isolate"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/taobao/windvane/file/FileAccesser;->read(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 6
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 8
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->recoverMultiInterval:I

    int-to-long v4, v1

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    .line 10
    invoke-virtual {p0, p1, v3}, Landroid/taobao/windvane/extra/core/WVCore;->updateIsolatePolicy(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    const/4 p1, 0x1

    .line 12
    :goto_0
    sget-object v1, Landroid/taobao/windvane/extra/core/WVCore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isolate policy: remote=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], local=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public getCoreDownLoadBack()Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->coreDownLoadBack:Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;

    return-object v0
.end method

.method public getUsedGpuMulti()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedGpuMulti:I

    return v0
.end method

.method public getUsedWebMulti()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedWebMulti:I

    return v0
.end method

.method public getV8SoPath()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    const/4 v1, 0x1

    const-string v2, "]"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPathByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->getUcSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Landroid/taobao/windvane/extra/core/WVCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get v8 path by download so, path=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcLibDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->getUcSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Landroid/taobao/windvane/extra/core/WVCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get v8 path by inner asset so, path=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 8
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libkernelu4_7z_uc.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v1, v3}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib/libwebviewuc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Landroid/taobao/windvane/extra/core/WVCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get v8 path by inner lib so, path=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public initUCCore(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/CoreEventCallback;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/taobao/windvane/webview/CoreEventCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    sput-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/taobao/windvane/config/GlobalConfig;->setUc7ZPath(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 5
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/taobao/windvane/config/GlobalConfig;->setUcsdkappkeySec([Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore(Landroid/content/Context;)V

    return-void

    .line 8
    :cond_3
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string p2, "cannot init uccore for context is not application"

    invoke-direct {p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void
.end method

.method public isOpen4GDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->open4GDownload:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isOpen4GDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShouldDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->shouldDownload:Z

    return v0
.end method

.method public isUCSupport()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/core/WVCore;->isUCSDKSupport:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCoreDownLoadBack(Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->coreDownLoadBack:Landroid/taobao/windvane/extra/core/WVCore$CoreDownLoadBack;

    return-void
.end method

.method public setOpen4GDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->open4GDownload:Z

    return-void
.end method

.method public setShouldDownload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->shouldDownload:Z

    return-void
.end method

.method public setUCSupport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->isUCSDKSupport:Z

    return-void
.end method

.method public setUsedGpuMulti(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedGpuMulti:I

    return-void
.end method

.method public setUsedWebMulti(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/taobao/windvane/extra/core/WVCore;->usedWebMulti:I

    return-void
.end method

.method public startDownload()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->startDownload()V

    return-void
.end method

.method public updateIsolatePolicy(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "UCPolicy"

    .line 1
    invoke-static {p1, v0}, Landroid/taobao/windvane/file/FileManager;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isolate"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "false,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Landroid/taobao/windvane/file/FileAccesser;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Landroid/taobao/windvane/file/NotEnoughSpace; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

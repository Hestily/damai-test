.class public Landroid/taobao/windvane/cache/WVFileCacheFactory;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static cacheFactory:Landroid/taobao/windvane/cache/WVFileCacheFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/cache/WVFileCacheFactory;
    .locals 2

    const-class v0, Landroid/taobao/windvane/cache/WVFileCacheFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/cache/WVFileCacheFactory;->cacheFactory:Landroid/taobao/windvane/cache/WVFileCacheFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/taobao/windvane/cache/WVFileCacheFactory;

    invoke-direct {v1}, Landroid/taobao/windvane/cache/WVFileCacheFactory;-><init>()V

    sput-object v1, Landroid/taobao/windvane/cache/WVFileCacheFactory;->cacheFactory:Landroid/taobao/windvane/cache/WVFileCacheFactory;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/cache/WVFileCacheFactory;->cacheFactory:Landroid/taobao/windvane/cache/WVFileCacheFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/taobao/windvane/cache/WVFileCache;
    .locals 4

    .line 1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const-string v1, "FileCacheFactory"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFileCache: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " capacity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sdcard: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/16 v2, 0xa

    if-ge p3, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 3
    invoke-static {}, Landroid/taobao/windvane/util/StorageMgr;->checkSDCard()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 4
    :goto_0
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v2, p1, p2, p4}, Landroid/taobao/windvane/file/FileManager;->createBaseDir(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v3, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v3, p1, p2}, Landroid/taobao/windvane/file/FileManager;->createInnerfileStorage(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base dir: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    new-instance p2, Landroid/taobao/windvane/cache/WVFileCache;

    invoke-direct {p2, v2, p1, p3, p4}, Landroid/taobao/windvane/cache/WVFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 9
    invoke-virtual {p2}, Landroid/taobao/windvane/cache/WVFileCache;->init()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object p2

    :cond_4
    const-string p1, "init FileCache failed"

    .line 10
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_5
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "createFileCache: url is null, or capacity is too small"

    .line 12
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

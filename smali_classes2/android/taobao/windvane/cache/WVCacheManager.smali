.class public Landroid/taobao/windvane/cache/WVCacheManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCacheManager"

.field private static cacheManager:Landroid/taobao/windvane/cache/WVCacheManager;


# instance fields
.field private fileCache:Landroid/taobao/windvane/cache/WVFileCache;

.field private imagePool:Landroid/taobao/windvane/cache/WVFileCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCacheDirIsNull()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/cache/WVCacheManager;->imagePool:Landroid/taobao/windvane/cache/WVFileCache;

    if-nez v0, :cond_0

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

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/cache/WVCacheManager;
    .locals 2

    const-class v0, Landroid/taobao/windvane/cache/WVCacheManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/cache/WVCacheManager;->cacheManager:Landroid/taobao/windvane/cache/WVCacheManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/taobao/windvane/cache/WVCacheManager;

    invoke-direct {v1}, Landroid/taobao/windvane/cache/WVCacheManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/cache/WVCacheManager;->cacheManager:Landroid/taobao/windvane/cache/WVCacheManager;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/cache/WVCacheManager;->cacheManager:Landroid/taobao/windvane/cache/WVCacheManager;
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
.method public getCacheDir(Z)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/cache/WVCacheManager;->checkCacheDirIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->imagePool:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {p1}, Landroid/taobao/windvane/cache/WVFileCache;->getDirPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {p1}, Landroid/taobao/windvane/cache/WVFileCache;->getDirPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTempDir(Z)Ljava/io/File;
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/cache/WVCacheManager;->checkCacheDirIsNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string/jumbo v0, "temp"

    if-eqz p1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->imagePool:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {v1}, Landroid/taobao/windvane/cache/WVFileCache;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {v1}, Landroid/taobao/windvane/cache/WVFileCache;->getDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/taobao/windvane/cache/WVCacheManager;->init(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    const-string p1, "WVCacheManager"

    const-string/jumbo p3, "start init."

    .line 2
    invoke-static {p1, p3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object p1

    new-instance p3, Landroid/taobao/windvane/prefetch/WVPrefetchHandler;

    invoke-direct {p3}, Landroid/taobao/windvane/prefetch/WVPrefetchHandler;-><init>()V

    invoke-virtual {p1, p3}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->registerHandler(Lcom/taobao/weaver/prefetch/PrefetchHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p3, "WVCacheManager"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to call prefetch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Landroid/taobao/windvane/cache/WVFileCacheFactory;->getInstance()Landroid/taobao/windvane/cache/WVFileCacheFactory;

    move-result-object p1

    const-string/jumbo p3, "wvcache"

    const/16 v2, 0xfa

    const/4 v3, 0x1

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/taobao/windvane/cache/WVFileCacheFactory;->createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/taobao/windvane/cache/WVFileCache;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    .line 8
    invoke-static {}, Landroid/taobao/windvane/cache/WVFileCacheFactory;->getInstance()Landroid/taobao/windvane/cache/WVFileCacheFactory;

    move-result-object p1

    const-string/jumbo p3, "wvimage"

    const/16 v2, 0x12c

    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/taobao/windvane/cache/WVFileCacheFactory;->createFileCache(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/taobao/windvane/cache/WVFileCache;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/cache/WVCacheManager;->imagePool:Landroid/taobao/windvane/cache/WVFileCache;

    .line 9
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "WVCacheManager"

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init finish.  cost time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 12
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "CacheManager init error, context is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isCacheEnabled(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "_wvcrc="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public writeToFile(Landroid/taobao/windvane/cache/WVFileInfo;[B)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/cache/WVCacheManager;->checkCacheDirIsNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/taobao/windvane/util/CommonUtils;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object p2, p0, Landroid/taobao/windvane/cache/WVCacheManager;->imagePool:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {p2, p1, v0}, Landroid/taobao/windvane/cache/WVFileCache;->write(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-static {p2}, Landroid/taobao/windvane/util/DigestUtils;->sha256ToHex([B)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    .line 6
    :cond_2
    iput-object p2, p1, Landroid/taobao/windvane/cache/WVFileInfo;->sha256ToHex:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Landroid/taobao/windvane/cache/WVCacheManager;->fileCache:Landroid/taobao/windvane/cache/WVFileCache;

    invoke-virtual {p2, p1, v0}, Landroid/taobao/windvane/cache/WVFileCache;->write(Landroid/taobao/windvane/cache/WVFileInfo;Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

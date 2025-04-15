.class public Landroid/taobao/windvane/cache/WVCustomCacheManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCustomCacheManager"

.field private static sInstance:Landroid/taobao/windvane/cache/WVCustomCacheManager;


# instance fields
.field private mCacheHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/cache/WVCustomCacheHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/cache/WVCustomCacheManager;->mCacheHandlers:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/cache/WVCustomCacheManager;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/cache/WVCustomCacheManager;->sInstance:Landroid/taobao/windvane/cache/WVCustomCacheManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/cache/WVCustomCacheManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/cache/WVCustomCacheManager;->sInstance:Landroid/taobao/windvane/cache/WVCustomCacheManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/cache/WVCustomCacheManager;

    invoke-direct {v1}, Landroid/taobao/windvane/cache/WVCustomCacheManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/cache/WVCustomCacheManager;->sInstance:Landroid/taobao/windvane/cache/WVCustomCacheManager;

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
    sget-object v0, Landroid/taobao/windvane/cache/WVCustomCacheManager;->sInstance:Landroid/taobao/windvane/cache/WVCustomCacheManager;

    return-object v0
.end method


# virtual methods
.method public getCacheResource(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVCustomCacheManager;->mCacheHandlers:Ljava/util/List;

    const-string v1, "WVCustomCacheManager"

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/cache/WVCustomCacheHandler;

    .line 3
    :try_start_0
    invoke-interface {v2, p2, p1, p3, p4}, Landroid/taobao/windvane/cache/WVCustomCacheHandler;->loadRequest([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hit custom cache by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with url "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    nop

    goto :goto_0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "custom cache not hit "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerHandler(Landroid/taobao/windvane/cache/WVCustomCacheHandler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVCustomCacheManager;->mCacheHandlers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

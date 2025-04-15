.class public Landroid/taobao/windvane/cache/WVMemoryCache;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final DEFAULT_CACHE_TIME:J = 0x7d0L

.field private static mMemoryCache:Landroid/taobao/windvane/cache/WVMemoryCache;


# instance fields
.field private mCachedInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/cache/WVMemoryCacheInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/cache/WVMemoryCache;
    .locals 2

    const-class v0, Landroid/taobao/windvane/cache/WVMemoryCache;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/cache/WVMemoryCache;->mMemoryCache:Landroid/taobao/windvane/cache/WVMemoryCache;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/taobao/windvane/cache/WVMemoryCache;

    invoke-direct {v1}, Landroid/taobao/windvane/cache/WVMemoryCache;-><init>()V

    sput-object v1, Landroid/taobao/windvane/cache/WVMemoryCache;->mMemoryCache:Landroid/taobao/windvane/cache/WVMemoryCache;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/cache/WVMemoryCache;->mMemoryCache:Landroid/taobao/windvane/cache/WVMemoryCache;
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
.method public addMemoryCache(Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    new-instance v1, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;

    invoke-direct {v1, p2, p3}, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;-><init>(Ljava/util/Map;[B)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public clearAllCaches()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearCacheByUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public getMemoryCacheByUrl(Ljava/lang/String;)Landroid/taobao/windvane/cache/WVMemoryCacheInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->force2HttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCache;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;

    return-object p1

    :cond_1
    return-object v1
.end method

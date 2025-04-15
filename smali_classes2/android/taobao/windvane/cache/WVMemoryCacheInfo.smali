.class public Landroid/taobao/windvane/cache/WVMemoryCacheInfo;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public cachedTime:J

.field public mCachedDatas:[B

.field public mCachedHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedHeaders:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    .line 5
    iput-object p2, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedDatas:[B

    .line 6
    iput-object p1, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->mCachedHeaders:Ljava/util/Map;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/cache/WVMemoryCacheInfo;->cachedTime:J

    return-void
.end method

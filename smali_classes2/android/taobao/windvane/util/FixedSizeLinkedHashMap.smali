.class public Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1ef50e388fb48819L


# instance fields
.field private lock:Ljava/lang/Object;

.field private maxSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-wide/16 v0, 0xa

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-wide/16 v0, 0xa

    .line 5
    iput-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    .line 7
    iput-wide p1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMaxSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    return-wide v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    int-to-long v0, p1

    iget-wide v2, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMaxSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/taobao/windvane/util/FixedSizeLinkedHashMap;->maxSize:J

    return-void
.end method

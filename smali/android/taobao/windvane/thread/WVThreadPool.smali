.class public Landroid/taobao/windvane/thread/WVThreadPool;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1f4

.field private static final MAX_POOL_SIZE:I

.field private static TAG:Ljava/lang/String; = "WVThreadPool"

.field private static threadManager:Landroid/taobao/windvane/thread/WVThreadPool;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field tasks:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Landroid/taobao/windvane/thread/WVThreadPool;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    .line 2
    sput v1, Landroid/taobao/windvane/thread/WVThreadPool;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 3
    sput v0, Landroid/taobao/windvane/thread/WVThreadPool;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    sget v1, Landroid/taobao/windvane/thread/WVThreadPool;->CORE_POOL_SIZE:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/thread/WVThreadPool;
    .locals 2

    .line 1
    sget-object v0, Landroid/taobao/windvane/thread/WVThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVThreadPool;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/taobao/windvane/thread/WVThreadPool;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/thread/WVThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVThreadPool;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/taobao/windvane/thread/WVThreadPool;

    invoke-direct {v1}, Landroid/taobao/windvane/thread/WVThreadPool;-><init>()V

    sput-object v1, Landroid/taobao/windvane/thread/WVThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVThreadPool;

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
    sget-object v0, Landroid/taobao/windvane/thread/WVThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVThreadPool;

    return-object v0
.end method

.method private refreshTaskMap()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 8

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Landroid/taobao/windvane/thread/WVThreadPool;->CORE_POOL_SIZE:I

    sget v3, Landroid/taobao/windvane/thread/WVThreadPool;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-nez p1, :cond_1

    .line 4
    sget-object p1, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    const-string p2, "execute task is null."

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/taobao/windvane/thread/WVThreadPool;->refreshTaskMap()V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const-string v1, "]"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sget v3, Landroid/taobao/windvane/thread/WVThreadPool;->CORE_POOL_SIZE:I

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    .line 9
    iget-object v3, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    :cond_2
    iget-object v2, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove first task:["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->tasks:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    :cond_4
    sget-object p1, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlap the same name task:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p2, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 17
    :goto_0
    sget-object p1, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activeTask count after:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Landroid/taobao/windvane/thread/WVThreadPool;->CORE_POOL_SIZE:I

    sget v3, Landroid/taobao/windvane/thread/WVThreadPool;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public setClientExecutor(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/thread/WVThreadPool;->TAG:Ljava/lang/String;

    .line 3
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Landroid/taobao/windvane/thread/WVThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

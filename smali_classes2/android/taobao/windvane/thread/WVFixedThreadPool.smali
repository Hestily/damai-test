.class public Landroid/taobao/windvane/thread/WVFixedThreadPool;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static SingleExecutor:Ljava/util/concurrent/ExecutorService; = null

.field public static bufferSize:I = 0x1000

.field private static threadManager:Landroid/taobao/windvane/thread/WVFixedThreadPool;


# instance fields
.field private tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;


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
    iput-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/thread/WVFixedThreadPool;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVFixedThreadPool;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;

    invoke-direct {v0}, Landroid/taobao/windvane/thread/WVFixedThreadPool;-><init>()V

    sput-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVFixedThreadPool;

    .line 3
    :cond_0
    sget-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->threadManager:Landroid/taobao/windvane/thread/WVFixedThreadPool;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "WVThreadPool"

    const-string v0, "executeSingle is null."

    .line 3
    invoke-static {p1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-object v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTempBuffer()Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    invoke-direct {v0}, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    return-object v0
.end method

.method public reSetTempBuffer()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    if-nez v0, :cond_0

    invoke-static {v0}, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->access$000(Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->tempBuffer:[B

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->access$002(Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;Z)Z

    .line 4
    iput-object v1, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->tempBuffer:Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;

    :cond_1
    return-void
.end method

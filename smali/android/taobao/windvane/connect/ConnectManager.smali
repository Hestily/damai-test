.class public Landroid/taobao/windvane/connect/ConnectManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static mConnectManager:Landroid/taobao/windvane/connect/ConnectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/connect/ConnectManager;
    .locals 2

    const-class v0, Landroid/taobao/windvane/connect/ConnectManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/connect/ConnectManager;->mConnectManager:Landroid/taobao/windvane/connect/ConnectManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/taobao/windvane/connect/ConnectManager;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/ConnectManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/connect/ConnectManager;->mConnectManager:Landroid/taobao/windvane/connect/ConnectManager;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/connect/ConnectManager;->mConnectManager:Landroid/taobao/windvane/connect/ConnectManager;
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
.method public connect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/connect/HttpRequest;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/taobao/windvane/connect/ConnectManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/connect/ConnectManager$2;-><init>(Landroid/taobao/windvane/connect/ConnectManager;Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    .line 5
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/taobao/windvane/connect/ConnectManager;->connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/taobao/windvane/connect/ConnectManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/taobao/windvane/connect/ConnectManager$1;-><init>(Landroid/taobao/windvane/connect/ConnectManager;Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V

    .line 3
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/connect/HttpConnectListener<",
            "Landroid/taobao/windvane/connect/HttpResponse;",
            ">;)",
            "Landroid/taobao/windvane/connect/HttpResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {v1, p1}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/taobao/windvane/connect/HttpConnector;

    invoke-direct {p1}, Landroid/taobao/windvane/connect/HttpConnector;-><init>()V

    invoke-virtual {p1, v1, p2}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

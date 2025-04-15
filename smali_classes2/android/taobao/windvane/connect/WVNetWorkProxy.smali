.class public Landroid/taobao/windvane/connect/WVNetWorkProxy;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static mConnectManager:Landroid/taobao/windvane/connect/WVNetWorkProxy;


# instance fields
.field private mNetWorkProxy:Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;


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
    iput-object v0, p0, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mNetWorkProxy:Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/connect/WVNetWorkProxy;
    .locals 2

    const-class v0, Landroid/taobao/windvane/connect/WVNetWorkProxy;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mConnectManager:Landroid/taobao/windvane/connect/WVNetWorkProxy;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/taobao/windvane/connect/WVNetWorkProxy;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/WVNetWorkProxy;-><init>()V

    sput-object v1, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mConnectManager:Landroid/taobao/windvane/connect/WVNetWorkProxy;

    .line 3
    :cond_0
    sget-object v1, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mConnectManager:Landroid/taobao/windvane/connect/WVNetWorkProxy;
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
.method public getNetWorkProxy()Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mNetWorkProxy:Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;

    return-object v0
.end method

.method public registerNetWork(Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/WVNetWorkProxy;->mNetWorkProxy:Landroid/taobao/windvane/connect/WVNetWorkProxyInterface;

    return-void
.end method

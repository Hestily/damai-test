.class Landroid/taobao/windvane/connect/ConnectManager$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/connect/ConnectManager;->connect(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/connect/ConnectManager;

.field final synthetic val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/connect/ConnectManager;Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/ConnectManager$1;->this$0:Landroid/taobao/windvane/connect/ConnectManager;

    iput-object p2, p0, Landroid/taobao/windvane/connect/ConnectManager$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/windvane/connect/ConnectManager$1;->val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "WVThreadPool"

    const-string v1, "Task has been executed"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/connect/HttpRequest;

    iget-object v2, p0, Landroid/taobao/windvane/connect/ConnectManager$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/taobao/windvane/connect/HttpConnector;

    invoke-direct {v2}, Landroid/taobao/windvane/connect/HttpConnector;-><init>()V

    iget-object v3, p0, Landroid/taobao/windvane/connect/ConnectManager$1;->val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-virtual {v2, v1, v3}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

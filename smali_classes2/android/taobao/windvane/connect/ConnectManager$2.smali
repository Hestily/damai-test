.class Landroid/taobao/windvane/connect/ConnectManager$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/connect/ConnectManager;->connect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/connect/ConnectManager;

.field final synthetic val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

.field final synthetic val$request:Landroid/taobao/windvane/connect/HttpRequest;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/connect/ConnectManager;Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/connect/ConnectManager$2;->this$0:Landroid/taobao/windvane/connect/ConnectManager;

    iput-object p2, p0, Landroid/taobao/windvane/connect/ConnectManager$2;->val$request:Landroid/taobao/windvane/connect/HttpRequest;

    iput-object p3, p0, Landroid/taobao/windvane/connect/ConnectManager$2;->val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/taobao/windvane/connect/HttpConnector;

    invoke-direct {v0}, Landroid/taobao/windvane/connect/HttpConnector;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/connect/ConnectManager$2;->val$request:Landroid/taobao/windvane/connect/HttpRequest;

    iget-object v2, p0, Landroid/taobao/windvane/connect/ConnectManager$2;->val$listener:Landroid/taobao/windvane/connect/HttpConnectListener;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    return-void
.end method

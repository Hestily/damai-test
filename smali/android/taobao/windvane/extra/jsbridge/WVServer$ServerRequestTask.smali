.class Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/jsbridge/WVServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerRequestTask"
.end annotation


# instance fields
.field private context:Ljava/lang/Object;

.field private params:Ljava/lang/String;

.field final synthetic this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->context:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->params:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->params:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$000(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/String;)Landroid/taobao/windvane/extra/jsbridge/ServerParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->context:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;)V

    const-string/jumbo v1, "ret"

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "HY_PARAM_ERR"

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v1, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$100(Landroid/taobao/windvane/extra/jsbridge/WVServer;Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v1}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$200(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$300(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v3}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$400(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    .line 8
    iget-object v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v4}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$400(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/taobao/windvane/thread/LockObject;

    .line 9
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WVServer"

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queue size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v5, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v5}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$400(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    new-instance v6, Landroid/taobao/windvane/thread/LockObject;

    invoke-direct {v6}, Landroid/taobao/windvane/thread/LockObject;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Landroid/taobao/windvane/thread/LockObject;->lwait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->params:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$502(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->context:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$602(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    invoke-static {v1, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$700(Landroid/taobao/windvane/extra/jsbridge/WVServer;Landroid/taobao/windvane/extra/jsbridge/ServerParams;)Landroid/taobao/windvane/connect/HttpRequest;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "WVServer"

    const-string v1, "HttpRequest is null, and do nothing"

    .line 18
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_4
    new-instance v1, Landroid/taobao/windvane/connect/HttpConnector;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/HttpConnector;-><init>()V

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/connect/HttpConnector;->syncConnect(Landroid/taobao/windvane/connect/HttpRequest;)Landroid/taobao/windvane/connect/HttpResponse;

    move-result-object v0

    .line 20
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->this$0:Landroid/taobao/windvane/extra/jsbridge/WVServer;

    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;->context:Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->access$800(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;Landroid/taobao/windvane/connect/HttpResponse;)V

    :goto_1
    return-void
.end method

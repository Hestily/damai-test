.class Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/weaver/prefetch/GetPrefetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVPrefetch;->getData(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVPrefetch;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVPrefetch;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVPrefetch;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/taobao/weaver/prefetch/PrefetchDataResponse;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->jsonData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v1, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->jsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    nop

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->data:Ljava/util/Map;

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object p1, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->data:Ljava/util/Map;

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    iget-object p1, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->data:Ljava/util/Map;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onError(Lcom/taobao/weaver/prefetch/PrefetchDataResponse;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->performanceData:Lcom/taobao/weaver/prefetch/PerformanceData;

    invoke-virtual {v1}, Lcom/taobao/weaver/prefetch/PerformanceData;->getStatus()Lcom/taobao/weaver/prefetch/PerformanceData$PFResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weaver/prefetch/PerformanceData$PFResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->performanceData:Lcom/taobao/weaver/prefetch/PerformanceData;

    invoke-virtual {p1}, Lcom/taobao/weaver/prefetch/PerformanceData;->getStatus()Lcom/taobao/weaver/prefetch/PerformanceData$PFResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weaver/prefetch/PerformanceData$PFResult;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

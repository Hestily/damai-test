.class Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;
.super Landroid/taobao/windvane/connect/HttpConnectListener;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/prefetch/WVPrefetchHandler;->prefetchData(Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weaver/prefetch/PrefetchDataCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/taobao/windvane/connect/HttpConnectListener<",
        "Landroid/taobao/windvane/connect/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/prefetch/WVPrefetchHandler;

.field final synthetic val$prefetchDataCallback:Lcom/taobao/weaver/prefetch/PrefetchDataCallback;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/prefetch/WVPrefetchHandler;Lcom/taobao/weaver/prefetch/PrefetchDataCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;->this$0:Landroid/taobao/windvane/prefetch/WVPrefetchHandler;

    iput-object p2, p0, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;->val$prefetchDataCallback:Lcom/taobao/weaver/prefetch/PrefetchDataCallback;

    invoke-direct {p0}, Landroid/taobao/windvane/connect/HttpConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p1

    const-string/jumbo v0, "utf-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 4
    new-instance p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;

    invoke-direct {p1}, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;-><init>()V

    .line 5
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->data:Ljava/util/Map;

    const/16 p2, 0x1f4

    .line 6
    iput p2, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->maxAge:I

    const/16 p2, 0xa

    .line 7
    iput p2, p1, Lcom/taobao/weaver/prefetch/PrefetchDataResponse;->usageLimit:I

    .line 8
    iget-object p2, p0, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;->val$prefetchDataCallback:Lcom/taobao/weaver/prefetch/PrefetchDataCallback;

    invoke-interface {p2, p1}, Lcom/taobao/weaver/prefetch/PrefetchDataCallback;->onComplete(Lcom/taobao/weaver/prefetch/PrefetchDataResponse;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void

    .line 10
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;->val$prefetchDataCallback:Lcom/taobao/weaver/prefetch/PrefetchDataCallback;

    const-string p2, "-4"

    const-string v0, "getData Error"

    invoke-interface {p1, p2, v0}, Lcom/taobao/weaver/prefetch/PrefetchDataCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Landroid/taobao/windvane/connect/HttpResponse;

    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/prefetch/WVPrefetchHandler$1;->onFinish(Landroid/taobao/windvane/connect/HttpResponse;I)V

    return-void
.end method

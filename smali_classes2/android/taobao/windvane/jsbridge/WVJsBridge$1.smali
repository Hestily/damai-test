.class Landroid/taobao/windvane/jsbridge/WVJsBridge$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVJsBridge;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->this$0:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->val$pageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 6
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/WVJsBridge$1$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge$1$1;-><init>(Landroid/taobao/windvane/jsbridge/WVJsBridge$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.class public Landroid/taobao/windvane/jsbridge/WVBridgeEngine;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FAILURE_CALLBACK_PREFIX:Ljava/lang/String; = "javascript:window.__windvane__&&window.__windvane__.onFailure&&window.__windvane__.onFailure"

.field private static final SUCCESS_CALLBACK_PREFIX:Ljava/lang/String; = "javascript:window.__windvane__&&window.__windvane__.onSuccess&&window.__windvane__.onSuccess"

.field public static final WINDVANE_CORE_JS:Ljava/lang/String; = "(function(f){try{if(f.__windvane__.nativeCall&&!f.__windvane__.call){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(!m){m={}}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i]||{};if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

.field private static sExecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mWebview:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-wide/16 v3, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->sExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 3
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 4
    :try_start_0
    sget-object p1, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->sExecutors:Ljava/util/concurrent/ExecutorService;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->formatJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->valuateJavascriptOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->getCallbackJs(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    return-object p0
.end method

.method private formatJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "\u2028"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "\\u2028"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string/jumbo v0, "\u2029"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "\\u2029"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCallbackJs(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\');"

    const-string v1, "\',\'"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.__windvane__&&window.__windvane__.onSuccess&&window.__windvane__.onSuccess(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:window.__windvane__&&window.__windvane__.onFailure&&window.__windvane__.onFailure(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private valuateJavascriptOnUiThread(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$4;-><init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    const-string v1, "\\."

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 4
    aget-object v2, p1, v1

    iput-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 7
    iput-object p3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    .line 8
    iput-object p2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "{}"

    .line 10
    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 11
    :cond_0
    new-instance v3, Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {v3}, Landroid/taobao/windvane/fullspan/SpanWrapper;-><init>()V

    .line 12
    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    instance-of v5, v4, Landroid/taobao/windvane/webview/IFullTrace;

    if-eqz v5, :cond_1

    .line 13
    check-cast v4, Landroid/taobao/windvane/webview/IFullTrace;

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IFullTrace;->getSpanWrapper()Landroid/taobao/windvane/fullspan/SpanWrapper;

    move-result-object v4

    const-string v5, "jsBridge"

    const-string v6, "JSNativeCall"

    invoke-static {v5, v6, v4}, Landroid/taobao/windvane/util/FullTraceUtils;->makeSpanChildOf(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)Lcom/taobao/analysis/v3/FalcoSpan;

    move-result-object v4

    .line 14
    invoke-virtual {v3, v4}, Landroid/taobao/windvane/fullspan/SpanWrapper;->setFalcoSpan(Lcom/taobao/analysis/v3/FalcoSpan;)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nativeCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " params:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->log(Ljava/lang/String;)V

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "new bridge, reqId=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVJsBridge"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;

    invoke-direct {p1, p0, p3, v3}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;-><init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    iput-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    .line 18
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$2;

    invoke-direct {p1, p0, p3, v3}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$2;-><init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V

    iput-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    .line 19
    sget-object p1, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->sExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;

    invoke-direct {p2, p0, v0, p4}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$3;-><init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 20
    :cond_2
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "HY_NO_HANDLER"

    .line 21
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 22
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    const-string v4, ""

    move-object v0, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V

    .line 23
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    return-void
.end method

.method public version()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    const-string v0, "WVJSPlugin"

    const-string v1, "WVJSPlugin __windvane__ version 8.5.0"

    .line 1
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "8.5.0"

    return-object v0
.end method

.method public windVaneCoreJs()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    const-string v0, "(function(f){try{if(f.__windvane__.nativeCall&&!f.__windvane__.call){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(!m){m={}}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i]||{};if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

    return-object v0
.end method

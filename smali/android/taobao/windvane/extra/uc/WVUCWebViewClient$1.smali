.class Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->getMetaInfo(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
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
.field final synthetic this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field final synthetic val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4

    const-string v0, "WV.Meta.Performance.JSFSP"

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->this$0:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {v1, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->getMetaObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "WVUCWebViewClient"

    const-string/jumbo v3, "valid_view"

    if-eqz v1, :cond_2

    .line 5
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isReportedFSP()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    sget v0, Lcom/taobao/monitor/procedure/ViewToken;->APM_VIEW_TOKEN:I

    const-string v1, "invalid_view"

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    sget v0, Lcom/taobao/monitor/procedure/ViewToken;->APM_VIEW_TOKEN:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no version setTag "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient$1;->val$webview:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    sget v0, Lcom/taobao/monitor/procedure/ViewToken;->APM_VIEW_TOKEN:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no JSFSP setTag "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

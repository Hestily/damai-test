.class public abstract Landroid/taobao/windvane/embed/BaseEmbedView;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedView;
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;


# instance fields
.field context:Landroid/content/Context;

.field public id:Ljava/lang/String;

.field public params:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field public view:Landroid/view/View;

.field public webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->view:Landroid/view/View;

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract generateView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public getSnapShot()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/embed/BaseEmbedView;->generateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->view:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getViewType()Ljava/lang/String;
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;Lcom/uc/webview/export/extension/EmbedViewConfig;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->getViewType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "WVEmbedView"

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVEmbedView_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_0
    invoke-interface {p3, p2, p0}, Landroid/taobao/windvane/webview/IWVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bridgeId"

    .line 5
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "javascript:window.WindVane&&window.WindVane.fireEvent(\'WVEmbed.Ready\',%s);"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    .line 8
    invoke-interface {p3}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    .line 9
    invoke-interface {p3}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/content/MutableContextWrapper;

    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p3}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/content/MutableContextWrapper;

    invoke-virtual {p2}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    .line 11
    :cond_2
    iget-object p2, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    .line 13
    :cond_3
    iput-object p3, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 14
    iput-object p4, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 15
    iput-object p1, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->id:Ljava/lang/String;

    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public onAttachedToWebView()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->view:Landroid/view/View;

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->context:Landroid/content/Context;

    return-void
.end method

.method public onDetachedFromWebView()V
    .locals 0

    return-void
.end method

.method public onParamChanged([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 0

    return-void
.end method

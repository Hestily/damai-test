.class public Landroid/taobao/windvane/embed/EmbedViewDemo;
.super Landroid/taobao/windvane/embed/BaseEmbedView;
.source "Taobao"


# instance fields
.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 3

    if-eqz p2, :cond_7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "setText"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string/jumbo p2, "text"

    .line 4
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :cond_0
    return v1

    :cond_1
    const-string/jumbo p2, "setTextSize"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string/jumbo p2, "size"

    .line 8
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :cond_2
    return v1

    :cond_3
    const-string/jumbo p2, "setBackground"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "color"

    if-eqz p2, :cond_5

    .line 11
    :try_start_1
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 13
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    :cond_4
    return v1

    :cond_5
    const-string/jumbo p2, "setTextColor"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return v1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/embed/BaseEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    .line 4
    iget v1, v1, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    .line 5
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 6
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 7
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 8
    invoke-static {v4, v5}, Lcom/alibaba/wireless/security/aopsdk/replace/android/view/Display;->getMetrics(Landroid/view/Display;Landroid/util/DisplayMetrics;)V

    .line 9
    invoke-static {v5}, Lcom/alibaba/wireless/security/aopsdk/replace/android/util/DisplayMetrics;->getwidthPixels(Landroid/util/DisplayMetrics;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 10
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 11
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    const p1, -0x777778

    .line 13
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 14
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    const-string v1, "EmbedView DEMO"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    iget-object p1, p0, Landroid/taobao/windvane/embed/EmbedViewDemo;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "demo"

    return-object v0
.end method

.class Landroid/taobao/windvane/monitor/WVMonitorConfigManager$PageFinshWVEventListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/service/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageFinshWVEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$PageFinshWVEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 4

    const/16 p3, 0x3ea

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object p1

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-wide v0, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckSampleRate:D

    .line 2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->getInstance()Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    move-result-object p1

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->config:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    iget-object p1, p1, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckURL:Ljava/lang/String;

    const-string/jumbo p3, "scriptUrl"

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    cmpl-double p3, v0, v2

    if-lez p3, :cond_1

    const-string p3, "(function(d){var s = d.createElement(\'script\');s.src=\'%s\';d.head.appendChild(s);})(document)"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p2, p1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

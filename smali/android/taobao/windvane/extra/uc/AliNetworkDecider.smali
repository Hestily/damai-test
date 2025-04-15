.class public Landroid/taobao/windvane/extra/uc/AliNetworkDecider;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/INetworkDecider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseNetwork(Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "ws://"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "wss://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUseTaobaoNetwork()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    return v1
.end method

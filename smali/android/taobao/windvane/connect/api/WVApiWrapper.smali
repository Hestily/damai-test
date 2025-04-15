.class public Landroid/taobao/windvane/connect/api/WVApiWrapper;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/connect/api/ApiRequest;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/connect/api/IApiAdapter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/connect/api/IApiAdapter;

    invoke-interface {p1, p0}, Landroid/taobao/windvane/connect/api/IApiAdapter;->formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/taobao/windvane/connect/api/ApiRequest;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/connect/api/IApiAdapter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/connect/api/IApiAdapter;

    invoke-interface {p1, p0}, Landroid/taobao/windvane/connect/api/IApiAdapter;->formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p0, ""

    return-object p0
.end method

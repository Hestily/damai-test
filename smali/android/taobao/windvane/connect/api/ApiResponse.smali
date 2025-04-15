.class public Landroid/taobao/windvane/connect/api/ApiResponse;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field public static final ERR_SID_INVALID:Ljava/lang/String; = "ERR_SID_INVALID"

.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static TAG:Ljava/lang/String; = "core.ApiResponse"

.field public static final VALUE:Ljava/lang/String; = "VALUE"


# instance fields
.field public api:Ljava/lang/String;

.field public data:Lorg/json/JSONObject;

.field public errCode:Ljava/lang/String;

.field public errInfo:Ljava/lang/String;

.field public success:Z

.field public v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJsonResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v1, Landroid/taobao/windvane/connect/api/ApiResponse;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseJsonResult fail, str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    :goto_0
    return-object p0
.end method

.method public parseResult(Ljava/lang/String;)Landroid/taobao/windvane/connect/api/ApiResponse;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "api"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->api:Ljava/lang/String;

    const-string/jumbo p1, "v"

    .line 4
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->v:Ljava/lang/String;

    const-string/jumbo p1, "ret"

    .line 5
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/connect/api/ApiResponse;->parseRet(Lorg/json/JSONArray;)V

    const-string p1, "data"

    .line 7
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    const-string p1, ""

    .line 10
    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errCode:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errInfo:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public parseRet(Lorg/json/JSONArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "VALUE"

    const-string v5, "KEY"

    if-ge v3, v0, :cond_2

    .line 3
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "::"

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x2

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 11
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "SUCCESS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    goto :goto_1

    .line 13
    :cond_3
    iput-boolean v2, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    .line 14
    :goto_1
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errCode:Ljava/lang/String;

    .line 15
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_2

    .line 16
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 19
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "FAIL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ERR_CODE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    iput-boolean v2, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    .line 21
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errCode:Ljava/lang/String;

    .line 22
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errInfo:Ljava/lang/String;

    goto :goto_2

    .line 23
    :cond_5
    iput-boolean v2, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->success:Z

    .line 24
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errCode:Ljava/lang/String;

    .line 25
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/taobao/windvane/connect/api/ApiResponse;->errInfo:Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method

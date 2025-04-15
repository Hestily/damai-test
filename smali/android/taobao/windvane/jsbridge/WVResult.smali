.class public Landroid/taobao/windvane/jsbridge/WVResult;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final CLOSED:Ljava/lang/String; = "HY_CLOSED"

.field public static final ERROR_EXECUTE:Ljava/lang/String; = "HY_ERROR_EXECUTE"

.field public static final FAIL:Ljava/lang/String; = "HY_FAILED"

.field public static final NO_CLASS:Ljava/lang/String; = "HY_NO_CLASS"

.field public static final NO_METHOD:Ljava/lang/String; = "HY_NO_HANDLER"

.field public static final NO_PERMISSION:Ljava/lang/String; = "HY_NO_PERMISSION"

.field public static final PARAM_ERR:Ljava/lang/String; = "HY_PARAM_ERR"

.field public static final RET_CLOSED:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final RET_FAIL:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final RET_NO_METHOD:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final RET_NO_PERMISSION:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final RET_PARAM_ERR:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final RET_SUCCESS:Landroid/taobao/windvane/jsbridge/WVResult;

.field public static final SUCCESS:Ljava/lang/String; = "HY_SUCCESS"


# instance fields
.field private result:Lorg/json/JSONObject;

.field private success:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_SUCCESS:Landroid/taobao/windvane/jsbridge/WVResult;

    .line 2
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_FAILED"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_FAIL:Landroid/taobao/windvane/jsbridge/WVResult;

    .line 3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_PARAM_ERR"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_PARAM_ERR:Landroid/taobao/windvane/jsbridge/WVResult;

    .line 4
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_NO_HANDLER"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_NO_METHOD:Landroid/taobao/windvane/jsbridge/WVResult;

    .line 5
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_NO_PERMISSION"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_NO_PERMISSION:Landroid/taobao/windvane/jsbridge/WVResult;

    .line 6
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v1, "HY_CLOSED"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/jsbridge/WVResult;->RET_CLOSED:Landroid/taobao/windvane/jsbridge/WVResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->success:I

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->success:I

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public addData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string p1, "HY_FAILED_NO_RESULT"

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :catchall_0
    const-string p1, "HY_FAILED_EXCEPTION"

    return-object p1
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    const-string/jumbo v1, "ret"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "HY_SUCCESS"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Landroid/taobao/windvane/jsbridge/WVResult;->success:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->success:I

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->success:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string/jumbo v2, "ret"

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    const-string v1, "HY_SUCCESS"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    const-string v1, "HY_FAILED"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVResult;->result:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

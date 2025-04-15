.class public Landroid/taobao/windvane/extra/jsbridge/WVServer;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "Taobao"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;,
        Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;
    }
.end annotation


# static fields
.field public static final API_SERVER:Ljava/lang/String; = "WVServer"

.field private static final NOTIFY_RESULT:I = 0x1f4

.field private static final NOT_REG_LOGIN:I = 0x1fe

.field static NeedApiLock:Z = false

.field private static final TAG:Ljava/lang/String; = "WVServer"

.field static lastlocktime:J

.field static notiTime:J


# instance fields
.field private isUserLogin:Z

.field private jsContext:Ljava/lang/Object;

.field private final lockLock:Ljava/lang/Object;

.field private lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/taobao/windvane/thread/LockObject;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mParams:Ljava/lang/String;

.field private needLock:Z

.field private singleExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockLock:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mParams:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->needLock:Z

    .line 9
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/String;)Landroid/taobao/windvane/extra/jsbridge/ServerParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->parseParams(Ljava/lang/String;)Landroid/taobao/windvane/extra/jsbridge/ServerParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/jsbridge/WVServer;Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->needLock:Z

    return p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$502(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mParams:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Landroid/taobao/windvane/extra/jsbridge/WVServer;Landroid/taobao/windvane/extra/jsbridge/ServerParams;)Landroid/taobao/windvane/connect/HttpRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->wrapRequest(Landroid/taobao/windvane/extra/jsbridge/ServerParams;)Landroid/taobao/windvane/connect/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;Landroid/taobao/windvane/connect/HttpResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->parseResult(Ljava/lang/Object;Landroid/taobao/windvane/connect/HttpResponse;)V

    return-void
.end method

.method static synthetic access$900(Landroid/taobao/windvane/extra/jsbridge/WVServer;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1f4

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyNext()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->needLock:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/thread/LockObject;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/taobao/windvane/thread/LockObject;->lnotify()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private parseParams(Ljava/lang/String;)Landroid/taobao/windvane/extra/jsbridge/ServerParams;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;

    invoke-direct {v0}, Landroid/taobao/windvane/extra/jsbridge/ServerParams;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "api"

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->api:Ljava/lang/String;

    const-string/jumbo v2, "v"

    const-string v3, "*"

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->v:Ljava/lang/String;

    const-string/jumbo v2, "post"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->post:Z

    const-string v2, "ecode"

    .line 6
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->ecode:Z

    const-string v2, "isSec"

    .line 7
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v0, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->isSec:Z

    const-string/jumbo v2, "param"

    .line 8
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 10
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    return-object v0

    .line 14
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseParams error, param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVServer"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private parseResult(Ljava/lang/Object;Landroid/taobao/windvane/connect/HttpResponse;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "HY_FAILED"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string/jumbo v1, "ret"

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 3
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getHttpCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "code"

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->isSuccess()Z

    move-result p1

    const-string v3, "WVServer"

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getData()[B

    move-result-object v5

    const-string/jumbo v6, "utf-8"

    invoke-direct {p1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseResult: content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :cond_1
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getHttpCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 12
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SUCCESS"

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-virtual {v0, v4}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->setSuccess(Z)V

    goto :goto_1

    :cond_2
    const-string v7, "ERR_SID_INVALID"

    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 16
    sget-object p2, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    if-eqz p2, :cond_4

    .line 17
    iput-boolean v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    .line 18
    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v1}, Landroid/taobao/windvane/extra/WVIAdapter;->login(Landroid/os/Handler;)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_4
    :goto_1
    invoke-virtual {v0, v5}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->setData(Lorg/json/JSONObject;)V

    .line 20
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 21
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseResult mtop response parse fail, content: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V

    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 24
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V

    return-void

    :cond_5
    :goto_3
    const-string/jumbo p1, "parseResult: request illegal, response is null"

    .line 25
    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getHttpCode()I

    move-result p1

    const/16 v1, 0x1a4

    if-eq p1, v1, :cond_8

    const/16 v1, 0x1f3

    if-eq p1, v1, :cond_8

    const/16 v1, 0x257

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_6
    const/16 v1, 0x19a

    if-lt p1, v1, :cond_9

    const/16 v1, 0x1a3

    if-gt p1, v1, :cond_9

    .line 27
    invoke-virtual {p2}, Landroid/taobao/windvane/connect/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "location"

    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string p1, "http://h5.m.taobao.com/"

    .line 30
    :goto_4
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    :try_start_2
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_9

    .line 35
    new-instance p2, Landroid/taobao/windvane/extra/jsbridge/WVServer$3;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$3;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 36
    :cond_8
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lastlocktime:J

    .line 37
    sput-boolean v4, Landroid/taobao/windvane/extra/jsbridge/WVServer;->NeedApiLock:Z

    .line 38
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_9

    .line 39
    new-instance p2, Landroid/taobao/windvane/extra/jsbridge/WVServer$2;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$2;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :catch_2
    :cond_9
    :goto_6
    invoke-direct {p0, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->callResult(Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;)V

    return-void
.end method

.method private wrapRequest(Landroid/taobao/windvane/extra/jsbridge/ServerParams;)Landroid/taobao/windvane/connect/HttpRequest;
    .locals 10

    .line 1
    const-class v0, Landroid/taobao/windvane/extra/mtop/MtopApiAdapter;

    new-instance v1, Landroid/taobao/windvane/connect/api/ApiRequest;

    invoke-direct {v1}, Landroid/taobao/windvane/connect/api/ApiRequest;-><init>()V

    .line 2
    iget-object v2, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->api:Ljava/lang/String;

    const-string v3, "api"

    invoke-virtual {v1, v3, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->v:Ljava/lang/String;

    const-string/jumbo v3, "v"

    invoke-virtual {v1, v3, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/taobao/windvane/WindVaneSDKForTB;->wvAdapter:Landroid/taobao/windvane/extra/WVIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "WVServer"

    if-nez v2, :cond_0

    const-string/jumbo v2, "wrapRequest wvAdapter is not exist."

    .line 5
    invoke-static {v5, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v2, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->ecode:Z

    if-eqz v2, :cond_3

    .line 7
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1fe

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-object v3

    .line 8
    :cond_0
    iput-boolean v4, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    .line 9
    iget-object v6, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v6}, Landroid/taobao/windvane/extra/WVIAdapter;->getLoginInfo(Landroid/os/Handler;)Ljava/util/Map;

    move-result-object v2

    .line 10
    iget-boolean v6, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->ecode:Z

    const-string/jumbo v7, "sid"

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    const-string/jumbo v2, "wrapRequest loginInfo is null."

    .line 11
    invoke-static {v5, v2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ecode"

    .line 13
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "login info, sid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ecode: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v5, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->getData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/connect/api/ApiRequest;->addDataParams(Ljava/util/Map;)V

    .line 20
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getMtopUrl()Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-boolean v5, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->isSec:Z

    if-eqz v5, :cond_4

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v1, p1}, Landroid/taobao/windvane/connect/api/ApiRequest;->setSec(Z)V

    .line 23
    invoke-static {v1, v0}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 24
    :cond_4
    iget-boolean p1, p1, Landroid/taobao/windvane/extra/jsbridge/ServerParams;->post:Z

    if-eqz p1, :cond_5

    .line 25
    invoke-static {v1, v0}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatBody(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 26
    :cond_5
    invoke-static {v1, v0}, Landroid/taobao/windvane/connect/api/WVApiWrapper;->formatUrl(Landroid/taobao/windvane/connect/api/ApiRequest;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 27
    :goto_1
    new-instance p1, Landroid/taobao/windvane/connect/HttpRequest;

    invoke-direct {p1, v2}, Landroid/taobao/windvane/connect/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, v4}, Landroid/taobao/windvane/connect/HttpRequest;->setRedirect(Z)V

    if-eqz v3, :cond_6

    const-string v0, "POST"

    .line 29
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/connect/HttpRequest;->setMethod(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/connect/HttpRequest;->setPostData([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_6
    :goto_2
    return-object p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WVServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "101"

    invoke-static {v0, v1, v2}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 3
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    sget-wide v4, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notiTime:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 6
    sput-wide v2, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notiTime:J

    .line 7
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u56e0\u5b89\u5168\u539f\u56e0\uff0clib-mtop.js \u9700\u5347\u7ea7\u81f31.5.0\u4ee5\u4e0a\uff0cWVServer\u63a5\u53e3\u5df2\u5e9f\u5f03\uff0c\u8bf7\u4f7f\u7528MtopWVPlugin\u3002 \u8be6\u8be2 \uff1a\u76ca\u96f6"

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "\u8b66\u544a(\u4ec5debug\u7248\u672c\u4f1a\u5f39\u51fa)"

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    .line 12
    new-instance v3, Landroid/taobao/windvane/extra/jsbridge/WVServer$1;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$1;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const-string/jumbo v0, "send"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 16
    sget-boolean p1, Landroid/taobao/windvane/extra/jsbridge/WVServer;->NeedApiLock:Z

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lastlocktime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    .line 17
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "\u54ce\u5466\u5582\uff0c\u88ab\u6324\u7206\u5566\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 18
    :cond_1
    sput-boolean v0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->NeedApiLock:Z

    .line 19
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->send(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "ret"

    const/4 v2, 0x0

    const-string v3, "WVServer"

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_7

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_3

    const/16 p1, 0x1fe

    if-eq v0, p1, :cond_0

    return v2

    .line 2
    :cond_0
    new-instance p1, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "HY_FAILED"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    const-string v0, "code"

    const-string v1, "-1"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    instance-of v1, v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 7
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not reg login, call fail, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notifyNext()V

    return v4

    .line 11
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    if-eqz v0, :cond_6

    .line 12
    check-cast p1, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    .line 13
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 16
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 19
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 20
    :cond_5
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call result, retString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-direct {p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notifyNext()V

    return v4

    .line 23
    :cond_7
    invoke-direct {p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notifyNext()V

    .line 24
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    .line 25
    iget-object p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;

    iget-object v1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    iget-object v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mParams:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "login success, execute task, mParams:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->mParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v4

    .line 28
    :cond_9
    iget-boolean p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    if-eqz p1, :cond_c

    .line 29
    new-instance p1, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;)V

    .line 30
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "ERR_SID_INVALID"

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 31
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    instance-of v1, v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v1, :cond_a

    .line 32
    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 33
    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 34
    :cond_a
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login fail, call result, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/taobao/windvane/extra/jsbridge/WVServer$MtopResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_b
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->isUserLogin:Z

    .line 37
    :cond_c
    invoke-direct {p0}, Landroid/taobao/windvane/extra/jsbridge/WVServer;->notifyNext()V

    return v4
.end method

.method public isLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->needLock:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->jsContext:Ljava/lang/Object;

    return-void
.end method

.method public send(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/taobao/windvane/jsbridge/WindVaneInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;

    invoke-direct {v1, p0, p1, p2}, Landroid/taobao/windvane/extra/jsbridge/WVServer$ServerRequestTask;-><init>(Landroid/taobao/windvane/extra/jsbridge/WVServer;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/jsbridge/WVServer;->needLock:Z

    return-void
.end method

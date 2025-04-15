.class public Landroid/taobao/windvane/config/ModuleConfig;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/config/ModuleConfig$SingletonHolder;
    }
.end annotation


# static fields
.field private static final SPNAME:Ljava/lang/String; = "ModuleConfig"


# instance fields
.field public url_updateConfig:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/taobao/windvane/config/ModuleConfig;->url_updateConfig:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/taobao/windvane/config/ModuleConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/taobao/windvane/config/ModuleConfig;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/ModuleConfig;
    .locals 1

    .line 1
    sget-object v0, Landroid/taobao/windvane/config/ModuleConfig$SingletonHolder;->instance:Landroid/taobao/windvane/config/ModuleConfig;

    return-object v0
.end method


# virtual methods
.method public saveConfig()V
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 4
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :catch_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v1

    new-instance v2, Landroid/taobao/windvane/config/ModuleConfig$1;

    invoke-direct {v2, p0, v0}, Landroid/taobao/windvane/config/ModuleConfig$1;-><init>(Landroid/taobao/windvane/config/ModuleConfig;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

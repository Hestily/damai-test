.class Landroid/taobao/windvane/config/ModuleConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/ModuleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final instance:Landroid/taobao/windvane/config/ModuleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/config/ModuleConfig$SingletonHolder;->getInstance()Landroid/taobao/windvane/config/ModuleConfig;

    move-result-object v0

    sput-object v0, Landroid/taobao/windvane/config/ModuleConfig$SingletonHolder;->instance:Landroid/taobao/windvane/config/ModuleConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Landroid/taobao/windvane/config/ModuleConfig;
    .locals 7

    .line 1
    new-instance v0, Landroid/taobao/windvane/config/ModuleConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/taobao/windvane/config/ModuleConfig;-><init>(Landroid/taobao/windvane/config/ModuleConfig$1;)V

    :try_start_0
    const-string v1, "ModuleConfig"

    const-string/jumbo v2, "wv-data"

    .line 2
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    const-class v1, Landroid/taobao/windvane/config/ModuleConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object v0
.end method

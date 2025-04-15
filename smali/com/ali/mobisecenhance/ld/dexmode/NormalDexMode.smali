.class public abstract Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;
.super Lcom/ali/mobisecenhance/ld/dexmode/DexMode;
.source "NormalDexMode.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/ali/mobisecenhance/ld/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseDir"    # Ljava/lang/String;
    .param p4, "dex2oatDir"    # Ljava/lang/String;
    .param p5, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p6, "isMainProcess"    # Z
    .param p7, "begin"    # J

    .line 24
    invoke-direct/range {p0 .. p8}, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;-><init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V

    .line 25
    return-void
.end method


# virtual methods
.method protected NormalStartUp(Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;)V
    .locals 5
    .param p1, "engine"    # Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->createRepairClassLoader(Landroid/content/Context;Z)Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;

    move-result-object v0

    .line 32
    .local v0, "loaderInfo":Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;
    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    iget-wide v1, p0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->begin:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->loadSpeedInit(Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->mMiniInit:Ljava/lang/Runnable;

    .line 35
    sget-object v1, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v2, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterAppInit mMiniInit is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->mMiniInit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0

    :catch_6
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method

.method public getMiniInitClz()Ljava/lang/Runnable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/dexmode/NormalDexMode;->mMiniInit:Ljava/lang/Runnable;

    return-object v0
.end method

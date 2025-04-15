.class public Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;
.super Ljava/lang/Object;
.source "LoaderEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field protected mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private mContext:Landroid/content/Context;

.field protected mDex2oatDir:Ljava/lang/String;

.field protected mDexFilesDir:Ljava/lang/String;

.field protected mOldApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 16
    const-class v0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p4, "basedir"    # Ljava/lang/String;
    .param p5, "dexFilesDir"    # Ljava/lang/String;
    .param p6, "dex2oatDir"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mDexFilesDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mDex2oatDir:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mDex2oatDir:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mDexFilesDir:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mContext:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mOldApplication:Landroid/app/Application;

    .line 32
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderEngine;->mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 33
    return-void
.end method


# virtual methods
.method public native createRepairClassLoader(Landroid/content/Context;Z)Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;
.end method

.method protected native enterAppInit(Ljava/lang/Class;Ljava/lang/ClassLoader;J)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "J)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public native loadSpeedInit(Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;J)Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

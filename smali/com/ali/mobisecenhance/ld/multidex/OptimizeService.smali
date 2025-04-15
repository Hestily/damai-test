.class public Lcom/ali/mobisecenhance/ld/multidex/OptimizeService;
.super Landroid/app/IntentService;
.source "OptimizeService.java"


# static fields
.field static volatile sAlreadyOpt:Z


# instance fields
.field mDexDir:Ljava/io/File;

.field mOptDexDir:Ljava/io/File;

.field mRootDir:Ljava/io/File;

.field mZipDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/OptimizeService;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    const-string v0, "OptimizeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v0

    .line 26
    .local v0, "monitor":Lcom/ali/mobisecenhance/ld/multidex/Monitor;
    if-nez v0, :cond_0

    .line 27
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->init(Lcom/ali/mobisecenhance/ld/multidex/Monitor;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v1

    const-string v2, "Starting OptimizeService"

    invoke-virtual {v1, v2}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logDebug(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private native handleOptimize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native startOptimizeService(Landroid/content/Context;)V
.end method


# virtual methods
.method public native onCreate()V
.end method

.method protected native onHandleIntent(Landroid/content/Intent;)V
.end method

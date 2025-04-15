.class public Lcom/ali/mobisecenhance/ld/multidex/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field private static final enableLog:Z

.field private static sMonitor:Lcom/ali/mobisecenhance/ld/multidex/Monitor;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/mobisecenhance/ld/multidex/Monitor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    .line 15
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static native get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;
.end method

.method private native getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method static native init(Lcom/ali/mobisecenhance/ld/multidex/Monitor;)V
.end method


# virtual methods
.method protected native doAfterInstall(Ljava/lang/Runnable;)V
.end method

.method protected native doBeforeHandleOpt()V
.end method

.method native getProcessName()Ljava/lang/String;
.end method

.method protected native isEnableNativeCheckSum()Z
.end method

.method protected native loadLibrary(Ljava/lang/String;)V
.end method

.method protected native logDebug(Ljava/lang/String;)V
.end method

.method protected native logError(Ljava/lang/String;)V
.end method

.method protected native logError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected native logErrorAfterInstall(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected native logInfo(Ljava/lang/String;)V
.end method

.method protected native logWarning(Ljava/lang/String;)V
.end method

.method protected native logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected native reportAfterInstall(JJJLjava/lang/String;)V
.end method

.method public native setExecutor(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/ali/mobisecenhance/ld/multidex/Monitor;
.end method

.method public native setProcessName(Ljava/lang/String;)Lcom/ali/mobisecenhance/ld/multidex/Monitor;
.end method

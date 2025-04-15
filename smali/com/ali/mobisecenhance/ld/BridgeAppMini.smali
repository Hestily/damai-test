.class public Lcom/ali/mobisecenhance/ld/BridgeAppMini;
.super Landroid/app/Application;
.source "BridgeAppMini.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private lock:Ljava/nio/channels/FileLock;

.field private mConfigInfo:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private mDexMode:Lcom/ali/mobisecenhance/ld/dexmode/DexMode;

.field private mMainProcess:Z

.field private mWorker:Ljava/lang/Runnable;

.field private runMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/BridgeAppMini;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    const-class v0, Lcom/ali/mobisecenhance/ld/BridgeAppMini;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/BridgeAppMini;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/BridgeAppMini;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/BridgeAppMini;->mMainProcess:Z

    return-void
.end method

.method private native appInitInShellDexMode(Landroid/content/Context;J)V
.end method

.method private native checkLockFile()V
.end method

.method private native checkMainProcess(Ljava/lang/String;Landroid/content/Context;)V
.end method

.method private native createLockFile()Z
.end method

.method private native deleteLockFile()Z
.end method

.method private native getProcessNameCompat()Ljava/lang/String;
.end method


# virtual methods
.method protected native attachBaseContext(Landroid/content/Context;)V
.end method

.method public native cleanup()V
.end method

.method protected native getConfig()Ljava/lang/String;
.end method

.method protected native getDigestHash()Ljava/lang/String;
.end method

.method protected native getProviders()Ljava/lang/String;
.end method

.method public native onCreate()V
.end method

.method native printClassLoader()V
.end method

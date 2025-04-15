.class public abstract Lcom/ali/mobisecenhance/ld/dexmode/DexMode;
.super Ljava/lang/Object;
.source "DexMode.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field protected begin:J

.field protected isMainProcess:Z

.field protected mBaseDir:Ljava/lang/String;

.field protected mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field protected mContext:Landroid/content/Context;

.field protected mDex2OatDir:Ljava/lang/String;

.field protected mDexFilesDir:Ljava/lang/String;

.field protected mHookSoFile:Ljava/lang/String;

.field protected mMiniInit:Ljava/lang/Runnable;

.field protected mOldApplication:Landroid/app/Application;

.field protected mZumaDataFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseDir"    # Ljava/lang/String;
    .param p4, "dex2oatDir"    # Ljava/lang/String;
    .param p5, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p6, "isMainProcess"    # Z
    .param p7, "begin"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mDexFilesDir:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mMiniInit:Ljava/lang/Runnable;

    .line 33
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mOldApplication:Landroid/app/Application;

    .line 35
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mBaseDir:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mDex2OatDir:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 38
    iput-wide p7, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->begin:J

    .line 39
    iput-boolean p6, p0, Lcom/ali/mobisecenhance/ld/dexmode/DexMode;->isMainProcess:Z

    .line 41
    return-void
.end method

.method public static getDexModeInstance(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)Lcom/ali/mobisecenhance/ld/dexmode/DexMode;
    .locals 10
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;
    .param p3, "dex2oatDir"    # Ljava/lang/String;
    .param p4, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p5, "isMainProcess"    # Z
    .param p6, "begin"    # J

    .line 53
    new-instance v9, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexMode;-><init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZJ)V

    return-object v9
.end method


# virtual methods
.method public abstract beginHardWork()V
.end method

.method public abstract cleanup()V
.end method

.method public abstract getMiniInitClz()Ljava/lang/Runnable;
.end method

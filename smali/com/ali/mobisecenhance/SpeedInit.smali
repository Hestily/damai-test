.class public Lcom/ali/mobisecenhance/SpeedInit;
.super Lcom/ali/mobisecenhance/Init;
.source "SpeedInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private final mUseNewClassLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/SpeedInit;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 21
    const-class v0, Lcom/ali/mobisecenhance/SpeedInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/SpeedInit;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/SpeedInit;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;J)V
    .locals 1
    .param p1, "oldApplication"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "applicationName"    # Ljava/lang/String;
    .param p4, "oldClassLoader"    # Ljava/lang/ClassLoader;
    .param p5, "newMiniClassLoader"    # Ljava/lang/ClassLoader;
    .param p6, "beginTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/ali/mobisecenhance/Init;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/SpeedInit;->mUseNewClassLoader:Z

    .line 30
    iput-wide p6, p0, Lcom/ali/mobisecenhance/SpeedInit;->mBeginTime:J

    .line 31
    iput-object p1, p0, Lcom/ali/mobisecenhance/SpeedInit;->mOldApplication:Landroid/app/Application;

    .line 32
    iput-object p2, p0, Lcom/ali/mobisecenhance/SpeedInit;->mZumaAppContext:Landroid/content/Context;

    .line 33
    iput-object p4, p0, Lcom/ali/mobisecenhance/SpeedInit;->mOldClassLoader:Ljava/lang/ClassLoader;

    .line 34
    iput-object p5, p0, Lcom/ali/mobisecenhance/SpeedInit;->mNewClassLoader:Ljava/lang/ClassLoader;

    .line 35
    iput-object p3, p0, Lcom/ali/mobisecenhance/SpeedInit;->mNewApplicationName:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/ali/mobisecenhance/SpeedInit;->mZumaAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/SpeedInit;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/ali/mobisecenhance/SpeedInit;->replaceActivityThreadInstrumentation()V

    .line 44
    return-void
.end method

.method private native installContentProviders(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method private native reallyRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public native run()V
.end method

.class public Lcom/ali/mobisecenhance/Init;
.super Ljava/lang/Object;
.source "Init.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field protected mBeginTime:J

.field protected mNewApplicationName:Ljava/lang/String;

.field protected mNewClassLoader:Ljava/lang/ClassLoader;

.field protected mOldApplication:Landroid/app/Application;

.field protected mOldClassLoader:Ljava/lang/ClassLoader;

.field protected mPackageName:Ljava/lang/String;

.field protected mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetAppInstrumentation:Landroid/app/Instrumentation;

.field protected mZumaAppContext:Landroid/content/Context;

.field protected mZumaInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/Init;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    const-class v0, Lcom/ali/mobisecenhance/Init;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/Init;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/Init;->logger:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/Init;->mProviders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected native replaceActivityThreadInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected native replaceApplication(Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected native replaceInstrumentation(Landroid/app/Instrumentation;Ljava/lang/ClassLoader;)Landroid/app/Instrumentation;
.end method

.method protected native setOuterContext(Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

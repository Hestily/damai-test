.class public Lcom/ali/mobisecenhance/ld/AppInit;
.super Ljava/lang/Object;
.source "AppInit.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static baseDir:Ljava/lang/String;

.field public static dex2oatDirPath:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/AppInit;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 9
    const-class v0, Lcom/ali/mobisecenhance/ld/AppInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->TAG:Ljava/lang/String;

    .line 10
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    .line 13
    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->dex2oatDirPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native delAllFiles(Ljava/lang/String;)Z
.end method

.method private static native delFolder(Ljava/lang/String;)V
.end method

.method public static native init(Landroid/content/Context;Lcom/ali/mobisecenhance/ld/ConfigInfo;)V
.end method

.method private static native isUpdate(Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;)Z
.end method

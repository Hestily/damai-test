.class public Lcom/ali/mobisecenhance/ld/multidex/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static result:Lcom/ali/mobisecenhance/ld/multidex/Result;


# instance fields
.field public dataDir:Ljava/io/File;

.field public dexDir:Ljava/io/File;

.field public dexInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fatalThrowable:Ljava/lang/Throwable;

.field public freeSpaceAfter:J

.field public freeSpaceBefore:J

.field public isYunOS:Z

.field public modified:Z

.field public optDexDir:Ljava/io/File;

.field public rootDir:Ljava/io/File;

.field public supportFastLoadDex:Z

.field public unFatalThrowable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public vmLibName:Ljava/lang/String;

.field public zipDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/multidex/Result;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    new-instance v0, Lcom/ali/mobisecenhance/ld/multidex/Result;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/multidex/Result;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/multidex/Result;->result:Lcom/ali/mobisecenhance/ld/multidex/Result;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/Result;->unFatalThrowable:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/Result;->dexInfoList:Ljava/util/List;

    .line 53
    return-void
.end method

.method public static native get()Lcom/ali/mobisecenhance/ld/multidex/Result;
.end method


# virtual methods
.method public native addDexInfo(Ljava/lang/String;)V
.end method

.method public native addUnFatalThrowable(Ljava/lang/Throwable;)V
.end method

.method public native setDirs(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
.end method

.method public native setFatalThrowable(Ljava/lang/Throwable;)V
.end method

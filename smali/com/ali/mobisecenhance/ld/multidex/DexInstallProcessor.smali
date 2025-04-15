.class Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;
.super Ljava/lang/Object;
.source "DexInstallProcessor.java"


# instance fields
.field private mDoCheckSum:Z

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 27
    .local v0, "random":Ljava/util/Random;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;->mDoCheckSum:Z

    .line 28
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do checksum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;->mDoCheckSum:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private native checkFileValid(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z
.end method

.method private native getValidDexFile(Ljava/io/File;I)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getValidOptDexFile(Ljava/io/File;I)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/ali/mobisecenhance/ld/multidex/DexHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native isZipFileValid(Ljava/io/File;I)Z
.end method

.method private native obtainDexHolder(ILjava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native obtainDexObjectList(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/ali/mobisecenhance/ld/multidex/Result;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/ali/mobisecenhance/ld/multidex/Result;",
            ")",
            "Ljava/util/List<",
            "Lcom/ali/mobisecenhance/ld/multidex/DexHolder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native obtainEntryBytesInApk(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native obtainEntryFileInApk(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method native doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/lang/ClassLoader;Lcom/ali/mobisecenhance/ld/multidex/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method native doInstallationInOptProcess(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

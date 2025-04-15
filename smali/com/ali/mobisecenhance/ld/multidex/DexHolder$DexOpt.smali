.class Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;
.super Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.source "DexHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DexOpt"
.end annotation


# instance fields
.field private mForceOpt:Z

.field private mIndex:I

.field private mOptFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;Ljava/io/File;Z)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "file"    # Ljava/io/File;
    .param p3, "optFile"    # Ljava/io/File;
    .param p4, "forceOpt"    # Z

    .line 157
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;-><init>()V

    .line 158
    iput p1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mIndex:I

    .line 159
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mFile:Ljava/io/File;

    .line 160
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mOptFile:Ljava/io/File;

    .line 161
    iput-boolean p4, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mForceOpt:Z

    .line 162
    return-void
.end method


# virtual methods
.method public native getInfo()Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;
.end method

.method public toDexFile()Ljava/lang/Object;
    .locals 4

    .line 167
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mOptFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e1":Ljava/io/IOException;
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v2

    const-string v3, "Fail to load dex file first time"

    invoke-virtual {v2, v3, v1}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :try_start_1
    iget-boolean v2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mForceOpt:Z

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mOptFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$DexOpt;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ali/mobisecenhance/ld/multidex/BoostNative;->loadDirectDex(Ljava/lang/String;[B)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 176
    :catch_1
    move-exception v0

    .line 177
    .local v0, "e2":Ljava/io/IOException;
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v2

    const-string v3, "Fail to load dex file"

    invoke-virtual {v2, v3, v0}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public native toFasterHolder(Landroid/content/SharedPreferences;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end method

.method public native toString()Ljava/lang/String;
.end method

.class Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;
.super Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.source "DexLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;-><init>()V

    .line 99
    :try_start_0
    const-string v0, "dalvik.system.DexPathList$Element"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$KKElementConstructor;

    invoke-direct {v1, v0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$KKElementConstructor;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;->mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v0    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v1

    const-string v2, "fail to get Element constructor"

    invoke-virtual {v1, v2, v0}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;

    .line 96
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;-><init>()V

    return-void
.end method

.class Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;
.super Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.source "DexLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V14"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;-><init>()V

    .line 112
    const/4 v0, 0x0

    .line 115
    .local v0, "constructor":Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;
    :try_start_0
    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 119
    .line 122
    .local v1, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    new-instance v2, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ICSElementConstructor;

    invoke-direct {v2, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ICSElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 124
    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 126
    :goto_0
    if-nez v0, :cond_0

    .line 128
    :try_start_2
    new-instance v2, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;

    invoke-direct {v2, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v2

    .line 130
    goto :goto_1

    .line 129
    :catch_1
    move-exception v2

    .line 133
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 135
    :try_start_3
    new-instance v2, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR2ElementConstructor;

    invoke-direct {v2, v1}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR2ElementConstructor;-><init>(Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    .line 137
    goto :goto_2

    .line 136
    :catch_2
    move-exception v2

    .line 140
    :cond_1
    :goto_2
    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;->mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;

    .line 141
    return-void

    .line 116
    .end local v1    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v2

    const-string v3, "can not find DexPathList$Element"

    invoke-virtual {v2, v3, v1}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;

    .line 110
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;-><init>()V

    return-void
.end method

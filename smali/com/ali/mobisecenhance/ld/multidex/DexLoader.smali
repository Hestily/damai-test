.class abstract Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.super Ljava/lang/Object;
.source "DexLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$KKElementConstructor;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR2ElementConstructor;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ICSElementConstructor;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;,
        Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;
    }
.end annotation


# instance fields
.field mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(I)Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
    .locals 2
    .param p0, "sdkInt"    # I

    .line 23
    const/4 v0, 0x0

    const/16 v1, 0x13

    if-lt p0, v1, :cond_0

    .line 24
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;

    invoke-direct {v1, v0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V19;-><init>(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;)V

    return-object v1

    .line 25
    :cond_0
    const/16 v1, 0xe

    if-lt p0, v1, :cond_1

    .line 26
    new-instance v1, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;

    invoke-direct {v1, v0}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$V14;-><init>(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$1;)V

    return-object v1

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only support SDK_INT >= 14, give up when < 14"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeDexElements(Ljava/util/List;Landroid/content/SharedPreferences;)[Ljava/lang/Object;
    .locals 8
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ali/mobisecenhance/ld/multidex/DexHolder;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    .local p1, "dexHolderList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/mobisecenhance/ld/multidex/DexHolder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;

    .line 67
    .local v2, "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;->mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;

    invoke-virtual {v2, v3}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->toDexListElement(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "element":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 69
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load faster dex in holder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logWarning(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, p2}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->toFasterHolder(Landroid/content/SharedPreferences;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;->mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;

    invoke-virtual {v2, v4}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->toDexListElement(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 76
    :cond_1
    if-eqz v3, :cond_2

    .line 77
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load dex in holder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "dexInfo":Ljava/lang/String;
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Result;->get()Lcom/ali/mobisecenhance/ld/multidex/Result;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ali/mobisecenhance/ld/multidex/Result;->addDexInfo(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 64
    .end local v2    # "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "dexInfo":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 81
    .restart local v2    # "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .restart local v3    # "element":Ljava/lang/Object;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to load dex, index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v1    # "i":I
    .end local v2    # "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    .end local v3    # "element":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 8
    .param p1, "loader"    # Ljava/lang/ClassLoader;
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

    .line 42
    .local p2, "dexHolderList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/mobisecenhance/ld/multidex/DexHolder;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {v0, v1}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->findFieldRecursively(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 43
    .local v0, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "dexPathList":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 47
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;

    .line 48
    .local v4, "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    iget-object v5, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;->mElementConstructor:Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;

    invoke-virtual {v4, v5}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;->toDexListElement(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->get()Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Install holder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ali/mobisecenhance/ld/multidex/Monitor;->logInfo(Ljava/lang/String;)V

    .line 46
    .end local v4    # "dexHolder":Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "dexElements"

    invoke-static {v1, v4, v3}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method install(Ljava/lang/ClassLoader;Ljava/util/List;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/ali/mobisecenhance/ld/multidex/DexHolder;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    .local p2, "dexHolderList":Ljava/util/List;, "Ljava/util/List<Lcom/ali/mobisecenhance/ld/multidex/DexHolder;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {v0, v1}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->findFieldRecursively(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    .local v0, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "dexPathList":Ljava/lang/Object;
    invoke-direct {p0, p2, p3}, Lcom/ali/mobisecenhance/ld/multidex/DexLoader;->makeDexElements(Ljava/util/List;Landroid/content/SharedPreferences;)[Ljava/lang/Object;

    move-result-object v2

    .line 38
    .local v2, "elements":[Ljava/lang/Object;
    const-string v3, "dexElements"

    invoke-static {v1, v3, v2}, Lcom/ali/mobisecenhance/ld/multidex/Utility;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

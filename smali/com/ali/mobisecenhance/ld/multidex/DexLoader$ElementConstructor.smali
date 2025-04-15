.class interface abstract Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;
.super Ljava/lang/Object;
.source "DexLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ElementConstructor"
.end annotation


# virtual methods
.method public abstract newInstance(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

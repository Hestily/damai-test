.class Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;
.super Ljava/lang/Object;
.source "DexLoader.java"

# interfaces
.implements Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JBMR11ElementConstructor"
.end annotation


# instance fields
.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 181
    .local p1, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/File;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/io/File;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ldalvik/system/DexFile;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 184
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/multidex/DexLoader$JBMR11ElementConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 185
    return-void
.end method


# virtual methods
.method public native newInstance(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

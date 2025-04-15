.class Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;
.super Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.source "DexHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApkBuffer"
.end annotation


# instance fields
.field private mBytes:[B

.field private mIndex:I

.field private mOptFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(I[BLjava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "bytes"    # [B
    .param p3, "file"    # Ljava/io/File;
    .param p4, "optFile"    # Ljava/io/File;

    .line 256
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;-><init>()V

    .line 257
    iput p1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;->mIndex:I

    .line 258
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;->mBytes:[B

    .line 259
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;->mFile:Ljava/io/File;

    .line 260
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ApkBuffer;->mOptFile:Ljava/io/File;

    .line 261
    return-void
.end method


# virtual methods
.method public native getInfo()Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;
.end method

.method public native toDexFile()Ljava/lang/Object;
.end method

.method public native toDexListElement(Lcom/ali/mobisecenhance/ld/multidex/DexLoader$ElementConstructor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native toFasterHolder(Landroid/content/SharedPreferences;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end method

.method public native toString()Ljava/lang/String;
.end method

.class Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;
.super Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.source "DexHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZipOpt"
.end annotation


# instance fields
.field private mIndex:I

.field private mOptFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "file"    # Ljava/io/File;
    .param p3, "optFile"    # Ljava/io/File;

    .line 118
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/multidex/DexHolder;-><init>()V

    .line 119
    iput p1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;->mIndex:I

    .line 120
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;->mFile:Ljava/io/File;

    .line 121
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/multidex/DexHolder$ZipOpt;->mOptFile:Ljava/io/File;

    .line 122
    return-void
.end method


# virtual methods
.method public native getInfo()Lcom/ali/mobisecenhance/ld/multidex/DexHolder$StoreInfo;
.end method

.method public native toDexFile()Ljava/lang/Object;
.end method

.method public native toFasterHolder(Landroid/content/SharedPreferences;)Lcom/ali/mobisecenhance/ld/multidex/DexHolder;
.end method

.method public native toString()Ljava/lang/String;
.end method

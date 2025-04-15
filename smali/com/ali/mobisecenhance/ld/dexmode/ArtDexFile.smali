.class public Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;
.super Ljava/lang/Object;
.source "ArtDexFile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFileName1:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 11
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dexFile"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/dexmode/ArtDexFile;->mFileName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method native genDexFile()Ldalvik/system/DexFile;
.end method

.class public Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;
.super Ljava/lang/Object;
.source "ShellDexUtil.java"


# static fields
.field private static DEX2OATSTRFLAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mDexFileCookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDexFilesDir:Ljava/lang/String;

.field private mShellDexFile:Ljava/lang/String;

.field private mShellDexOutput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 61
    const-string v0, "alidex2oat"

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->DEX2OATSTRFLAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexFileDir"    # Ljava/lang/String;
    .param p3, "dexOatDir"    # Ljava/lang/String;
    .param p4, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->mDexFileCookies:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->mContext:Landroid/content/Context;

    .line 78
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->mConfigs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 79
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->mDexFilesDir:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->mDexFilesDir:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->DEX2OATSTRFLAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->createFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/ali/mobisecenhance/ld/RecordLog;
    .locals 1

    .line 40
    sget-object v0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-object v0
.end method

.method private native checkFile(Ljava/lang/String;)Z
.end method

.method private native createFile(Ljava/lang/String;)Z
.end method

.method private native extractFolder(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation
.end method

.method private native generateArtClassLoaderFromApk(Ljava/lang/ClassLoader;)Ldalvik/system/BaseDexClassLoader;
.end method

.method private native getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method


# virtual methods
.method public native generateClassLoader()Ldalvik/system/BaseDexClassLoader;
.end method

.method public native getCookies()[I
.end method

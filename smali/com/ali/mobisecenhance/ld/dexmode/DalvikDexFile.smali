.class public Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;
.super Ljava/lang/Object;
.source "DalvikDexFile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private cookie:Ljava/lang/reflect/Field;

.field private fileName:Ljava/lang/reflect/Field;

.field private mCookie:I

.field private mDefineClass:Ljava/lang/reflect/Method;

.field private mFileByte:[B

.field private mFileName:Ljava/lang/String;

.field private mOpenDexFile:Ljava/lang/reflect/Method;

.field private mShellDexFile:Ljava/lang/String;

.field private mShellDexOutput:Ljava/lang/String;

.field private shellDexFile:Ldalvik/system/DexFile;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;

    const-string v1, "cn.damai_shell_alijtca_plus"

    invoke-static {v1, v0}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    .line 22
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 23
    const-class v0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dexFile"    # Ljava/lang/String;
    .param p2, "shellDexFile"    # Ljava/lang/String;
    .param p3, "shelldexOutput"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;->mFileName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;->mShellDexFile:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/dexmode/DalvikDexFile;->mShellDexOutput:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private native getDexFile(Ldalvik/system/DexFile;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;ILjava/lang/String;)Ldalvik/system/DexFile;
.end method

.method private native getOpenDexFile()Ljava/lang/reflect/Method;
.end method

.method private native getOpenDexFileByReflect()Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method private native getOpenDexFileByShellDex()Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native invokeOpenDexFile(Ljava/lang/reflect/Method;[B)I
.end method


# virtual methods
.method native genDexFile()Ldalvik/system/DexFile;
.end method

.method public native getCookie()I
.end method

.method public native getDexFileSize()I
.end method

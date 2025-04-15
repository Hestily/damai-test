.class public Lcom/ali/mobisecenhance/ld/util/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/util/RC4;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native RC4Base([BLjava/lang/String;)[B
.end method

.method private static native asString([B)Ljava/lang/String;
.end method

.method public static native decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native decrypt([BLjava/lang/String;)[B
.end method

.method public static native decryptAsHexString([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native encrypt(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native encrypt([BLjava/lang/String;)[B
.end method

.method public static native encryptAsHexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native hexString2Bytes(Ljava/lang/String;)[B
.end method

.method private static native initKey(Ljava/lang/String;)[B
.end method

.method private static native toHexString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native uniteBytes(BB)B
.end method

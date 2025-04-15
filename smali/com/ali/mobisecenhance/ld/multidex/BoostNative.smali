.class final Lcom/ali/mobisecenhance/ld/multidex/BoostNative;
.super Ljava/lang/Object;
.source "BoostNative.java"


# static fields
.field private static volatile alreadyInit:Z

.field private static supportFastLoadDex:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/BoostNative;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native checkSupportFastLoad(Lcom/ali/mobisecenhance/ld/multidex/Result;)V
.end method

.method private static native initialize(ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "Ljava/lang/RuntimeException;",
            ">;)Z"
        }
    .end annotation
.end method

.method static native declared-synchronized isSupportFastLoad()Z
.end method

.method static native loadDirectDex(Ljava/lang/String;[B)Ljava/lang/Object;
.end method

.method static native makeOptDexFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native obtainCheckSum(Ljava/lang/String;)J
.end method

.method static native recoverAction()V
.end method

.class public Lcom/ali/mobisecenhance/ld/multidex/BoostMultiDex;
.super Ljava/lang/Object;
.source "BoostMultiDex.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/BoostMultiDex;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native install(Landroid/content/Context;Ljava/io/File;Ljava/lang/ClassLoader;Lcom/ali/mobisecenhance/ld/multidex/Monitor;)Lcom/ali/mobisecenhance/ld/multidex/Result;
.end method

.method public static native isOptimizeProcess(Ljava/lang/String;)Z
.end method

.method private static native isVMCapable(Ljava/lang/String;)Z
.end method

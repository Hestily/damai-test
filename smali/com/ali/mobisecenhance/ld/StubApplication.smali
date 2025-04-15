.class public Lcom/ali/mobisecenhance/ld/StubApplication;
.super Lcom/ali/mobisecenhance/ld/BridgeAppMini;
.source "StubApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/StubApplication;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/BridgeAppMini;-><init>()V

    return-void
.end method


# virtual methods
.method protected native getConfig()Ljava/lang/String;
.end method

.method protected native getDigestHash()Ljava/lang/String;
.end method

.method protected native getProviders()Ljava/lang/String;
.end method

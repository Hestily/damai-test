.class public Lcom/ali/mobisecenhance/ld/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field public applicationName:Ljava/lang/String;

.field public isReleaseMode:Z

.field public isTestMode:Z

.field public runMode:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/ConfigInfo;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isTestMode:Z

    .line 8
    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isReleaseMode:Z

    return-void
.end method

.method public static native getConfigInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/mobisecenhance/ld/ConfigInfo;
.end method


# virtual methods
.method public native toString()Ljava/lang/String;
.end method

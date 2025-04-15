.class public Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderInfo.java"


# instance fields
.field private isOatMode:Z

.field private originalClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Z)V
    .locals 0
    .param p1, "oldClassLoader"    # Ljava/lang/ClassLoader;
    .param p2, "oatmode"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;->originalClassloader:Ljava/lang/ClassLoader;

    .line 17
    iput-boolean p2, p0, Lcom/ali/mobisecenhance/ld/loader/LoaderInfo;->isOatMode:Z

    .line 18
    return-void
.end method


# virtual methods
.method public native getOriginalClassloader()Ljava/lang/ClassLoader;
.end method

.method public native isOatMode()Z
.end method

.class Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil$1;
.super Ljava/lang/Object;
.source "ShellDexUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;->generateArtClassLoaderFromApk(Ljava/lang/ClassLoader;)Ldalvik/system/BaseDexClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;

.field final synthetic val$apkPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil$1;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;

    .line 209
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil$1;->this$0:Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil;

    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/dexmode/ShellDexUtil$1;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

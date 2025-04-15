.class Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor$1;
.super Ljava/lang/Object;
.source "DexInstallProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;->doInstallation(Landroid/content/Context;Ljava/io/File;Ljava/lang/ClassLoader;Lcom/ali/mobisecenhance/ld/multidex/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;

.field final synthetic val$mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor$1;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;

    .line 79
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor$1;->this$0:Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor;

    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/multidex/DexInstallProcessor$1;->val$mainContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method

.class Lcom/ali/mobisecenhance/ld/multidex/Monitor$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/mobisecenhance/ld/multidex/Monitor;->doAfterInstall(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/mobisecenhance/ld/multidex/Monitor;

.field final synthetic val$optRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "cn.damai_shell_alijtca_plus"

    const-class v1, Lcom/ali/mobisecenhance/ld/multidex/Monitor$1;

    invoke-static {v0, v1}, Lcom/j2c/enhance/SoLoad992979061;->loadJ2CSo(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/ali/mobisecenhance/ld/multidex/Monitor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    .line 126
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/multidex/Monitor$1;->this$0:Lcom/ali/mobisecenhance/ld/multidex/Monitor;

    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/multidex/Monitor$1;->val$optRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native queueIdle()Z
.end method

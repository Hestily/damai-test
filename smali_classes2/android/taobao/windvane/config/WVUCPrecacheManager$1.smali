.class Landroid/taobao/windvane/config/WVUCPrecacheManager$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVUCPrecacheManager;->sendClearPrecacheDocMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/config/WVUCPrecacheManager;

.field final synthetic val$resUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVUCPrecacheManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;->this$0:Landroid/taobao/windvane/config/WVUCPrecacheManager;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;->val$resUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;->this$0:Landroid/taobao/windvane/config/WVUCPrecacheManager;

    iget-object v1, p0, Landroid/taobao/windvane/config/WVUCPrecacheManager$1;->val$resUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->clearPrecacheDoc(Ljava/lang/String;)V

    return-void
.end method

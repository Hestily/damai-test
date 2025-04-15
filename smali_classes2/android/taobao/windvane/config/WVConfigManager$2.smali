.class Landroid/taobao/windvane/config/WVConfigManager$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/config/WVConfigManager;->updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/config/WVConfigManager;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigManager$2;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iput-object p2, p0, Landroid/taobao/windvane/config/WVConfigManager$2;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager$2;->this$0:Landroid/taobao/windvane/config/WVConfigManager;

    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager$2;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-static {v0, v1}, Landroid/taobao/windvane/config/WVConfigManager;->access$300(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    return-void
.end method

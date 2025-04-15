.class Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;
.super Landroid/taobao/windvane/config/WVConfigHandler;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorConfigManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;->this$0:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    invoke-direct {p0}, Landroid/taobao/windvane/config/WVConfigHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigUpdateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfigManager$1;->this$0:Landroid/taobao/windvane/monitor/WVMonitorConfigManager;

    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVConfigHandler;->getSnapshotN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, p1, v1}, Landroid/taobao/windvane/monitor/WVMonitorConfigManager;->access$000(Landroid/taobao/windvane/monitor/WVMonitorConfigManager;Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

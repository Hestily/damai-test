.class Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;
.super Ljava/util/TimerTask;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/BlowSensor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/BlowSensor;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;->this$0:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/BlowSensor$1;->this$0:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->access$000(Landroid/taobao/windvane/jsbridge/api/BlowSensor;)V

    return-void
.end method

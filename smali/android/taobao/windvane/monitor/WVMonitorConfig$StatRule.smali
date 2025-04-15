.class public Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatRule"
.end annotation


# instance fields
.field public netstat:Z

.field public onDomLoad:J

.field public onLoad:J

.field public resSample:I

.field public resTime:J

.field final synthetic this$0:Landroid/taobao/windvane/monitor/WVMonitorConfig;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorConfig;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->this$0:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onLoad:J

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->onDomLoad:J

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->resTime:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;->netstat:Z

    return-void
.end method

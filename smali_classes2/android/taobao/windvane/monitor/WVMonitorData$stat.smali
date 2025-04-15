.class public Landroid/taobao/windvane/monitor/WVMonitorData$stat;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "stat"
.end annotation


# instance fields
.field public allVerifyTime:J

.field public appSeq:Ljava/lang/String;

.field public finish:I

.field public firstByteTime:J

.field public fromType:I

.field public matchCost:J

.field public onDomLoad:J

.field public onLoad:J

.field public packageAppName:Ljava/lang/String;

.field public packageAppVersion:Ljava/lang/String;

.field final synthetic this$0:Landroid/taobao/windvane/monitor/WVMonitorData;

.field public verifyCacheSize:I

.field public verifyError:I

.field public verifyResTime:J

.field public verifyTime:J


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorData;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->this$0:Landroid/taobao/windvane/monitor/WVMonitorData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I

    const/4 v2, 0x1

    .line 5
    iput v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    .line 6
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->firstByteTime:J

    const-string v2, ""

    .line 7
    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 10
    iput-wide v2, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->matchCost:J

    .line 11
    iput p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyError:I

    .line 12
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyResTime:J

    .line 13
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyTime:J

    .line 14
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    .line 15
    iput p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyCacheSize:I

    return-void
.end method

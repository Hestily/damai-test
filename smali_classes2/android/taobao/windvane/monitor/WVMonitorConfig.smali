.class public Landroid/taobao/windvane/monitor/WVMonitorConfig;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;,
        Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;
    }
.end annotation


# instance fields
.field public errorRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;",
            ">;"
        }
    .end annotation
.end field

.field public isErrorBlacklist:Z

.field public perfCheckSampleRate:D

.field public perfCheckURL:Ljava/lang/String;

.field public stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->v:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;-><init>(Landroid/taobao/windvane/monitor/WVMonitorConfig;)V

    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->stat:Landroid/taobao/windvane/monitor/WVMonitorConfig$StatRule;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->isErrorBlacklist:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->errorRule:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckSampleRate:D

    const-string v0, ""

    .line 7
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig;->perfCheckURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newErrorRuleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;
    .locals 1

    .line 1
    new-instance v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;-><init>(Landroid/taobao/windvane/monitor/WVMonitorConfig;)V

    .line 2
    iput-object p1, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->url:Ljava/lang/String;

    .line 3
    iput-object p2, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msg:Ljava/lang/String;

    .line 4
    iput-object p3, v0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->code:Ljava/lang/String;

    return-object v0
.end method

.class public Landroid/taobao/windvane/monitor/WVMonitorData$extra;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "extra"
.end annotation


# instance fields
.field public netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

.field public resStat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/monitor/WVMonitorData$resStat;",
            ">;"
        }
    .end annotation
.end field

.field public selfDefine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public statusCode:I

.field final synthetic this$0:Landroid/taobao/windvane/monitor/WVMonitorData;

.field public via:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->this$0:Landroid/taobao/windvane/monitor/WVMonitorData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->netStat:Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->selfDefine:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->resStat:Ljava/util/Map;

    return-void
.end method

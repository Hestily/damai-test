.class public Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetStat"
.end annotation


# instance fields
.field public dataSpeed:J

.field public dnsTime:J

.field public firstDataTime:J

.field public isDNSTimeout:S

.field public isSSL:Z

.field public oneWayTime:J

.field public postBodyTime:J

.field public recDataTime:J

.field public serverRT:J

.field public spdy:I

.field public tcpLinkDate:J

.field public totalSize:J

.field public waitTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

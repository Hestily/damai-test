.class public interface abstract Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;
    }
.end annotation


# static fields
.field public static final FROMTYPE_CACHE:I = 0x2

.field public static final FROMTYPE_COMBO:I = 0x8

.field public static final FROMTYPE_NETWORK:I = 0x1

.field public static final FROMTYPE_NETWORK_UC_ALI:I = 0x6

.field public static final FROMTYPE_NETWORK_UC_UC:I = 0x5

.field public static final FROMTYPE_PACKAGEAPP:I = 0x3

.field public static final FROMTYPE_ZCACHE:I = 0x4

.field public static final FROM_UC_WEBVIEW:I = 0x46

.field public static final FROM_UC_WEBVIEW_E:I = 0x47

.field public static final FROM_UC_WEBVIEW_PAGECACHE:I = 0x48


# virtual methods
.method public abstract didExitAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didGetPageStatusCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract didGetResourceStatusCode(Ljava/lang/String;IILjava/util/Map;Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface$NetStat;",
            ")V"
        }
    .end annotation
.end method

.method public abstract didGetResourceVerifyCode(Ljava/lang/String;JJII)V
.end method

.method public abstract didPageDomLoadAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didPageFinishLoadAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didPageOccurSelfDefinedEvent(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract didPageReceiveFirstByteAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didPageStartInFSP(Ljava/lang/String;J)V
.end method

.method public abstract didPageStartLoadAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didPerformanceCheckResult(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract didResourceFinishLoadAtTime(Ljava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract didResourceStartLoadAtTime(Ljava/lang/String;J)V
.end method

.method public abstract didWebViewInitAtTime(J)V
.end method

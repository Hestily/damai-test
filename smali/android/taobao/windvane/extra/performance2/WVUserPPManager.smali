.class public Landroid/taobao/windvane/extra/performance2/WVUserPPManager;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private FP:J

.field private TTI:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsCodeForUserPP()Ljava/lang/String;
    .locals 1

    const-string v0, "javascript:(function(){var observer=new PerformanceObserver(function(list,obj){for(var entry of list.getEntries()){if(entry.entryType==\'paint\'&&entry.name==\'first-paint\'){console.log(\'hybrid://WVPerformance:FP/receiveFPTime?{\"time\":\'+entry.startTime+\'}\')}if(entry.entryType==\'longtask\'){console.log(\'hybrid://WVPerformance:TTI/receiveTTITime?{\"time\":\'+(entry.startTime+entry.duration)+\'}\')}}});observer.observe({entryTypes:[\'longtask\',\'paint\']})})()"

    return-object v0
.end method

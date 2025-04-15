.class public Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/monitor/WVMonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorRule"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public msgPattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Landroid/taobao/windvane/monitor/WVMonitorConfig;

.field public url:Ljava/lang/String;

.field public urlPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/monitor/WVMonitorConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->this$0:Landroid/taobao/windvane/monitor/WVMonitorConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->urlPattern:Ljava/util/regex/Pattern;

    .line 4
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msg:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->msgPattern:Ljava/util/regex/Pattern;

    .line 6
    iput-object p1, p0, Landroid/taobao/windvane/monitor/WVMonitorConfig$ErrorRule;->code:Ljava/lang/String;

    return-void
.end method

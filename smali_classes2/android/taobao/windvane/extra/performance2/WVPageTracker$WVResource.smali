.class Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/performance2/WVPageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WVResource"
.end annotation


# instance fields
.field public dataSize:I

.field public isHTML:Z

.field public loadingEndTime:J

.field public loadingStartTime:J

.field public statusCode:I

.field final synthetic this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

.field public url:Ljava/lang/String;

.field public zcacheInfo:Ljava/lang/String;

.field public zcacheState:I


# direct methods
.method constructor <init>(Landroid/taobao/windvane/extra/performance2/WVPageTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVResource;->this$0:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

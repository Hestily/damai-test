.class final Landroid/taobao/windvane/ha/UCHAReporter$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/ha/UCHAReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/taobao/windvane/ha/UCHAReporter;->getInstance()Landroid/taobao/windvane/ha/UCHAReporter;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/ha/UCHAReporter;->access$000(Landroid/taobao/windvane/ha/UCHAReporter;)V

    return-void
.end method

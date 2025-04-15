.class public Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/jsbridge/api/WVMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyShakeListener"
.end annotation


# instance fields
.field private frequency:J

.field private mLastUpdateTime:J

.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

.field private wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;Landroid/taobao/windvane/jsbridge/WVCallBackContext;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->frequency:J

    .line 4
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->mLastUpdateTime:J

    .line 5
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 6
    iput-wide p3, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->frequency:J

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->this$0:Landroid/taobao/windvane/jsbridge/api/WVMotion;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->access$000(Landroid/taobao/windvane/jsbridge/api/WVMotion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 4
    iget-wide v4, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->frequency:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 6
    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 7
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->wvCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "motion.shake"

    invoke-virtual {v3, v4, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;->mLastUpdateTime:J

    return-void
.end method

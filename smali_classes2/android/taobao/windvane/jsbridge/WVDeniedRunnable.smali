.class public Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field errorMsg:Ljava/lang/String;

.field state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 3
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 6
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->errorMsg:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->state:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->errorMsg:Ljava/lang/String;

    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->state:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->state:Ljava/lang/String;

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVDeniedRunnable;->callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

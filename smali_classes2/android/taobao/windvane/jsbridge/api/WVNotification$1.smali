.class Landroid/taobao/windvane/jsbridge/api/WVNotification$1;
.super Ljava/lang/Thread;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVNotification;->beep(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVNotification;

.field final synthetic val$repeatTime:I


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVNotification;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVNotification$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVNotification;

    iput p2, p0, Landroid/taobao/windvane/jsbridge/api/WVNotification$1;->val$repeatTime:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Landroid/taobao/windvane/jsbridge/api/WVNotification$1;->val$repeatTime:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x18

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-wide/16 v2, 0x1f4

    .line 4
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 7
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    return-void
.end method

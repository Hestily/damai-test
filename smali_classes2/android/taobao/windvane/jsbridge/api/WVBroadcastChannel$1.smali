.class Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/weaver/broadcast/MessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;->onMessage(Lcom/alibaba/fastjson/JSONObject;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;->this$0:Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast.Message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel$1;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

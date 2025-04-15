.class Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/taobao/windvane/jsbridge/IExtJsApiSuccessCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

.field final synthetic val$reqId:Ljava/lang/String;

.field final synthetic val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;Landroid/taobao/windvane/fullspan/SpanWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$reqId:Ljava/lang/String;

    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public succeed(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "{}"

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-static {v0, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$000(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$reqId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$200(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$100(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeCall succeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->releaseLog(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    const-string/jumbo v0, "succeed"

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public successAndKeepAlive(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "{}"

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-static {v0, p1}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$000(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.__windvane__&&window.__windvane__.onSuccess&&window.__windvane__.onSuccess(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$reqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', true);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->this$0:Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;->access$100(Landroid/taobao/windvane/jsbridge/WVBridgeEngine;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeCall successAndKeepAlive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/fullspan/SpanWrapper;->releaseLog(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine$1;->val$spanWrapper:Landroid/taobao/windvane/fullspan/SpanWrapper;

    const-string/jumbo v0, "successAndKeepAlive"

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/fullspan/SpanWrapper;->finish(Ljava/lang/String;)V

    return-void
.end method
